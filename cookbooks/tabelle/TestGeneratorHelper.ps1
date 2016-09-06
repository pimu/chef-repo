
$templateresult = @"
# using sha256: \3e792049551761ca13ede0199bff6b991ff9f7b5b5517974bccc37d3ebfe72ac *C:\\Work\\Projects\\chef\\chef-repo\\cookbooks\\tabelle\\files\\default\\arc\\condiv\\jvalcon
describe file("#{file_name}/arc/condiv/jvalcon") do
  its(:sha256sum) { should eq '3e792049551761ca13ede0199bff6b991ff9f7b5b5517974bccc37d3ebfe72ac' }
end

"@

$templateitem = @"
# using sha256: {cookbook.comment}
describe file("#{file_name}{cookbook.filepath}") do
  its(:sha256sum) { should eq '{cookbook.filesha256}' }
end

"@

Write-Verbose "`$templateitem: |$templateitem|";


$mappings = @{

    '{cookbook.comment}' = 'allsha256output';

    '{cookbook.filepath}' = 'cookbookfile';

    '{cookbook.filesha256}' = 'sha256';

};

('.\files\default\dtb\','.\files\default\arc\') |% {
    
    $currentRoot = $_;
    Write-Verbose "`$currentRoot: $currentRoot"

    $fileList = dir $currentRoot -Recurse |? { -not $_.PSISContainer } |% { iex ("sha256sum " + ($_.fullname)) }

    $fileList |% { 

        $currentvalues = @{};

        $allsha256output = ($_); 
        $currentvalues.Add('allsha256output',$allsha256output)
        Write-Verbose "`$allsha256output: $allsha256output"

        $sha256 = ($_ -split ' ')[0] -replace '\\',''; 
        $currentvalues.Add('sha256',$sha256)
        Write-Verbose "`$sha256: $sha256"
    
        $cookbookfile=(($_ -split ' ')[1] -replace '\\\\','/' -split '/default')[1] 
        $currentvalues.Add('cookbookfile',$cookbookfile)
        Write-Verbose "`$cookbookfile: $cookbookfile"


        $mappings.keys |% { 

            $matchedstring = "$_";
            $replacingstring = $currentvalues[$mappings[$_]];

            Write-Verbose ("going to substitute |" + ($matchedstring) +  "| with |" + ($replacingstring) + "|")

            $templateitem = $templateitem -replace ($matchedstring),($replacingstring)

        }

        $templateitem 
    }

}