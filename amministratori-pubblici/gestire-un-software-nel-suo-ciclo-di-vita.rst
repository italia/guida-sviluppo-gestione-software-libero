.. _gestire-un-software-nel-suo-ciclo-di-vita:

Gestire un software nel suo ciclo di vita
-----------------------------------------

Gestione delle segnalazioni
===========================

Quando un utilizzatore trova una funzionalità mancante o un problema sul
codice, può aprire una issue (segnalazione) per notificare un problema
in modo che venga preso in considerazione e corretto.

L’\ `allegato
B <https://docs.italia.it/italia/developers-italia/lg-acquisizione-e-riuso-software-per-pa-docs/it/stabile/attachments/allegato-b-guida-alla-manutenzione-di-software-open-source.html>`__
alle Linee guida su acquisizione e riuso di software per le pubbliche
amministrazioni descrive proprio questi aspetti legati alla manutenzione
di software open source.

I sistemi di versionamento del codice, solitamente dispongono di
meccanismi per la registrazione di issue e per seguire la loro
risoluzione. In questi casi, è buona pratica rispondere abbastanza
tempestivamente alle segnalazioni di issue indicando la presa in carico
e dando una segnalazione circa le modalità e le tempistiche con cui
saranno o meno prese in carico e risolte.

L’allegato alla linee guida descrive alcune interazioni tipiche che
possono realizzarsi sul sistema di code hosting di un software open
source:

-  Risoluzione di bug

-  Richieste di nuove funzionalità

-  Richieste di informazioni o supporto

-  Contributi di codice

L’Ente che ha rilasciato il software deve tendenzialmente occuparsi di
garantirne il mantenimento, impostando il flusso di gestione e
intervento sulle segnalazioni che provengono dall'esterno. Le
segnalazioni, quindi, devono essere monitorate e prioritizzate. Alcune
di esse daranno poi vita ad attività di intervento che porterà alla loro
risoluzione e chiusura.

Diverse issue possono essere risolte in un unico periodo e portare al
rilascio di una nuova versione del software che le risolve tutte
contemporaneamente. In questo caso il progetto lavora per milestone, e
ogni milestone risolve un numero variabile di issue aperte nel periodo
precedente.

Gestione delle richieste di modifica
====================================

Quando un contributore invia una modifica al codice tramite pull/merge
request il Maintainer è tenuto a dare un riscontro tempestivo, anche
solo per ringraziare del lavoro e prendere tempo per la revisione del
codice. Questo per non scoraggiare i contributi esterni e per comunicare
il fatto che il progetto sia vivo e mantenuto, e anche per evitare che
non vedendo riscontri gli altri sviluppatori proseguano lo sviluppo in
un proprio fork.

Dichiarazione di obsolescenza di un progetto
============================================

Può capitare che un repository non sia più mantenuto o esaminato e
quindi diventi di nessun interesse. Questo repository, tuttavia, è bene
venga conservato per scopi di archiviazione e per visualizzazione
pubblica. In questo caso è importante denominare il repository come
*deprecated* (obsoleto) in modo che chi dovesse visitarlo possa essere
informato del fatto che il progetto non è più attivo e mantenuto.
conservato per scopi di archiviazione.

Rendere obsoleto (“deprecate”) un progetto che nessuno usa
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Di seguito i passaggi da seguire per deprecare un repository inattivo:

-  Cambia la descrizione sul repository e all’interno del file
     README.md. \``La descrizione è la prima cosa che viene guardata da
     un utente che accede al repository e si trova all’inizio del file
     README. Risulta quindi importante aggiungere una frase del tipo:
   | “⚠️ Attenzione! Questo progetto non è più manutenuto dai suoi
     autori.”
   | aggiungendo nel README.md anche i riferimenti di contatto se
     qualche utente vuole prendersi carico del progetto come maintainer.
     Se c’è un motivo particolare per cui il software è stato deprecato
     è bene specificarlo qui.

-  Aggiungi un topic al repo: **deprecated**, **obsolete**, e
   **archived** sono buoni esempi.

-  Aggiungi il badge “no-maintenance-intended” (qua il codice
   https://unmaintained.tech/). Questo è un altro modo per segnalare in
   maniera molto visibile che il progetto non sarà più mantenuto
   aggiornato.
