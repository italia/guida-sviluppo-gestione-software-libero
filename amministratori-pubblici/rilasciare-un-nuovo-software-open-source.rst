Rilasciare un nuovo software open source
========================================

Nel seguito sono descritte delle buone pratiche per rilasciare in modo
efficace del software come open source. Dopo aver presentato i benefici
del software open source, in questo capitolo verrà descritta una
possibile modalità per pubblicare il proprio software in open source.

Scegliere una piattaforma di code hosting
-----------------------------------------

Le pubbliche amministrazioni dovrebbero scegliere un sistema di
controllo delle versioni distribuito e interoperabile con git prendendo
in considerazione l'utilizzo di una delle seguenti piattaforme di code
hosting, in base alle loro funzionalità e all'adozione significativa da
parte della comunità open source di riferimento.

Esistono piattaforme di code hosting sia on-premises che Saas (anche ad
utilizzo gratuito). Tra queste ultime citiamo le più scelte tra i
progetti open source moderni:

-  GitHub - `https://github.com <https://github.com/>`__

-  GitLab - `https://gitlab.com <https://gitlab.com/>`__

-  Bitbucket - `https://bitbucket.org <https://bitbucket.org/>`__

-  Gitea - https://gitea.io

All’interno di uno strumento di code hosting è possibile organizzare i
propri progetti in modo gerarchico: è possibile creare una
**organizzazione** che conterrà all’interno tutti i singoli
**repository** di software.

N.B.: A seconda della piattaforma utilizzata questa organizzazione può
avere diversi nomi, è infatti “organizzazione” nel caso GitHub, si
chiama “Group” per Gitlab e “Team” per Bitbucket.

Si può immaginare l’organizzazione come un raccoglitore dei singoli
repository che a loro volta conterranno il codice sorgente.

È buona norma definire il nome dell’organizzazione in modo coerente
rispetto all’ente che la sta creando. Ad esempio, prendendo l’ente
fittizio creato come esempio chiamato “Comune di Reuso”,
l’organizzazione potrebbe chiamarsi “comune-reuso” e contenere al suo
interno tutti i repository con il software di titolarità del comune. È
infatti ragionevole pensare che il software per la gestione del
protocollo informatico abbia uno spazio a sé stante diverso da quello
per il software per la PEC.

Per meglio visualizzare questo concetto è possibile vedere il seguente
schema ad albero che rappresenta una possibile strutturazione dei
repository all’interno di una organizzazione::

  ComuneDiReuso
|-- software-protocollo
|     |-- LICENSE
|     `-- README
|
|-- software-pec
|     |-- LICENSE
|     `-- README

Ovviamente la modalità di creazione di tali organizzazioni differisce a
seconda della piattaforma adottata.

Qui di seguito saranno elencate le modalità di creazione di una
organizzazione all’interno di alcune tra le piattaforme elencate nelle
`linee
guida <https://docs.italia.it/italia/developers-italia/lg-acquisizione-e-riuso-software-per-pa-docs/it/stabile/attachments/allegato-b-guida-alla-pubblicazione-open-source-di-software-realizzato-per-la-pa.html?highlight=repository>`__.

GitHub
~~~~~~

Un’organizzazione su GitHub può essere creata in modo molto semplice e
gratuito direttamente dall’interfaccia online del servizio. Per creare
un’organizzazione, è possibile seguire i seguenti passi:

1. **Fare login su GitHub con le proprie credenziali**

Aperto il sito https://www.github.com/ è possibile effettuare l’accesso
selezionando sulla barra in alto a destra, il bottone “Sign In”.

Nella schermata che compare è possibile specificare il proprio nome
utente e password o scegliere una modalità di accesso differente.

Se non si dispone di un utente è possibile selezionare “Create an
account” per creare un nuovo utente sulla piattaforma

|image0|

2. **Creare una nuova organizzazione**

Per creare una nuova organizzazione è possibile selezionare il bottone
“+“ a fianco dell’avatar del vostro utente e selezionare dal menù a
tendina “New organization”.

|image1|

3. **Specificare le informazioni per l’organizzazione**

Dopo aver specificato di voler creare una organizzazione con un piano
“Free” (gratuito), sarà possibile aggiungere le informazioni rilevanti.
È necessario specificare:

-  Organization account name: qui va indicato il nome
   dell’organizzazione della PA, ad esempio comune-di-reuso, in modo che
   sarà raggiungibile su https://github.com/comune-di-reuso.

-  Contact email: qui deve essere specificata la mail di contatto per
   qualsiasi informazione riguardante l’organizzazione.

-  Belongs to: si deve scegliere di legare l’organizzazione al nome di
   un ente.

| Al termine, dopo una serie di passaggi di verifica, premendo sul tasto
  “Next” verrà richiesto quali account invitare all’interno
  dell’organizzazione e la visibilità dell’organizzazione (da mettere
  sempre come “public”).
| |image2|

L’URL dell’organizzazione così creato sarà
https://github.com/comune-di-reuso.

GitLab
~~~~~~

Un’organizzazione in GitLab può essere creata in modo molto semplice
direttamente dall’interfaccia online del servizio.

Per creare un’organizzazione, è possibile seguire i seguenti passi:

1. **Fare login su Gitlab con le proprie credenziali**

Aperto il sito https://www.gitlab.com/ è possibile fare accesso
selezionando sulla barra in alto, a destra, il bottone “Sign In”.

Nella schermata che compare è possibile specificare il proprio nome
utente e password o scegliere una modalità di accesso differente.

Se non si dispone di un utente è possibile selezionare “Register” per
creare un nuovo utente sulla piattaforma

|image3|

2. **Creare un nuovo “Gruppo”**

Un gruppo può essere utilizzato anche per identificare l’organizzazione
della nostra pubblica amministrazione.

Per creare un nuovo Gruppo dalla barra in alto basta portare il mouse
sopra il bottone che presenta un’immagine con un + e selezionare dal
menù a tendina “New group”.

|image4|

3. **Specificare le informazioni per il Gruppo**

A questo punto sarà possibile specificare le informazioni rilevanti per
la creazione del gruppo. È necessario specificare:

-  Group name: qui va indicato il nome della PA (ad esempio Comune di
   Reuso)

-  Group URL: qui deve essere specificato il nome breve della PA che
   sarà usato come parte finale della URL dell’organizzazione, questo
   nome non può avere spazi o caratteri speciali, come caratteri
   accentati (ad esempio comune-reuso)

-  Group description: opzionalmente si può specificare una descrizione
   della PA.

-  Visibility level: attenzione! è importante specificare **Public**
   come visibilità per il gruppo.

Al termine, premendo sul bottone “Create group” il gruppo sarà creato e
disponibile per contenere i repository della PA.

|image5|

L’URL del gruppo così creato (nell esempio fatto
https://gitlab.com/comune-reuso) sarà il valore da specificare nel campo
“URL dell'account nello strumento di code hosting” durante la procedura
di `aggiunta al Catalogo di Developers
Italia <http://onboarding.developers.italia.it>`__.

Bitbucket
~~~~~~~~~

Un’organizzazione in Bitbucket può essere creata in modo molto semplice
direttamente dall’interfaccia online del servizio.

Per creare un’organizzazione, è possibile seguire i seguenti passi:

1. **Fare login su Bitbucket con le proprie credenziali**

Aperto il sito `https://bitbucket.org <https://bitbucket.org/>`__ è
possibile fare accesso selezionando “Log in” in alto e quindi
specificando il proprio nome utente e password o scegliendo una modalità
di accesso differente.

Se non si dispone di un utente è possibile selezionare “Registra un
account” sotto ai bottoni di accesso per creare un nuovo utente sulla
piattaforma.

|image6|

2. **Creare un nuovo “Team”**

Un team può essere utilizzato anche per identificare l’organizzazione
della nostra pubblica amministrazione.

Per creare un nuovo Team è possibile cliccare sull’icona con il simbolo
**+** nel menu a scomparsa di sinistra e quindi selezionare Team.

|image7|

3. **Specificare le informazioni per il Team**

A questo punto sarà possibile specificare le informazioni rilevanti per
la creazione del team. É necessario dunque specificare:

-  Team name: qui va indicato il nome della PA (ad esempio Comune di
   Reuso)

-  Workspace ID: qui deve essere specificato il nome breve della PA che
   sarà usato come parte dell’URL dell’organizzazione, questo nome non
   può avere spazi o caratteri speciali, come caratteri accentati (ad
   esempio “comune-reuso”)

Al termine, premendo sul bottone “done” il team sarà creato e
disponibile per contenere i repository della PA.

|image8|\ L’URL del team così creato sarà
https://bitbucket.org/comune-reuso/.

Convertire un utente in organizzazione
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Nel caso in cui si fosse inavvertitamente effettuato il processo di
onboarding inserendo l’indirizzo (URL) di un utente invece che di
un’organizzazione è possibile apportare una correzione senza dover
rifare l’operazione di onboarding.

.. _github-1:

GitHub
''''''

La piattaforma GitHub permette di convertire un account utente in
un’organizzazione ma, nel farlo, si perderà l’accesso al primo.

Ipotizziamo di avere un utente denominato “comune-reuso” da convertire
in un’organizzazione. Per farlo si possono seguire i seguenti passi:

1. creare un nuovo utente che coprirà il ruolo di amministratore, ad
   esempio “\ *admincomunedireuso*\ ”

2. Effettuare il login con il vecchio utente nel nostro esempio
   denominato “comune-reuso”.

3. Convertire l’utente denominato “\ *comune-reuso*\ ” in una vera e
   propria organizzazione. Durante questa operazione è importante
   indicare il nome dell’utente che avrà la gestione
   dell’amministrazione, nel nostro esempio sarà
   “\ *admincomunedireuso*\ ”.

4. A questo punto avremo una URL del tipo
   “\ *github.com/comune-reuso*\ ” che sarà un’organizzazione gestita
   dall’utente “\ *admincomunedireuso*\ ”

Più nel dettaglio:

1. Creare un utente di amministrazione (https://github.com/join)

|image9|

2. **Convertire l’account in un’organizzazione**.

Per farlo è necessario effettuare il login come “comune-reuso”,
selezionare il menu **Settings** e successivamente selezionare il menu
sulla sinistra chiamato **Organizations.**

3. Selezionare il bottone **Turn comune-reuso into an organization.**

|image11|

Proseguire con la procedura, **ponendo molta attenzione nella fase di
assegnazione della titolarità della nuova organizzazione all’utente
creato al punto 1, ovvero “admincomunedireuso”.** Se questo non dovesse
avvenire correttamente **si perderebbe l’accesso a tale
organizzazione.**

|image12|

A questo punto la procedura è terminata, sarà dunque possibile navigare
verso https://github.com/comune-reuso per vedere la propria
organizzazione.

|image13|

Aggiungere l’organizzazione a Developers Italia
-----------------------------------------------

Una volta ottenuta la propria organizzazione dallo strumento di code
hosting la si può registrare nel `Catalogo di software
pubblico <https://developers.italia.it/it/search>`__ di Developers
Italia, attraverso il sito https://onboarding.developers.italia.it.
All’interno di questo portale verranno richieste delle informazioni
relative al referente e la URL dell’organizzazione dell’ente.

Questa operazione permetterà a Developers Italia di indicizzare
automaticamente tutti i software dell’organizzazione in modo da renderli
facilmente trovabili all’interno del Catalogo del software a riuso.

Scegliere il nome del progetto
------------------------------

La denominazione del progetto (e del repository associato) è una parte
importante del rilascio. Consigliamo un nome descrittivo e chiaro che
indichi quale sia la finalità del progetto.

Si suggeriscono i seguenti passi:

-  Usare un nome descrittivo che chiarisca cosa fa il tuo progetto.

-  Non utilizzare marchi di terze parti se non quando necessario; usali
   solo come descrittori (ad esempio "Librerie di test per Java" anziché
   "Librerie di test Java").

-  Non chiamare il progetto come il marchio di qualcun altro.

-  Per i nomi dei repository, separare le parole con trattini invece di
   concatenarle (ad esempio invece di “\ *successortoserverless”*
   utilizzare “\ *successor-to-serverless”*). Questo aumenta la
   leggibilità da parte di chi dovrà usare il software.

Scegliere e dichiarare la licenza
---------------------------------

Ogni repository deve avere una licenza riportata nel file LICENSE o
LICENSE.md prima di poter accettare codice. In caso di conferimento
iniziale, il file LICENSE può essere incluso direttamente nella prima
pull request purché il commit sia effettuato dal soggetto titolare del
codice.

Per indicazioni circa le licenze, si può fare riferimento alle “Linee
guida su acquisizione e riuso di software per le pubbliche
amministrazioni”, `Allegato C: Guida alle licenze Open
Source <https://docs.italia.it/italia/developers-italia/lg-acquisizione-e-riuso-software-per-pa-docs/it/bozza/attachments/allegato-d-guida-alle-licenze-open-source.html>`__.

Accettare dei contributi dopo il rilascio
-----------------------------------------

Dopo aver rilasciato una soluzione in open source per il riuso, è molto
probabile che qualche altro soggetto o amministrazione la voglia
utilizzare per i propri scopi. In questo riutilizzo, il codice potrebbe
ricevere contributi di miglioramento, correzione di errori o di sviluppo
di nuove funzionalità.

Questi contributi è bene vengano accettati e integrati nel codice
sorgente del progetto in modo che possano rappresentare un miglioramento
per tutti coloro che sono interessati al suo riuso. Per accettare i
contributi, tuttavia, è bene verificare alcuni aspetti:

-  i contributi devono essere revisionati in termini di potenziali
   rischi per la sicurezza della soluzione;

-  i contributi non riguardano personalizzazioni del
   software in questione non compatibili con un utilizzo generico da
   parte di terzi;

-  il titolare del software è bene mantenga un controllo
   sull’architettura e sulla qualità del software prodotto e quindi
   verifichi che i contributi non violino qualche regola di struttura o
   di organizzazione del progetto.

.. |image0| image:: /media/image2.png
   :width: 6.26772in
   :height: 3.05556in
.. |image1| image:: /media/image1.png
   :width: 3.89063in
   :height: 3.07359in
.. |image2| image:: /media/image15.png
   :width: 6.26772in
   :height: 4.83333in
.. |image3| image:: /media/image9.png
   :width: 6.27083in
   :height: 5.625in
.. |image4| image:: /media/image11.png
   :width: 6.27083in
   :height: 5.625in
.. |image5| image:: /media/image10.png
   :width: 6.27083in
   :height: 6.02778in
.. |image6| image:: /media/image13.png
   :width: 6.27083in
   :height: 5.40278in
.. |image7| image:: /media/image14.png
   :width: 6.27083in
   :height: 5.16667in
.. |image8| image:: /media/image12.png
   :width: 6.27083in
   :height: 5.16667in
.. |image9| image:: /media/image5.png
   :width: 4.2174in
   :height: 2.95313in
.. |image11| image:: /media/image7.png
   :width: 6.27083in
   :height: 2.71875in
.. |image12| image:: /media/image8.png
   :width: 6.27083in
   :height: 2.69444in
.. |image13| image:: /media/image6.png
   :width: 6.27083in
   :height: 1.79167in
