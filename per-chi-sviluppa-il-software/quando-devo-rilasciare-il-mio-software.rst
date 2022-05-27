Quando devo rilasciare il mio software?
=======================================

Sviluppare in modo aperto, o utilizzando i paradigmi del *software* libero
non significa solo condividere il codice ma anche potenzialmente aprire
ad un pubblico più ampio l’intero processo di sviluppo. Aprendo il
processo si consente a soggetti terzi, anche della stessa
organizzazione, ma esterni alla squadra originale di sviluppo, di
partecipare e comprendere l’evoluzione tecnica del prodotto. Anche le
prime bozze di codice sono spesso utili a capire le scelte di design
effettuate, e poter ricostruire la storia di ogni singola riga aiuta a
trovare e correggere più facilmente bug. A questo scopo occorre
utilizzare un sistema di controllo di versione che consenta di
registrare separatamente i contributi dei diversi sviluppatori che
giornalmente collaborano al progetto. Il sistema di controllo di
versione distribuito
`git <https://git-scm.com/book/it/v2/Per-Iniziare-Una-Breve-Storia-di-Git>`__,
sviluppato dalla comunità di sviluppatori del kernel Linux, rappresenta
la soluzione maggiormente utilizzata nell’ambito dello sviluppo di
software libero.

Ai fini di ricostruire correttamente la storia del codice, la
pubblicazione di un nuovo progetto non deve pertanto essere rimandata al
momento del rilascio della prima versione completa del software, ma
dovrebbe essere effettuata già dalla prima settimana di sviluppo,
specificando ovviamente nel README e nelle altre documentazioni utente
che si tratta di un lavoro in corso. Questa pubblicazione, nel caso di
software pubblico deve essere fatta su di una piattaforma pubblica di
code hosting che consenta la proposta di contributi e modifiche da parte
di altri sviluppatori, come ad esempio GitHub o GitLab - servizi web
costruiti intorno al sistema git.

Lo sviluppo deve essere fatto per piccoli incrementi, da dividere in
commit separati, ed è buona prassi adottare un workflow esplicio per lo
sviluppo sulla piattaforma di code hosting, come ad esempio il `GitHub
Flow <https://guides.github.com/introduction/flow/>`__, ovvero una
metodologia che consiste nel separare il lavoro su rami di sviluppo
separati e proporre le modifiche verso il ramo principale (solitamente
chiamato *master o main*), in modo da poter chiedere la revisione agli
altri maintainer o ai Project Leader. Questo processo aiuta a scrivere
codice più robusto, a documentarlo in modo più trasparente e a
controllare che modifiche frettolose non ne modifichino il
funzionamento.

In ultimo, per consentire ai potenziali contributori o agli interessati
di capire la direzione del progetto è importante condividere non solo il
software, ma anche le decisioni, le priorità e le roadmap.
