Create roles here, in either the Role Ruby DSL (.rb) or JSON (.json) files. To install roles on the server, use knife.

<<<<<<< HEAD
For example, create `roles/base_example.rb`:

    name "base_example"
    description "Example base role applied to all nodes."
    # List of recipes and roles to apply. Requires Chef 0.8, earlier versions use 'recipes()'.
    #run_list()
    # Attributes applied if the node doesn't have it set already.
    #default_attributes()
    # Attributes applied no matter what the node has set already.
    #override_attributes()

Then upload it to the Chef Server:
    
    knife role from file roles/base_example.rb
=======
For example, in this directory you'll find an example role file called `example.json` which can be uploaded to the Chef Server:

    knife role from file roles/example.json

For more information on roles, see the Chef wiki page:

https://docs.chef.io/essentials_roles.html
>>>>>>> 8c47ca713fc0916d1b1db0f9ab946c5cce1fe98d
