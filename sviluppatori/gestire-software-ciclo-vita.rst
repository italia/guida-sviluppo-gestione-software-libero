Gestire un software nel suo ciclo di vita
-----------------------------------------

I Ruoli
~~~~~~~

Maintainer
**********

Il maintainer di un progetto open source è un ruolo con molteplici funzioni
organizzative e pratiche. Il maintainer ha il completo controllo di un
repository, potendo effettuare le operazioni di clone, push, merge, creazione
di nuovi branch e così via.
È responsabile della manutenzione ordinaria del contenuto del repository,
ovvero colui che si impegna a seguire l’evoluzione del software, effettuando le
operazioni tipiche di housekeeping: si assicura che i diversi approcci vengano
seguiti, assicura che il gitflow scelto venga rispettato, che il versionamento
sia coerente con le scelte e così via.
Inoltre il maintainer di un progetto open source nella maggioranza dei casi ha
a che fare con la community, ovvero l’insieme degli utenti o dei contributori
che interagiscono con il repository.
Questa figura, infatti, segue l’evoluzione delle issue, instrada correttamente
i contributori facendo seguire quanto presente nel file CONTRIBUTING, opera
i merge delle Pull Request.
A volte il maintainer fa parte del team di sviluppo e quindi può effettuare
direttamente le review dei contributi mentre altre volte si avvale del supporto
degli sviluppatori per effettuare revisioni e consolidare i contributi.
Il maintainer è dunque un ruolo fondamentale con numerose responsabilità sulla
vitalità del progetto.


Versionamento e rilasci
~~~~~~~~~~~~~~~~~~~~~~~

Esistono diversi approcci al versionamento del software e alla gestione dei rilasci.
Un possibile approccio è quello di non effettuare una vera e propria
pubblicazione di rilasci ufficiali e numerati in quanto  git è di per sé già un
sistema di versionamento ed in molti casi è sufficiente. Questa scelta
è riscontrabile nei seguenti casi:

* progetti di piccole dimensioni;
* componenti destinati ad altri sviluppatori (asset grafici, toolkit, template…);
* progetti che adottano strategie di Continuous Delivery per i quali vale
  quindi sempre e solo l’ultima versione.

Al contrario, i rilasci ufficiali tradizionali sono tipicamente necessari in
queste situazioni:

* software destinato agli utenti finali;
* software che richiede compilazione e quindi distribuzione in forma binaria;
* software che necessita di testing non automatizzabile (audit ecc.);
* software da rilasciare anche su altre piattaforme di distribuzione (npm,
  Maven Central, ecc.);
* software allineato a schemi di versionamento esterni (ad esempio per
  aggiornamenti della normativa);
* software per il quale viene mantenuta documentazione separata (in modo da
  sapere quale versione consultare per una determinata versione del software);
* software che può prevedere modifiche non retrocompatibili, con una base di
  utenti che può rimanere potenzialmente legata a precedenti versioni.
* software da utilizzare in architetture complesse (ad es. i componenti di un
  sistema a microservizi)


Se si sceglie di procedere con una strategia di rilascio, è necessario essere
molto rigorosi nell’eseguirli con regolarità e tempestivamente (release early,
release often): una volta adottati, non sono facoltativi.

Ad esempio nella piattaforma Github è possibile usare la funzione delle
milestone presente per associare le issue ai futuri rilasci, in modo da
documentare cosa manca per procedere con un rilascio. Si deve infatti evitare
la situazione in cui vi sono delle novità nella base di codice, non ancora
rilasciate ufficialmente, senza che vi sia alcuna indicazione di cosa stia
aspettando il maintainer ad effettuarlo.

A seconda che si adotti uno dei due modelli o l’altro, il significato del
branch master (o main) è diverso. In assenza di rilasci, è solitamente
sottinteso il principio dello stable master branch, ovvero: il branch master
deve essere sempre contenere codice stabile ed utilizzabile, pertanto non può
essere usato per sviluppo di funzionalità non testate. È necessario separare lo
sviluppo in branch separate da portare su master attraverso Pull Request
separate. Eventualmente nei casi più delicati si può anche pensare ad un branch
develop verso il quale indirizzare le Pull Request, e poi avere un processo di
testing più approfondito per portare le modifiche da develop a master.

Al contrario, in presenza di rilasci non è strettamente richiesto che il branch
master sia stabile (a quello scopo servono appunto i rilasci, spesso
accompagnati dalla creazione di un branch stabile), ma è comunque bene adottare
la pratica di lavorare in branch separati.

Nel caso in cui si scelga di associare una numerazione ai singoli rilasci, il
versionamento semantico (https://semver.org/) è un buon esempio da seguire
quando possibile.
Il versionamento semantico definisce un numero di versione composto da tre
numeri: MAJOR.MINOR.PATCH. I corrispondenti numeri di versione devono essere
incrementati in questo modo:

* MAJOR: quando si apportano modifiche API incompatibili con le precedenti;
* MINOR: quando si aggiunge funzionalità in modo compatibile con le versioni
  precedenti;
* PATCH: quando si apportano correzioni di bug compatibili con le versioni
  precedenti.

Ulteriori prefissi o postfissi al numero di versione (come pre-release e build)
possono essere utilizzati per segnalare versioni particolari in momenti chiave
del progetto.


Issue
~~~~~

L’issue tracker è uno degli strumenti messi a disposizione da molte piattaforme
di code hosting per permettere agli interessati di comunicare con il team di
sviluppo. Esempi di issue possono essere segnalazioni di problemi, richieste di
aggiunta di nuove funzionalità o discussioni relative al progetto. A questo
proposito, è molto importante che lo strumento sia disponibile e aperto
a contributi. Se questa condizione non dovesse essere soddisfatta è possibile
indicare nel README il percorso per raggiungere lo strumento di issue tracking
da usare come riferimento.
I Maintainer hanno il compito di monitorare la sezione delle issue e di dare un
tempestivo riscontro, non necessariamente entrando nel merito della questione:
la percezione di un repository seguito e non abbandonato incentiva gli altri
membri della community ad entrare nella discussione e contribuire “investendo”
il proprio tempo nel progetto.

Strumenti di tracking esterni
*****************************

Se i Maintainer adottano strumenti esterni per tracciare le proprie attività ed
allocare le risorse (ad es. Jira, Trello) potranno riportare su questi ultimi
i riferimenti alle issue su cui intendono intraprendere attività, ma tali
strumenti non sono sostitutivi delle issue dove è comunque opportuno dare
aggiornamenti periodici pubblici sulle attività in corso per trasparenza
e coinvolgimento. Le issue costituiscono una knowledge base utile anche una
volta chiuse poiché vengono indicizzate dai motori di ricerca e aiutano
i futuri contributori a capire perché sono state fatte certe scelte.

Ove possibile, dovrebbero essere utilizzati strumenti specifici per la
segnalazione e la tracciabilità delle issue. Molti siti di hosting di progetti
offrono questa funzionalità integrata, in alternativa la funzionalità può
essere fornita da progetti autonomi come:

* Trac - https://trac.edgewall.org/
* Redmine - https://www.redmine.org/


Richiesta di aiuto
******************

All’interno di molti strumenti di “issue tracking” è possibile assegnare delle
etichette (label) alle singole issue. E’ buona pratica utilizzare queste label
sia per segnalare che un maintainer ha effettivamente controllato il contenuto
della issue (triaging) che per comunicarne in modo rapido il contenuto. Alcune
label, come ad esempio “bug” o “help wanted” sono auto-esplicative e servono
per organizzare al meglio la gestione delle singole issue.

Segnalazioni di bug
*******************

La segnalazione va tenuta aperta fino alla risoluzione. Salvo correzioni
semplici è buona pratica chiedere all’utente che ha segnalato il problema di
chiudere la issue dopo aver verificato l’efficacia della correzione, invece che
chiuderla d’ufficio.

È buona prassi aggiornare la issue con l’avanzamento della risoluzione, incluse
eventuali riflessioni ed esplorazioni o collegamenti a pagine web correlate (ad
es. issue esterne). Questo incentiva l’aiuto da parte degli altri utenti
e costituisce una forma di documentazione per ricostruire a posteriori le
scelte fatte. Anche nel caso di interazioni via chat è bene aggiornare la issue
a beneficio di altri lettori. In altre parole, è importante ricordarsi che le
issue non sono una canale di comunicazione individuale ma sono una forma di
documentazione a beneficio dell’intera community.
Tutta l’interazione con gli utenti deve essere svolta pubblicamente all’interno
della issue e deve essere spostata su canali privati (ad es. helpdesk) solo
limitatamente ad eventuali informazioni riservate legate più alla messa in
esercizio che al progetto software in sé.

È raccomandato citare il numero della issue nel messaggio di commit che la
risolve, in modo da legare la discussione e le origini della issue e la sua
risoluzione.


Richieste di miglioramento (Feature request)
********************************************

I Maintainer non sono tenuti a dare attuazione alle richieste di miglioramento
o di nuove funzionalità, ma lo possono valutare insieme ai Project Leader. In
ogni caso è bene lasciare aperte le feature request, purché ritenute
compatibili con la roadmap del progetto, in modo che si possano raccogliere
ulteriori commenti ed essere implementata da contributori.
Gestione delle issue
Il processo di gestione di una issue da parte di un maintainer si articola
solitamente in più passaggi:

1. identificazione del problema, assegnazione di un’etichetta (label)
   e risposta alla issue (triaging);
2. assegnazione della issue ai componenti del team (assign);
3. analisi del problema e individuazione di soluzioni/raccomandazioni (fix);
4. aggiornamento della issue con le soluzioni/raccomandazioni (update);
5. implementazione e monitoraggio e controllo delle attività per il superamento
   della issue;
6. chiusura della issue attraverso la verifica che le azioni pianificate siano
   state implementate ed il problema risolto oppure il ciclo viene ripetuto
   a partire dal punto 4 (close).

Una volta chiusa, la issue continua comunque ad essere visibile contraddistinta
da una URL univoca. Questo fatto è importante per garantire innanzitutto
visibilità sulle azioni che hanno portato alla sua chiusura ma è anche
fondamentale per costruire una knowledge base pubblica, indicizzata dai motori
di ricerca e fondamentale in fase di triage di nuove issue in quanto è sempre
possibile far riferimento ad un’azione compiuta in passato che ha risolto un
problema simile.

Accettare i contributi dopo il rilascio
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Una volta rilasciato il codice sorgente in modo pubblico è possibile che dei
contributori di terze parti, ovvero non facenti parte del contingente originale
che ha sviluppato il software, apportino delle modifiche al codice.
Tali contributi possono avvenire tramite un meccanismo chiamato Pull Request
(PR) o Merge Request (la nomenclatura varia al variare della piattaforma
utilizzata per la pubblicazione). La Pull Request è una richiesta, fatta
all’autore originale di un software, di includere modifiche al suo progetto.
Quando una nuova Pull Request viene aperta, il maintainer viene attenzionato
direttamente dalla piattaforma per permettergli di affrontare le operazioni di
revisione.


Integrazione Continua (Continuous Integration)
I sistemi di integrazione continua (Continuous Integration, CI) sono utili per
ridurre i tempi di ricerca di bug, consentendo di effettuare test automatizzati
dell'intera code base. Ciò è particolarmente utile per i progetti che
coinvolgono una grande comunità di sviluppatori ma è buona norma dotarsi di
tali strumenti fin dall’inizio dello sviluppo.
Inoltre, e questo approccio vale in particolar modo per i progetti open source,
ogni modifica proposta tramite il meccanismo delle Pull/Merge Request deve
“passare” una serie di test automatici prima di essere anche solo presa in
considerazione dai maintainer. Questi strumenti rappresentano dunque un
supporto reale di fondamentale importanza sia in fase di sviluppo, per
identificare eventuali problemi o migliorare la qualità generale del codice,
che in fase di analisi dei contributi esterni, per validare le proposte
e evitare di effettuare numerose interazioni con i contributori su codice che
non è stato accuratamente allineato con le esigenze del progetto.

Esistono molti esempi di questi sistemi di integrazione continua. Tra i più
utilizzati ci sono:

* Jenkins CI - https://www.jenkins.io/, particolarmente adatto a deployment
  locali (installazione on-premises)
* Gitlab CI - https://about.gitlab.com/product/continuous-integration/,
  integrato con la piattaforma di code-hosting GitLab
* Circle CI - https://circleci.com/, servizio proprietario, disponibile come
  SaaS gratuitamente per i progetti open source
* GitHub Actions - https://github.com/features/actions

La particolarità di questi sistemi è che si integrano perfettamente con le
piattaforme di code hosting più comuni e permettono quindi di eseguire una
serie di test e/o controlli automatici per ogni singola azione che viene
eseguita sulla codebase (ad es., commit, merge etc.).

Normalmente la configurazione di questi sistemi richiede la presenza di un
semplice file di configurazione da posizionare nella cartella radice del
repository. In tal senso, il  Team di Developers Italia ha realizzato alcuni
template pronti all’uso per testare ad esempio il file publiccode.yml ma che si
possono facilmente estendere per essere utilizzati in altri contesti.

* publiccode-parser-orb per CircleCI
  https://github.com/italia/publiccode-parser-orb
* Action da integrare nel tuo repository github
  https://github.com/italia/publiccode-parser-action
