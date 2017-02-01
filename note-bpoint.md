note su chef riguardo all'esecuzione del cookbook aggiofix, del cookbook bpoint e delle modalita' di controllo possibili

a) cookbook aggiofix (e cookbook bpoint ...)

  In pratica ora funziona come il cookbook tabelle, copiando nelle opportune locazioni sui vari nodi i file contenuti nel cookbook presi dal relativo file "aggiofix".
  Il problema a mio parere che presenta questo cookbook e' che e' fortemente interconnesso e dipendente dal cookbook bpoint in quanto una aggiofix dovrebbe sempre avere un insieme di versioni di bpoint di validita', per esempio ( 16.10.00  <= versione bpoint < 16.40.00 per dire che aggiofix puo' essere applicata se la versione e' compresa tra 16.10.00 e precedente alla 16.40) e oltre ad essere espressa nel cookbook andrebbe anche espressa nella definizione dell'ambiente data dalla coppia role ed environment.
  Inoltre proprio per le considerazioni appena fatte, potrebbe esser dipendente dall'ordine di esecuzione dei vari rilasci contenuti in un run di chef, per cui forse andrebbe esplicitata la
  dipendenza del cookbbok aggiofix dal cookbook bpoint e le sue relative versioni.

  [All'interno del tema piu' generale dell'impatto dei rilasci sull'ecosistema circostante - gli utenti, i programmi in esecuzione sulla macchina, i server di supporto (demone osra) -
  non e' ben chiaro se e cosa fare nel caso sia presente il file ambver.. (ndr: forse se presente si dovrebbe fare stop e start del demone]



b) cookbook bpoint

  Attualmente esegue l'aggiornamento controllando solo la versione corrente del software, esiste la possibilita' di controllare sia il tempo che il completamento o meno di certe attivita' (vedi backup per esempio)


c) controllo del rilascio

  Una volta capito bene cosa si intende per questo controllo, immmagino che oltre all'avvenuto cambiamento di versione voluto (file sisver) ci siano anche altre attivita' o condizioni da verificare, basta saperlo e poterlo esprimere in qualche forma nota all'ambiente chef (ServerSpec, Chef Audit, ChefSpec, altri ancora, tutti?)

  In realta' mi pare che questa esigenza di controllo possa esser inclusa, in maniera piu' generale, nella necessita' di poter esprimere uno stato desiderato per ogni sistema da gestire e nella possibilita' di verificarlo in qualche modo ad ogni istante, (da cui l'utilizzo di sistemi di gestione della configurazione quale puo' essere chef).

  Si tratterebbe di definire una serie di regole che devono essere rispettate e del poterne verificare la validita' o meno; per esempio, la versione software bpoint presente su una data macchina, un dato file deve essere uguale a quello ufficiale (peresente in una aggiofix, per esempio)  e via discorrendo.

  Specificate le regole, occorre capire quale e' lo strumento piu' adatto per poterle verificare; al momento alcune soluzioni sono percorribili e passerei ad elencarle:

    - chef audit
      si esprimono le regole dentro il cookbook da verificare o in cookbook apposito, e si sfruttano le modalita' di esecuzione di chef-client in audit mode
      Questa modalita' prevede l'integrazione con Chef Analytics che pero' nel frattempo e' stato incluso nella suite di prodotti chef usabili solo a pagamento (si veda Chef Automate)
      I dati delle varie esecuzioni di "controllo" verrebbero raccolti sia da Chef Server che da Chef Analytics ed in qualche modo potrebbero esser resi "presentabili".

    -  ServerSpec
      si usano le regole gia' definite in fase di sviluppo e test del cookbook per eseguirle sui vari nodi. Occorre organizzare la raccolta dei dati ottenuti dalle varie esecuzioni  


  Modalita' di esecuzione del controllo

    usando Chef in audit mode si puo' pensare di usare le regole di controllo sia in maniera quasi simultanea con la fase di convergenza che in maniera isolata e asicrona, in fase di post-convergenza
    Si ripete il solito dilemma dell'eseguire tutto in maniera automatica e continuata o dell'eseguire magari solo alcune parti dell'insieme di regole e attivita' di chef in precisi momenti.

      - asynchronous vs synchronous
      - audit_only vs enabled (converge+audit)
