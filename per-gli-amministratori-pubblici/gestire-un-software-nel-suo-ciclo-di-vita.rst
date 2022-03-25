Gestire un software nel suo ciclo di vita
=========================================

Gestione delle segnalazioni
---------------------------

Quando un utilizzatore trova una funzionalità mancante o un problema sul
codice, può aprire una issue (segnalazione) per notificare un problema
in modo che esso venga preso in considerazione e corretto.

L’\ `Allegato
B <https://docs.italia.it/italia/developers-italia/lg-acquisizione-e-riuso-software-per-pa-docs/it/stabile/attachments/allegato-b-guida-alla-manutenzione-di-software-open-source.html>`__
alle Linee guida su acquisizione e riuso di software per le pubbliche
amministrazioni descrive proprio questi aspetti legati alla manutenzione
di software open source.

I sistemi di versionamento del codice, solitamente, dispongono di
meccanismi per registrare issue e per seguire la loro risoluzione.
Quando si usano tali sistemi, è buona pratica che chi gestisce le issue
**risponda abbastanza tempestivamente alle segnalazioni indicando** la
presa in carico e specificando le modalità e le tempistiche con cui
saranno risolte.

L’allegato alla linee guida descrive alcune interazioni tipiche che
possono verificarsi sul sistema di code hosting di un software open
source:

-  risoluzione di bug;

-  richieste di nuove funzionalità;

-  richieste di informazioni o supporto;

-  contributi di codice.

L’Ente che ha rilasciato il software deve tendenzialmente occuparsi di
garantirne il mantenimento, impostando il flusso di gestione e
intervento sulle segnalazioni che provengono dall'esterno. Le
segnalazioni, quindi, devono essere monitorate e prioritizzate. Si
interverrà poi su alcune di esse, per risolverle e chiuderle.

Diverse issue possono essere prese in carico in un unico periodo e
portare al rilascio di una nuova versione del software che le risolve
tutte contemporaneamente. In questo caso il progetto lavora per
*milestone*, e ogni milestone risolve un numero variabile di *issue*
aperte nel periodo precedente.

Gestione delle richieste di modifica
------------------------------------

Quando un contributore invia una richiesta di modifica al codice tramite
pull/merge request il maintainer è tenuto a dare un riscontro
tempestivo, anche solo per ringraziare il contributore in attesa della
revisione del codice. Fornire un feedback immediato ai contributori
aiuta a comunicare che il progetto è vivo e mantenuto e incoraggia altri
contributi esterni. In questo modo, inoltre, si evita che, non vedendo
riscontri, gli altri sviluppatori proseguano lo sviluppo in un proprio
fork.

Dichiarazione di obsolescenza di un progetto
--------------------------------------------

Può capitare che un repository non venga più mantenuto o esaminato e
quindi non sia più di interesse, è tuttavia utile conservarlo per scopi
di archiviazione e visualizzazione pubblica. In questo caso è importante
denominare il repository come *deprecated* (obsoleto) in modo da
segnalare che il progetto non è più attivo e mantenuto ma è conservato
per scopi di archiviazione.

Rendere obsoleto (“deprecate”) un progetto che nessuno usa
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Di seguito i passaggi da seguire per deprecare un repository inattivo:

-  Cambiare la descrizione sul repository e all’interno del file
   `README.md`. La descrizione è la prima cosa che viene letta da un
   utente che accede al repository e si trova all’inizio del file
   README. Risulta quindi importante aggiungere una frase del tipo:
   
   | ⚠️ Attenzione! Questo progetto non è più manutenuto dai suoi autori.
   
   Si suggerisce anche di aggiungere nel README.md anche i riferimenti
   di contatto se qualche utente volesse prendersi carico del progetto
   come maintainer. Se c’è un motivo particolare per cui il software è
   stato deprecato è bene specificarlo in questa sede.

-  Aggiungere un topic al repo: per esempio **deprecated**,
   **obsolete**, e **archived**.

-  Aggiungere il badge “no-maintenance-intended” (il codice si trova su
   https://unmaintained.tech/). Questo è un altro modo per segnalare in
   maniera molto visibile che il progetto non sarà più mantenuto.
