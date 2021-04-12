.. _contribuire-al-software-open-source-sviluppato-da-altri-1:

Contribuire al software open source sviluppato da altri
-------------------------------------------------------

.. _relazioni-con-i-maintainer-del-software-1:

Relazioni con i maintainer del software
=======================================

Utilizzare, ed eventualmente, contribuire, al codice open source
disponibile è una pratica molto frequente soprattutto in tutti i casi di
riuso, fortemente agevolati dal modello di riuso descritto dal CAD.

Di fronte a un’esigenza di un componente o di un applicativo per la
propria organizzazione, si agisce solitamente secondo questo schema:

1. analizzare l’esigenza dell’applicativo o del componente software di
   cui si ha bisogno

2. valutare se valga la pena svilupparlo internamente da zero o se possa
   convenire partire da qualche OSS già esistente

3. nel caso di sviluppo partendo da un OSS esistente, lavorare sul
   codice integrando e sviluppando la soluzione già rilasciata

4. a questo punto è possibile decidere se mantenere un fork con il
   codice modificato o se invece sia preferibile fare una pull request
   sul repository OSS di partenza

In seguito valuteremo il caso in cui si decida di partire da una
soluzione OSS esistente e quindi si voglia effettuare una pull request
con le evoluzioni realizzate. Questa soluzione rappresenta la via
preferibile in quanto permette da un lato di abbattere (in termini di
TCO) il futuro costo di manutenzione del software realizzato e
dall’altro perché in questo modo si allargherà la *user base* della
soluzione software customizzata.

Quando si prosegue al riuso di un software è bene contattare e segnalare
il riutilizzo ai maintainer del software stesso che possono fornire
suggerimenti e consigli su come implementare una soluzione che utilizzi
il software e possono dare indicazioni circa la struttura architetturale
e l’organizzazione del codice da seguire nel caso si vogliano effettuare
dei contributi.

In caso di scoperta di un problema di sicurezza, in particolar modo, è
importante effettuare una segnalazione tempestiva ai maintainer del
codice in maniera privata per permettere loro di correggere la
vulnerabilità in tempi brevi ed informare gli altri utilizzatori del
software della necessità di aggiornamento.

Riutilizzo
==========

Il riutilizzo di una soluzione software open source, può avvenire
liberamente per gli scopi e con le modalità descritte nella licenza
applicata al software stesso. In caso di riutilizzo l’unico legame
formale tra cedente e acquirente della soluzione è rappresentato dalla
licenza software applicata alla soluzione.

.. _section-1:

Capitolo a sé stante: aspetti di security
=========================================

Lo sviluppo sicuro è una preoccupazione di tutti
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Veri benefici per la sicurezza possono essere realizzati solo quando il
team che si occupa dello sviluppo integra la sicurezza nelle sue
pratiche lavorative quotidiane. Questo è vero anche se l'organizzazione
ha implementato una strategia di sicurezza globale. Se la sicurezza non
è integrata fin dall'inizio del processo di sviluppo, può diventare un
blocco per l'implementazione.

Incorporare efficacemente la sicurezza nel processo di sviluppo richiede
molto spesso un cambiamento culturale. L’idea generale è che la
sicurezza non sia una destinazione, ma un viaggio. Inoltre è bene notare
che non esiste una sicurezza perfetta: l’aspirazione è quella di avere
una sicurezza sufficiente per ridurre i rischi a un livello tollerabile.
Per trattare in modo efficace il tema della sicurezza, è necessario
valutare continuamente se le difese messe in atto sono sufficienti.
Questo processo dovrebbe continuare per tutto il ciclo di vita del
prodotto, revisionandolo e modificandolo anche interamente se
necessario.

Ogni team ha bisogno di competenze sulla sicurezza, ma non tutti i
membri del team devono essere esperti di sicurezza. La sicurezza
dovrebbe essere considerata uno sforzo di gruppo durante tutto il
processo di sviluppo. Durante la progettazione e la consegna, è
importante porre continuamente domande, discutere e identificare
potenziali problemi di sicurezza e collaborare per fornire soluzioni.

Gli errori di sicurezza e il relativo "debito" di sicurezza che questi
comportano possono essere evitati se la sicurezza è parte della pratica
quotidiana di tutto il team. Se ciò non accade e la sicurezza viene
considerata un "bullone" una volta completato lo sviluppo, le
vulnerabilità potrebbero non essere rispettate e le aspettative dei
clienti potrebbero non essere soddisfatte. Entrambi possono portare a
rielaborazioni lunghe e costose del codice.

Alcuni passaggi pratici per influenzare il cambiamento culturale
includono:

-  porre regolarmente la domanda "C'è un problema di sicurezza qui?"

-  incoraggiare gli sviluppatori a cambiare le loro pratiche di lavoro
   per includere la sicurezza e supportarli con la formazione

-  rendere disponibili strumenti di sicurezza di supporto

-  incoraggiare i membri del team senior a dare l'esempio

-  condividere una comprensione di come le persone incidono direttamente
   sulla sicurezza

-  organizzare seminari dove pensi come un attaccante e prova a rompere
   i tuoi sistemi

-  sfidare le pratiche di sicurezza del tuo team

Mantieni aggiornate le tue conoscenze sulla sicurezza
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

La creazione di codice in grado di resistere all'attacco richiede una
comprensione dei tipi di attacco e delle pratiche di sicurezza
difensive. La creazione di codice in grado di resistere all'attacco
richiede una comprensione dei tipi di attacco e delle pratiche di
sicurezza difensive. Il livello di comprensione in queste aree deve
essere aggiornato regolarmente per rimanere utile. Fortunatamente,
linguaggi, framework e stack tecnologici spesso forniscono funzionalità
che ci aiutano a scrivere un codice "valido". Questi strumenti e
funzionalità vengono regolarmente aggiornati e migliorati, risolvendo
problemi comuni e introducendo nuovi concetti. E questo è il problema in
breve. Sfruttare queste nuove funzionalità (indipendentemente dal fatto
che siano legate alla sicurezza) richiede un investimento di tempo.

Le squadre dotate di informazioni aggiornate hanno molte più probabilità
di implementare controlli difensivi adeguati nel loro codice. Per lo
meno sapranno cercare input di sicurezza specialistici per problemi
insoliti o particolarmente complessi e per un codice che richiede
semplicemente un livello di sicurezza più elevato. Gli sviluppatori
dovrebbero essere consapevoli delle comuni minacce alla sicurezza del
proprio codice. Se non dispongono già di tali conoscenze, è necessario
fornire risorse in modo che possano essere acquisite. Gli esempi possono
includere tecniche di iniezione standard e gestione di input non
attendibili.

Insegnare agli sviluppatori i tipi di minacce che il loro codice dovrà
affrontare è un obiettivo che può essere raggiunto attraverso seminari
di gruppo che valutano gli attacchi e le minacce ai sistemi. Inoltre è
bene prestare attenzione quando è particolarmente necessario scrivere il
codice in modo difensivo. Prendersi più tempo e attenzione quando si
implementano componenti critici per la sicurezza, scrivendo il codice in
modo difensivo. Ad esempio, durante la convalida di input che possono
essere controllati dall'attaccante.

Una buona pratica, inoltre, è quella di utilizzare componenti di
sicurezza consolidati e testati anziché crearne di nuovi custom. Molti
problemi comuni (ad es. Crittografia e sanificazione dei dati) possono
essere risolti utilizzando soluzioni esistenti. Questo farà risparmiare
tempo e difficoltà a convalidare l'implementazione come corretta e
tollerante agli errori.

Questi esempi hanno lo scopo di aiutarti a valutare le tue pratiche e
quelle dei tuoi fornitori. L'elenco che segue non è esaustivo e non deve
essere utilizzato come esercizio di spunta.

+-----------------------------------+-----------------------------------+
| CATTIVA PRATICA                   | BUONA PRATICA                     |
+===================================+===================================+
| La conoscenza da parte degli      | Ogni sviluppatore ha una          |
| sviluppatori delle considerazioni | conoscenza di base dei problemi   |
| di base sulla sicurezza non viene | di sicurezza di cui ha bisogno.   |
| valutata.                         |                                   |
+-----------------------------------+-----------------------------------+
| Gli sviluppatori non pensano che  | Gli sviluppatori con meno         |
| la sicurezza sia la loro          | esperienza nella codifica         |
| responsabilità, facendo           | difensiva eseguono pair           |
| affidamento sul team di sicurezza | programming con un collega più    |
| per preoccuparsene.               | esperto.                          |
+-----------------------------------+-----------------------------------+
| Gli sviluppatori non comprendono  | Il codice viene criticato durante |
| le basi di come sfruttare i       | la revisione e condiviso con il   |
| difetti del codice né come        | team in modo più ampio.           |
| scrivere in modo difensivo contro |                                   |
| tali exploit.                     |                                   |
+-----------------------------------+-----------------------------------+
| Gli sviluppatori non comprendono  | Il codice viene revisionato e     |
| le basi di come sfruttare i       | condiviso con il team più ampio.  |
| difetti di codifica, né come      |                                   |
| scrivere in modo difensivo contro |                                   |
| tali exploit.                     |                                   |
+-----------------------------------+-----------------------------------+
| Il tempo e le risorse da          | Quando si verifica un incidente   |
| investire nella formazione sulla  | di sicurezza, si tengono incontri |
| sicurezza non sono disponibili    | di retrospettiva in ​​cui le      |
| per gli sviluppatori.             | lezioni vengono apprese in        |
|                                   | un'atmosfera "senza colpa".       |
+-----------------------------------+-----------------------------------+
| Gli sviluppatori sono troppo      | Gli sviluppatori trascorrono del  |
| concentrati sulla consegna per    | tempo mantenendo aggiornate le    |
| investire nella loro formazione   | proprie conoscenze sulla          |
| sulla sicurezza.                  | sicurezza.                        |
+-----------------------------------+-----------------------------------+
| Non sono disponibili competenze   | Le persone con esperienza nella   |
| per rispondere a domande di       | sicurezza sono disponibili e      |
| sicurezza.                        | chiaramente visibili al           |
|                                   | personale.                        |
+-----------------------------------+-----------------------------------+

Produrre codice pulito e gestibile
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Se il tuo codice manca di coerenza, è mal strutturato e privo di
documenti, stai contribuendo ad aumentare la complessità del tuo
sistema. Questo è un problema per la sicurezza perché la complessità
nasconde bug, alcuni dei quali possono comportare vulnerabilità della
sicurezza. Un utente malintenzionato è semplicemente alla ricerca di una
strada per riuscire a violare il sistema. Per difendersi da questi
possibili attacchi è necessario trovare e mitigare tutte le possibilità
di rischio e di ingresso. Questa attività diventa più difficile man mano
che la base di codice aumenta di dimensioni e complessità, ma è
possibile ridurre al minimo questo effetto scrivendo codice pulito.

Un'architettura software ben ponderata e uno stile di codifica coerente
aiuteranno la tua base di codice a essere leggibile e mantenibile. Il
codice deve essere scritto in modo tale da documentarsi da sé. Il
materiale supplementare, di semplice comprensione, deve essere mantenuto
insieme al sistema man mano che si evolve. Documentare una specifica
prima di scrivere il codice può aiutare a ridurre la complessità del
codice stesso e una specifica leggibile dalla macchina può anche essere
usata per verificare automaticamente la correttezza del codice.

Le fonti di complessità nello scrivere soluzioni software possono essere
differenti. È importante comprenderle per cercare di evitarle. Le
principali sono:

-  architetture software non strutturate

-  denominazione vaga di primitive di codifica come classi, metodi,
   funzioni e variabili

-  convenzioni di denominazione dei file e strutture di cartelle confuse

-  layout di codice e stili incoerenti che si sviluppano mentre i
   partecipanti usano i propri stili e convenzioni individuali

-  mancanza di ulteriore documentazione di supporto (ad esempio commenti
   di codice in linea, specifiche o documentazione di progettazione del
   sistema)

-  scrivere codice senza pensare a come può essere testato o verificato
   la correttezza

Avere due o più persone che revisionano il codice aumenterà la tua
fiducia nella qualità e sicurezza del tuo prodotto prima del rilascio.
Questo processo deve essere applicato all'interno della pipeline di
distribuzione per contribuire a ridurre la probabilità che modifiche al
codice dannose vengano inviate al proprio ambiente di produzione.

Questi esempi hanno lo scopo di aiutarti a valutare le tue pratiche e
quelle dei tuoi fornitori. L'elenco che segue non è esaustivo e non deve
essere utilizzato come esercizio di spunta.

+-----------------------------------+-----------------------------------+
| CATTIVA PRATICA                   | BUONA PRATICA                     |
+===================================+===================================+
| Non è stata stabilita alcuna      | Gli standard di codifica sono     |
| architettura software e nella     | applicati da strumenti di         |
| base di codici vengono utilizzati | codifica e controllo dello stile  |
| standard di codifica diversi.     | automatizzati come il 'linting'.  |
+-----------------------------------+-----------------------------------+
| I commit del codice non possono   | Il codice è archiviato in un      |
| essere attribuiti a uno           | sistema di controllo della        |
| sviluppatore specifico.           | versione che ha controlli di      |
|                                   | autenticazione efficaci che       |
|                                   | regolano chi può revisionare e    |
|                                   | accettare le modifiche al codice. |
+-----------------------------------+-----------------------------------+
| I commit del codice sono          | Esiste un'architettura software   |
| irregolari, con il risultato che  | ben ponderata, documentata e la   |
| le modifiche sono ampie e poco    | convenzione di denominazione di   |
| pratiche da rivedere.             | file e cartelle si spiega da sé,  |
|                                   | portando al layout del codice     |
|                                   | logico.                           |
+-----------------------------------+-----------------------------------+
| Le descrizioni del commit del     | Tutti gli sviluppatori creano     |
| codice sono confuse.              | impegni di codice piccoli, chiari |
|                                   | e ben commentati su base          |
|                                   | regolare. Questi sono peer review |
|                                   | da altri membri del team.         |
+-----------------------------------+-----------------------------------+
| La revisione del codice è         | Ai nuovi sviluppatori che non si  |
| inesistente o ad hoc.             | conformano alle buone pratiche    |
|                                   | viene rifiutato il codice.        |
+-----------------------------------+-----------------------------------+
| Mancano test o specifiche.        | Il codice è scritto tenendo       |
|                                   | presente la verifica o la         |
|                                   | verifica della correttezza.       |
+-----------------------------------+-----------------------------------+

Proteggi il tuo ambiente di sviluppo
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A volte c'è un conflitto percepito tra sicurezza e usabilità. L'IT
aziendale tradizionale è spesso configurato per impedire agli utenti di
eseguire codice arbitrario (e per buoni motivi). Tuttavia, alcuni
sviluppatori richiederanno un ambiente meno vincolato, che consenta loro
di installare strumenti pertinenti e testare il loro software in modo
efficace. Tale flessibilità può esporre un'ampia superficie di attacco
ai potenziali aggressori. Ciò può mettere a disagio i professionisti
della sicurezza. Gli sviluppatori tendono ad essere tecnicamente
intelligenti. Troveranno modi "intelligenti" per aggirare gli ostacoli,
se è quello che serve per fare il loro lavoro. Abbiamo bisogno di una
situazione che sia flessibile e sicura.

Proteggere l'ambiente di sviluppo non significa impedire agli
sviluppatori di funzionare. Si tratta di comprendere i rischi per i
propri ambienti, applicare i controlli tecnici ove appropriato e
trovarsi nella condizione di fidarsi e verificare un utilizzo legittimo.
La linea logica tra sviluppo e operazioni sta diventando sfocata. In
ambienti in cui prodotti e servizi sono distribuiti tramite codice, è
possibile eseguire attività di manutenzione o operative mediante
modifiche alla configurazione e al software. Le stesse persone spesso
possono sia sviluppare che gestire un servizio. In questo caso, è
importante riconoscere l'impatto che un dispositivo compromesso potrebbe
avere sui tuoi servizi e applicare controlli per aiutare a limitare
questa esposizione.

Le seguenti misure possono aiutarti a comprendere e ridurre questi
rischi:

-  | Separare le funzioni aziendali e di sviluppo
   | I servizi aziendali principali come la gestione della posta
     elettronica e dei documenti spesso contengono informazioni
     sensibili e preziose sulla tua organizzazione e sui tuoi clienti.
     Se un utente malintenzionato è in grado di compromettere l'ambiente
     di sviluppo, può provare a ruotare da questa posizione per ottenere
     ulteriori vantaggi dal loro attacco. Separare logicamente
     l'ambiente di sviluppo da altre funzioni rende più difficile il
     pivot. La separazione può essere ottenuta senza ricorrere a
     dispositivi fisicamente diversi. Ad esempio, un utente può
     "navigare" da un ambiente protetto che è più bloccato, in una
     macchina virtuale locale o in un ambiente remoto dove può svolgere
     funzioni di sviluppo in un ambiente più flessibile.

-  | Considera l'ambiente di sviluppo compromesso
   | Se un utente malintenzionato è in grado di compromettere l'ambiente
     di uno sviluppatore, erediterà lo stesso livello di autorizzazioni
     e accesso dello sviluppatore. L'inserimento di controlli aggiuntivi
     tra gli ambienti di sviluppo e i sistemi critici contribuirà a
     ridurre questo impatto. Ad esempio, l'uso dell'autenticazione a più
     fattori renderà più difficile per un utente malintenzionato che ha
     compromesso un dispositivo per sfruttare chiavi, credenziali e
     token di accesso rubati. I test di sicurezza automatizzati e un
     processo di revisione multipla come parte della pipeline di
     distribuzione possono aiutare a catturare e prevenire l'impatto
     successivo.

-  | Fidati dei tuoi sviluppatori, verifica le loro azioni
   | Le persone non sono l'anello più debole, sono la prima linea di
     difesa. Le persone esperte di sicurezza a volte possono essere più
     efficaci nel rilevare e prevenire gli attacchi rispetto ai
     controlli tecnici. La fiducia può essere riposta nelle persone che
     sono consapevoli della sicurezza e si sforzano di fare la cosa
     giusta. Investire nel monitoraggio e nei controlli di audit ti
     aiuterà a verificare che ciò accada. Gli esempi includono il
     monitoraggio della rete per rilevare attività sospette, controllare
     i livelli di patch e verificare il software che gli utenti stanno
     installando.

Questi esempi hanno lo scopo di aiutarti a valutare le tue pratiche e
quelle dei tuoi fornitori. L'elenco che segue non è esaustivo e non deve
essere utilizzato come esercizio di spunta.

+-----------------------------------+-----------------------------------+
| CATTIVA PRATICA                   | BUONA PRATICA                     |
+===================================+===================================+
| I sistemi di produzione hanno una | Il personale riceve dispositivi   |
| buona sicurezza                   | gestiti in modo sicuro,           |
|                                   | configurati per proteggerli da    |
|                                   | una serie di rischi per la        |
|                                   | sicurezza informatica.            |
+-----------------------------------+-----------------------------------+
| Qualsiasi utente o dispositivo    | Agli sviluppatori vengono forniti |
| con accesso all'ambiente di       | gli strumenti di cui hanno        |
| sviluppo è in grado di apportare  | bisogno connettendosi a un        |
| modifiche al codice e alla        | ambiente di sviluppo, separato    |
| distribuzione e inviarle alla     | dal dispositivo di base. In       |
| produzione. Non ci sono           | alternativa, gli sviluppatori non |
| protezioni aggiuntive in atto.    | hanno bisogno dell'amministratore |
|                                   | locale perché il reparto IT       |
|                                   | risponde rapidamente alle loro    |
|                                   | richieste di strumenti di         |
|                                   | sviluppo.                         |
+-----------------------------------+-----------------------------------+
| Nessun monitoraggio protettivo,   | Invece di bloccare i dispositivi  |
| registrazione o controllo viene   | degli sviluppatori, viene         |
| eseguito su ambienti di sviluppo  | utilizzato un approccio di        |
| per aiutare a identificare se e   | affidabilità e verifica per       |
| quando si verifica un             | ridurre il rischio che vengano    |
| compromesso.                      | compromessi. I proprietari sono   |
|                                   | istruiti sui rischi e sono        |
|                                   | invitati a svolgere funzioni di   |
|                                   | sicurezza come la crittografia    |
|                                   | del disco, l'aggiornamento del    |
|                                   | software e l'esecuzione           |
|                                   | dell'antivirus. I controlli di    |
|                                   | monitoraggio vengono utilizzati   |
|                                   | per verificare che siano          |
|                                   | presenti.                         |
+-----------------------------------+-----------------------------------+
| Gli sviluppatori sono in grado di | Il rischio di smarrimento o furto |
| accedere direttamente             | di credenziali segrete viene      |
| all'infrastruttura di produzione  | ridotto accoppiandone l'utilizzo  |
| dalle macchine degli              | con l'autenticazione a due        |
| sviluppatori. Non ci sono         | fattori.                          |
| protezioni aggiuntive in atto,    |                                   |
| come un processo di               |                                   |
| autorizzazione di modifica o      |                                   |
| controlli che consentono solo     |                                   |
| l'accesso "sicuro" al             |                                   |
| dispositivo.                      |                                   |
+-----------------------------------+-----------------------------------+
| ---                               | L'ambiente di sviluppo dispone di |
|                                   | controlli di monitoraggio         |
|                                   | protettivi per aiutare a rilevare |
|                                   | i compromessi e facilitare la     |
|                                   | riparazione rapida ed efficace.   |
+-----------------------------------+-----------------------------------+

Proteggi il tuo repository di codice
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Il tuo codice è sicuro solo quanto i sistemi utilizzati per crearlo.
Come punto centrale in cui il codice viene archiviato e gestito, è
fondamentale che il repository sia sufficientemente sicuro. La perdita o
la compromissione delle credenziali di accesso o la violazione del
servizio sottostante possono consentire agli autori di attacchi di
modificare la tua base di codice a tua insaputa o autorizzazione.
Controllo della versione, revisione tra pari e controllo integrato sono
alcuni dei vantaggi che derivano dall'utilizzo di un repository di
codice. Se viene prestata la dovuta attenzione alle misure di sicurezza,
i vantaggi dell'utilizzo di un repository superano di gran lunga i
rischi.

Questi esempi hanno lo scopo di aiutarti a valutare le tue pratiche e
quelle dei tuoi fornitori. L'elenco che segue non è esaustivo e non deve
essere utilizzato come esercizio di spunta.

+-----------------------------------+-----------------------------------+
| CATTIVA PRATICA                   | BUONA PRATICA                     |
+===================================+===================================+
| I dispositivi di sviluppo che     | Gli sviluppatori utilizzano       |
| accedono al repository di codici  | l'autenticazione a due fattori    |
| non sono sicuri, mettendo le      | quando accedono al repository di  |
| chiavi di accesso al repository   | codice.                           |
| di codici a rischio maggiore di   |                                   |
| essere rubati.                    |                                   |
+-----------------------------------+-----------------------------------+
| Qualsiasi sviluppatore con        | Gli sviluppatori firmano le       |
| accesso al repository può         | modifiche al codice prima di      |
| modificare e cambiare la versione | essere archiviati nel repository  |
| principale del codice senza       | di codice, consentendo una        |
| revisione o contestazione.        | verifica successiva.              |
+-----------------------------------+-----------------------------------+
| Il codice utilizzato per rilevare | Il servizio di code hosting       |
| il compromesso informatico è      | scelto è stato valutato           |
| pubblicato su un repository open  | attentamente (ad es. Utilizzando  |
| source, offrendo agli aggressori  | i principi di sicurezza del cloud |
| la possibilità di controllare     | per comprendere i rischi delle    |
| come funziona.                    | diverse opzioni).                 |
+-----------------------------------+-----------------------------------+
| Il tuo repository di codice,      | Tutto il codice viene esaminato   |
| ospitato come servizio cloud,     | prima di essere unito nella       |
| aderisce a pratiche di sicurezza  | versione principale del           |
| errate.                           | repository di codici. Si presta   |
|                                   | particolare attenzione se tali    |
|                                   | modifiche al codice sono state    |
|                                   | inviate da una persona esterna al |
|                                   | team di sviluppo.                 |
+-----------------------------------+-----------------------------------+
| Gli account e le autorizzazioni   | L'accesso ai repository di codice |
| di chi non lavora più al progetto | sorgente è unito ai processi di   |
| non vengono eliminati o revocati. | leavers e joiners della tua       |
|                                   | organizzazione.                   |
+-----------------------------------+-----------------------------------+
| I profili pubblici degli          | Gli account utilizzati dagli      |
| sviluppatori chiave contengono    | sviluppatori per accedere e       |
| una grande quantità di            | modificare il codice sorgente     |
| informazioni personali che        | della propria organizzazione      |
| potrebbero essere utilizzate per  | vengono periodicamente rivisti    |
| innescare un attacco di spear     | per valutare il rischio           |
| phishing convincente.             | potenziale. Ad esempio, tramite   |
|                                   | le informazioni pubbliche         |
|                                   | disponibili per un utente         |
|                                   | malintenzionato e le impostazioni |
|                                   | di sicurezza utilizzate negli     |
|                                   | account.                          |
+-----------------------------------+-----------------------------------+

Proteggi la pipeline di compilazione e distribuzione
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

L'integrazione, la consegna e l'implementazione continue sono approcci
moderni alla costruzione, al collaudo e all'implementazione dei sistemi
IT. Piccoli e regolari commit del codice possono innescare
automaticamente build ed eseguire test completi. Intere distribuzioni di
sistema possono essere eseguite in ambienti di sviluppo e riferimento,
prima di distribuire un ambiente di produzione identico. Il Santo Graal
è una pipeline di distribuzione che minimizza la necessità di processi
manuali, consentendo implementazioni di produzione regolari
completamente testate in pochi minuti.

La sicurezza di questo processo è fondamentale se è necessario
proteggere l'integrità del codice e dei sistemi che crea. La sicurezza
dovrebbe tuttavia funzionare con questo processo, non ostacolarlo.
Abbraccia gli approcci "`DevSecOps <https://www.devsecops.org/>`__" per
acquisire fiducia nei tuoi servizi.

Sebbene questo principio sia principalmente rivolto ai servizi digitali
che utilizzano pratiche di consegna continua (*Continuous Delivery CD*),
potresti comunque trovare utili alcuni di questi contenuti se stai
utilizzando un approccio di consegna diverso. Lo sviluppo della maggior
parte dei prodotti e servizi avrà una versione di una "pipeline di
distribuzione".

Questi esempi hanno lo scopo di aiutarti a valutare le tue pratiche e
quelle dei tuoi fornitori. L'elenco che segue non è esaustivo e non deve
essere utilizzato come esercizio di spunta.

+-----------------------------------+-----------------------------------+
| CATTIVA PRATICA                   | BUONA PRATICA                     |
+===================================+===================================+
| la piattaforma sottostante su cui | Una piattaforma di integrazione   |
| vengono eseguiti gli strumenti di | continua fornita dal servizio     |
| integrazione continua è           | cloud viene utilizzata dopo       |
| progettata o configurata in modo  | essere stata valutata in base ai  |
| non sicuro.                       | `principi di sicurezza del        |
|                                   | cloud <https://www.ncsc.gov.uk/co |
|                                   | llection/cloud-security>`__.      |
+-----------------------------------+-----------------------------------+
| Tutti i membri del team di        | Quando vengono apportate          |
| sviluppo possono apportare        | modifiche alle fasi critiche      |
| modifiche sia alla base di codice | della distribuzione, la natura    |
| stessa, sia ai controlli della    | importante della modifica viene   |
| pipeline di distribuzione, senza  | riconosciuta e rivista            |
| revisione tra pari.               | attentamente prima di essere      |
|                                   | accettata.                        |
+-----------------------------------+-----------------------------------+
| Viene seguito un processo di      | Il codice viene firmato           |
| revisione tra pari tra i membri   | digitalmente e questa firma viene |
| del team prima che vengano        | successivamente utilizzata dalla  |
| apportate modifiche al codice nel | pipeline di distribuzione per     |
| ramo principale. Tuttavia, non    | garantire che non siano state     |
| esistono controlli tecnici che    | introdotte modifiche non          |
| impediscono modifiche dirette al  | autorizzate.                      |
| ramo principale.                  |                                   |
+-----------------------------------+-----------------------------------+
| Le richieste pull esterne sul     | Durante il processo di            |
| repository di codice vengono      | compilazione, è possibile         |
| eseguite automaticamente dagli    | estrarre solo una whitelist di    |
| strumenti di integrazione,        | repository di terze parti         |
| consentendo a terzi di eseguire   | attendibili a cui è possibile     |
| codice non attendibile            | accedere in modo sicuro (ad es.   |
| nell'ambiente di test e sviluppo. | Utilizzando TLS).                 |
+-----------------------------------+-----------------------------------+
| Durante il processo di            | I controlli di sicurezza nella    |
| compilazione, le librerie di      | pipeline di distribuzione sono    |
| terze parti vengono richiamate in | valutati e implementati in modo   |
| modo dinamico utilizzando         | tale da non poter essere          |
| protocolli non sicuri come HTTP.  | aggirati.                         |
| Non esistono controlli tecnici    |                                   |
| per impedire l'inclusione di      |                                   |
| librerie dannose.                 |                                   |
+-----------------------------------+-----------------------------------+

Metti continuamente alla prova la tua sicurezza
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

I test di sicurezza possono essere manuali, ma possono anche essere
automatizzati. I test durante lo sviluppo del software sono riconosciuti
come buone pratiche. Essi aiutano ad avere la certezza che il codice che
stai sviluppando funziona come previsto. Puoi ottenere la fiducia nella
sicurezza dei tuoi prodotti e servizi allo stesso modo. I test di
sicurezza possono essere manuali, ma possono anche essere automatizzati.

Due approcci particolari allo sviluppo mettono in evidenza i test. Il
primo, Test Driven Development prevede che i test vengano redatti prima
della creazione di qualsiasi codice. Il codice viene quindi scritto per
superare questi test. L'altro, Secure by Construction, richiede che una
specifica sia scritta in anticipo, con il quale viene verificato il
codice, usando metodi formali. Sebbene questi approcci test-friendly
siano talvolta preferiti, altri metodi come test unitari ad hoc o
post-fact, test di sistema e test end-to-end possono essere usati per
migliorare la sicurezza.

I test di sicurezza sono disponibili in molte forme, ma si sono
tradizionalmente affidati a valutazioni temporali, come il "test di
penetrazione" o "valutazione della sicurezza del software". Questo tipo
di test viene spesso eseguito manualmente ed è quindi relativamente
lento e dispendioso in termini di risorse, ma può essere accurato e
consentire agli specialisti della sicurezza di utilizzare la loro
ingegnosità in modi che non sono possibili per altri tipi di test.
Chiamiamo tali test "point in time" perché successivamente al test, il
codice continuerà a evolversi e verranno scoperti nuovi attacchi e
vulnerabilità. Di conseguenza, la fiducia generata da tali valutazioni
decade. Questi problemi, combinati con una crescente tendenza verso
pipeline di costruzione automatizzate, possono portare a sottovalutare
la forma "istantanea" dei test di sicurezza. Ma non dovresti mettere da
parte tutte le forme di test di sicurezza. Ciò porterebbe a uno scenario
di rischio molto elevato.

È disponibile una vasta gamma di strumenti di sicurezza automatizzati
per aiutarti a verificare rapidamente e ripetutamente i problemi di
sicurezza e la conformità rispetto alle politiche organizzative. Ad
esempio, è possibile verificare l'utilizzo di software di terze parti
vulnerabili noti, la configurazione non sicura dell'infrastruttura e la
gestione non sicura di input non attendibili. La velocità e la
ripetibilità di questo tipo di test dovrebbero migliorare la fiducia nel
codice e scalare man mano che si cresce. I test di sicurezza
automatizzati non possono sostituire i tester di sicurezza
specializzati. Tuttavia, riducendo l'onere del lavoro ripetitivo, li
libera di concentrarsi su aspetti specifici del proprio sistema, per i
quali l'automazione è difficile. La definizione di fatica del team di
progettazione dell'affidabilità del sito di Google si applica anche
all'automazione della sicurezza.

Indipendentemente dal modo in cui si combinano i test automatici e
manuali, i test di sicurezza possono solo rivelare la presenza di
vulnerabilità della sicurezza, ma non possono dimostrare la loro
assenza. Hai ancora bisogno di fare un piano per gestire i difetti di
sicurezza. Esistono altri modi per acquisire fiducia nel codice. Gli
esempi includono il monitoraggio protettivo e la verifica formale. La
verifica formale può essere utilizzata per specificare in anticipo
esattamente come dovrebbe funzionare un sistema. Ad esempio, come verrà
utilizzata la memoria. Questo può quindi essere verificato rispetto alle
prestazioni del codice in esecuzione. Viene spesso utilizzato in sistemi
critici per la sicurezza, ma molto meno per altri tipi di sviluppo.

Questi esempi hanno lo scopo di aiutarti a valutare le tue pratiche e
quelle dei tuoi fornitori. L'elenco che segue non è esaustivo e non deve
essere utilizzato come esercizio di spunta.

+-----------------------------------+-----------------------------------+
| CATTIVA PRATICA                   | BUONA PRATICA                     |
+===================================+===================================+
| I test di sicurezza automatizzati | Gli strumenti di analisi statica  |
| non fanno parte della pipeline di | vengono utilizzati per cercare    |
| distribuzione.                    | problemi noti nel codice sorgente |
|                                   | prima della distribuzione.        |
+-----------------------------------+-----------------------------------+
| Le politiche e gli audit di       | Gli strumenti di sicurezza        |
| sicurezza tradizionali            | dell'analisi dinamica vengono     |
| impediscono all'azienda di        | eseguiti parallelamente alla      |
| raggiungere una continua          | pipeline di distribuzione, con    |
| integrazione.                     | risultati automatizzati forniti   |
|                                   | ai canali di comunicazione del    |
|                                   | team.                             |
+-----------------------------------+-----------------------------------+
| I test di sicurezza per           | I test vengono creati per         |
| specialisti non hanno lo scopo di | verificare la presenza di         |
| riflettere i principali rischi e  | problemi di sicurezza noti, che   |
| preoccupazioni del sistema.       | vengono quindi continuamente      |
|                                   | eseguiti dalla pipeline di        |
|                                   | distribuzione.                    |
+-----------------------------------+-----------------------------------+
| I test di sicurezza sono scritti  | Gli sviluppatori ignorano gli     |
| male. Non sempre funzionano o     | avvisi di sicurezza e viene       |
| producono troppi falsi positivi.  | compromessa la procedura di       |
|                                   | auditing. I test di penetrazione  |
|                                   | e di vulnerabilità sono stati     |
|                                   | studiati per coprire parti        |
|                                   | critiche del progetto.            |
+-----------------------------------+-----------------------------------+
| I risultati dei test di sicurezza | ---                               |
| sono nascosti agli sviluppatori,  |                                   |
| pertanto non è possibile          |                                   |
| apprendere errori.                |                                   |
+-----------------------------------+-----------------------------------+

Pianificare i difetti di sicurezza
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Tutti i software potrebbero contenere bug, alcuni dei quali potrebbero
avere un impatto sulla sicurezza. Questo vale per il codice scritto
internamente e per qualsiasi risorsa di terze parti su cui si basa il
prodotto. I difetti non si limitano agli errori di codifica e agli
errori di implementazione, ma possono includere anche problemi di
architettura e design. Avendo accettato l'inevitabilità di tali
problemi, occorre attuare un piano per trovarli e risolverli.

Quando il software viene sviluppato per la prima volta, la priorità è
stabilire il valore, identificare un prodotto minimo praticabile. La
solidità del codice e la funzionalità relativa alla sicurezza sono
comprensibilmente scambiate. Questo crea debito tecnico. Parte di questo
debito tecnico può avere un impatto sulla sicurezza (ad esempio,
concedere le autorizzazioni amministrative complete a un'applicazione
durante lo sviluppo, anziché esaminare quali autorizzazioni specifiche
sono necessarie per il funzionamento dell'applicazione). Tenere un
registro di questi elementi mentre si procede nello sviluppo è
importante, permettendo risolvere in seguito le problematiche.

Questi esempi hanno lo scopo di aiutare a valutare le propriet pratiche
e quelle dei fornitori. L'elenco che segue non è esaustivo e non deve
essere utilizzato come esercizio di spunta.

+-----------------------------------+-----------------------------------+
| CATTIVA PRATICA                   | BUONA PRATICA                     |
+===================================+===================================+
| Una volta creato un prodotto, non | Esiste un chiaro processo di      |
| è in atto alcun processo per la   | divulgazione delle vulnerabilità  |
| risoluzione di problemi di        | che consente alle persone di      |
| sicurezza.                        | segnalare in modo responsabile    |
|                                   | problemi di sicurezza senza       |
|                                   | contraccolpo.                     |
+-----------------------------------+-----------------------------------+
| Non è disponibile alcuna "porta   | I problemi di sicurezza rilevati  |
| d'ingresso" per le persone che    | vengono discussi dai membri del   |
| segnalano problemi di sicurezza.  | team di sviluppo in modo che il   |
|                                   | problema possa essere risolto e   |
|                                   | appreso.                          |
+-----------------------------------+-----------------------------------+
| Le modifiche al sistema e la      | Un feed regolare di informazioni  |
| carenza di personale non lasciano | sulla vulnerabilità relative alle |
| a nessuno le conoscenze o le      | tecnologie e ai prodotti da cui   |
| conoscenze necessarie per         | dipendi viene utilizzato per      |
| risolvere i problemi di sicurezza | identificare nuove vulnerabilità  |
| nelle parti più vecchie del       | rilevanti.                        |
| sistema.                          |                                   |
+-----------------------------------+-----------------------------------+
| Vengono segnalati problemi di     | ---                               |
| sicurezza ma non adeguatamente    |                                   |
| mitigati.                         |                                   |
+-----------------------------------+-----------------------------------+
| Continuano a verificarsi ripetute | ---                               |
| vulnerabilità della sicurezza     |                                   |
| dello stesso tipo e la causa      |                                   |
| principale del problema non viene |                                   |
| considerata o risolta.            |                                   |
+-----------------------------------+-----------------------------------+
| Le pratiche di sicurezza del      | ---                               |
| codice sviluppato sono buone ma   |                                   |
| le vecchie versioni delle         |                                   |
| librerie di terze parti con       |                                   |
| vulnerabilità note sono ancora    |                                   |
| utilizzate.                       |                                   |
+-----------------------------------+-----------------------------------+

Gestione della community
------------------------

Per via della natura del modello di sviluppo aperto, persone esterne
all’organizzazione potrebbero voler inviare segnalazioni di bug e/o
miglioramenti. Per incoraggiare la partecipazione di altre pubbliche
amministrazioni o altri collaboratori esterni, è bene esser pronti a
rispondere a domande di supporto generali e assicurarsi che vi sia una
comunicazione chiara sui requisiti minimi per accettare le
contribuzioni.

Gli strumenti di community forniti a tutte le pubbliche amministrazioni
italiane, e che viene il più possibile richiesto di sfruttare e
valorizzare, sono:

-  Sito Developers Italia: sito che rappresenta il punto di riferimento
   per il software della pubblica amministrazione
   (https://developers.italia.it/).

-  Sito Docs Italia: sito che rappresente il luogo per la divulgazione e
   la consultazione dei documenti pubblici digitali
   (https://docs.italia.it/).

-  Forum Developers Italia: lo spazio di discussione sui servizi
   pubblici digitali (https://forum.italia.it/).

-  Slack di Developers Italia: strumento utilizzato per favorire la
   discussione e il confronto tra i membri della community degli
   sviluppatori per la pubblica amministarzione italiana
   (https://slack.developers.italia.it/).
