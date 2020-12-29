Rilasciare un software open source
----------------------------------

Nel seguito sono descritte delle buone pratiche per rilasciare software in modo efficace seguendo il paradigma open source.


Preparare il progetto
~~~~~~~~~~~~~~~~~~~~~

Prima di rilasciare del codice in modalità open source è fondamentale prestare molta attenzione ad ogni singolo contenuto che dovrà essere caricato sul repository e che di conseguenza diventerà pubblicamente fruibile. È quindi importante effettuare dei controlli preventivi a tutti i file (anche a quelli nascosti che a volte potrebbero sfuggire ad un’analisi superficiale) per assicurarsi che siano adatti alla visualizzazione pubblica. In tal senso, è importante porre attenzione anche ai commenti del codice: spesso, infatti, accade che nei commenti gli sviluppatori utilizzino un linguaggio inopportuno alla pubblicazione.

Inoltre, è bene accertarsi di alcuni principi elementari di sicurezza per verificare che il software sia ragionevolmente sicuro per essere rilasciato pubblicamente. Per esempio, è fondamentale porre particolare attenzione nel  verificare che nel codice non siano memorizzate delle password (nemmeno di ambienti di test o sviluppo). 

Problema simile a quello delle password riguarda i token di autenticazione usati per alcuni servizi acceduti tramite rete. 

Per ovviare a ciò è possibile usare dei rapidi stratagemmi. Ad esempio, per individuare nomi host, indirizzi di posta elettronica e indirizzi IP, è possibile eseguire questo comando in console:

.. code-block:: bash
  :linenos:

  egrep -r '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b" |([0-9]+\.){3}[0-9]+' <percorso-verso-i-sorgenti>

Oppure, per trovare i commenti nei sorgenti in linguaggi Java/C/C++/Go/Objective-C/Objective-C++/Swift/Kotlin è possibile usare il seguente comando:

.. code-block:: bash
  :linenos:

  find <percorso-verso-i-sorgenti> -type f | egrep '\.(c|cc|h|cpp|go|java|kt|m|mm|swift)' | while read f; do echo "------------ $f ------------------"; sed -n -e '/\/\*.*\*\// {p;b}' -e '/\/\*/,/\*\//p' -e '/\/\//p' "$f"; done

Infine, per vedere i commenti in Python/Bash:

.. code-block:: bash
  :linenos:

  find <percorso-verso-i-sorgenti> -type f | egrep '\.(py|sh)' | while read f; do echo "------------ $f ------------------"; grep -o "#.*" "$f"; done

Questi sono solo alcuni esempi utili per trovare rapidi riscontri ma deve essere cura del maintainer effettuare dei controlli approfonditi in questa fase preparatoria alla pubblicazione. 

Se è stato utilizzato il sistema di versionamento GIT fin dall’inizio dello sviluppo è fondamentale prestare attenzione al fatto che tutte le modifiche apportate ai vari file sono state tracciate e quindi visibili nella history. In tal senso, se vengono rimosse delle informazioni in fase di preparazione è fondamentale che le stesse informazioni siano rimosse anche dalla history. Per effettuare questo tipo di operazione esistono diversi strumenti. `Questo documento <https://help.github.com/en/articles/removing-sensitive-data-from-a-repository>`__ rappresenta una guida utile per rimuovere in sicurezza le informazioni sensibili dal proprio codice sorgente e, di conseguenza, dalla history del progetto.

Inoltre, si raccomanda di eseguire alcuni controlli di base sulla qualità e sulla sicurezza del codice prodotto utilizzando strumenti disponibili gratuitamente: ad esempio, molti IDE moderni includono già strumenti di linting per controllare l’assenza sia di errori che di warning, per controllare l’esistenza della documentazione, eventuale codice non utilizzato, variabili non inizializzate e così via. E’ molto consigliato l’utilizzo di questo tipo di strumenti già in fase di sviluppo per trovare e rimuovere i problemi in fase embrionale. Inoltre, è consigliato inserire questi controlli (ad es., linting) anche nella propria toolchain di build. La ridondanza, in questo caso, può essere d’aiuto. 

In aggiunta, numerosi sono gli strumenti di audit gratuiti che effettuano controlli aggiuntivi di sicurezza e di qualità per progetti open source. Come supporto per la scelta è possibile controllare le comparazioni degli strumenti sia FLOSS che di mercato in queste liste:

* https://www.owasp.org/index.php/Source_Code_Analysis_Tools
* https://samate.nist.gov/index.php/Source_Code_Security_Analyzers.html 

Come verrà trattato nel capitolo dedicato, alcuni di questi strumenti sono facilmente integrabili all’interno di diverse piattaforme di code hosting o di Continuous Integration: questo permette di eseguire una serie di controlli scaturiti automaticamente per ogni operazione che viene eseguita sul repository (ad esempio, ad ogni commit) ed è quindi considerata una buona pratica.

Gestione delle dipendenze
~~~~~~~~~~~~~~~~~~~~~~~~~

Spesso nello sviluppo di software è comune tra gli sviluppatori l’utilizzo di librerie scaricate localmente nella propria directory di sviluppo. Questa modalità, sebbene possa sembrare utile in fase di testing o prototipazione nell’ambiente di sviluppo locale, è considerata una cattiva pratica nello sviluppo di applicativi moderni. Essenzialmente un approccio di questo tipo comporta una forte difficoltà nella gestione sul lungo periodo, diverse difficoltà nell’aggiornamento di ogni singola dipendenza e l’impossibilità di utilizzare strumenti automatizzati di rilevazione di vulnerabilità. 

È, invece, buona pratica gestire le dipendenze esterne del software da rilasciare con il gestore di pacchetti del linguaggio usato (ad es. npm, composer, ecc.). In questo modo le dipendenze e le loro versioni saranno dichiarate all’interno di un file tracciato da git e presente nel repository (ad es., package.json, ecc.) il che rende la loro gestione e l’aggiornamento più facile e immediato. Per un approfondimento è possibile consultare la sezione dedicata della 12 factor app (https://12factor.net/it/dependencies). 

Inoltre, anche in questo caso esistono degli strumenti automatizzati che facilitano non solo l’aggiornamento delle singole dipendenze ma anche la segnalazione di potenziali vulnerabilità in una particolare versione utilizzata. Questi strumenti sono spesso disponibili direttamente all’interno delle piattaforme di code-hosting o possono essere trovati sotto forma di plugin facilmente installabili. Le singole dipendenze vengono analizzate e, nel caso vi siano delle potenziali vulnerabilità, il maintainer verrà notificato e spesso la soluzione è suggerita in automatico. 
Tra gli strumenti disponibili è possibile citare:

* npm-audit (https://docs.npmjs.com/cli/v6/commands/npm-audit), strumento FOSS per la gestione delle dipendenze e notifica delle vulnerabilità per Javascript/Node.js
* Dependency Scanning GitLab (https://docs.gitlab.com/ce/user/application_security/dependency_scanning/), scanner integrato nella piattaforma (solo alcune versioni)
* Dependabot (https://dependabot.com/) - ora integrato in GitHub
* Snyk (https://snyk.io/), sistema proprietario erogato come SaaS disponibile gratuitamente per progetti open source.

I software open source moderni sono composti da numerosissime dipendenze, come ad esempio librerie di terze parti, e pensare di aggiornarle indipendentemente senza utilizzare degli strumenti di supporto è un’operazione molto esosa e incline ad errori. E’ perciò fortemente consigliato adottare le buone pratiche qui descritte sia per la gestione delle dipendenze tramite il gestore dei pacchetti che per quanto riguarda gli strumenti di supporto messi a disposizione dalle varie piattaforme. 

Responsabilità
~~~~~~~~~~~~~~

Le licenze chiariscono che gli autori del software non si prendono nessuna responsabilità in merito alla completezza e funzionalità, e che è sempre l’utente a doversi assumere la responsabilità per l’adozione di tale codice.

Ad esempio, questo è quanto prevede la `BSD-3 <https://opensource.org/licenses/BSD-3-Clause>`__:

	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

È compito di chi lo sviluppa e mantiene assicurarsi che il software rilasciato in open source sia sicuro, privo di bug o di vulnerabilità, e quindi di adottare strumenti finalizzati alla qualità del codice (ad esempio: unit tests, CI, auditing, checklist per feature parity). Problemi o limitazioni note devono essere accuratamente documentati come issue, e nei casi più importanti anche esplicitati nel README.

I file da inserire nel repository
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Il repository di un progetto open source contiene solitamente numerosi file. In particolare, è buona pratica inserirne alcuni come il README, il file LICENSE o il file AUTHORS, per permettere al visitatore di capire più nel dettaglio la natura di tale progetto senza dover leggere fin da subito il codice sorgente.

README
******

Ogni repository deve avere nella root un file README, solitamente in formato Markdown (.md), contenente:

* il titolo del repository ed un sottotitolo descrittivo;
* descrizione estesa del repository in un linguaggio comprensibile anche dai non addetti ai lavori (evitare acronimi e gergo tecnico), in particolare:
* contesto (mai darlo per scontato);
* finalità;
* beneficiari e casi d’uso;
* eventuali screenshot;
* link alla pagina del progetto su Developers Italia e ad eventuali altre pagine istituzionali relative al progetto;
* link ad eventuale documentazione; Nel caso di documentazione multilingua, link alla versione generica (ad es. https://docs.italia.it/italia/anpr/anpr, non https://docs.italia.it/italia/anpr/anpr/it/stabile/index.html ;
* spiegazione della struttura del repository anche a beneficio dei potenziali contributori (struttura delle directory e dei branch);
* istruzioni per l’installazione:
* requisiti e dipendenze;
* build system necessario;
* comandi per la compilazione o il deployment, possibilmente automatizzati da uno script/Makefile;
* se il software prevede rilasci periodici, link per il download (anche sotto forma di badge);
* eventuali indicazioni sullo stato del progetto:
* stato di alpha/beta/stable eccetera;
* importanti limitazioni o known issues;
* eventuale assenza di maintainer attivi, con l’invito a candidarsi;
* eventuale stato di abbandono del software, o riferimento a versioni successive
* nomi degli autori originali del software, dei Maintainer (anche passati) e degli eventuali contributori principali.
* badge:

  * eventuali sistemi di Continuous Integration (ad es., CircleCI), code coverage ed altre metriche;
  * eventuale immagine Docker;
  * canale di comunicazione relativo al repository (qui un esempio) e link al sito per l’invito (laddove possibile):

  
Un README ben curato è fondamentale per incentivare l’adozione e lo sviluppo collaborativo di un progetto. Per ispirazione si può consultare `questa lista di esempi <https://github.com/matiassingers/awesome-readme>`__.
Un dettaglio delle sezioni da inserire nel file README è presente a `questo indirizzo <https://github.com/italia/readme-starterkit>`__ e, per nuovi progetti, è possibile utilizzare `questo template <https://github.com/italia/readme-starterkit/blob/master/README.template.md>`__. Infine qui si trova una checklist che guida nella verifica della completezza e dell’efficacia del README creato.

AUTHORS
*******

Il file AUTHORS permette di individuare chi ha lavorato ad un determinato progetto e potenzialmente contiene anche un riferimento temporale. Questo è fondamentale per la gestione dei copyright. Esistono diverse modalità di gestione del copyright e questo file aiuta a chiarire anche questo aspetto. Developers Italia, ad esempio, adotta un modello a copyright diffuso: ai contributori non è richiesto di devolvere tutti i diritti, pertanto ai fini dell’attribuzione fa fede lo storico dei commit di git e quanto specificato nel file AUTHORS. Nota bene: in presenza di contributi esterni nessuno detiene la totalità del copyright e quindi non è generalmente consentito il relicensing sotto altre licenze non 
compatibili con quella attuale.

Esempio di AUTHORS file di developers.italia.it: 

* https://github.com/italia/developers.italia.it/blob/master/AUTHORS 


publiccode.yml
**************

Tutti i repository di software open source sviluppati da una Pubblica Amministrazione italiana devono contenere un file denominato publiccode.yml che contiene le informazioni utili al popolamento del `catalogo di Developers Italia <https://developers.italia.it/it/software>`__. publiccode.yml è un formato di metadatazione del software nato in Italia ma in corso di adozione internazionale. Tale file contiene diverse chiavi che possono essere facilmente compilate sia a mano che grazie ad un `editor online <https://publiccode-editor.developers.italia.it/>`__ messo a disposizione dal Dipartimento per la trasformazione digitale.


LICENSE
*******

Al software deve essere applicata una delle `licenze approvate da Open Source Initiative <https://opensource.org/licenses>`__ (le Linee Guida sull’acquisizione e il riuso di software per le Pubbliche Amministrazioni ne `suggeriscono alcune in particolare <https://docs.italia.it/italia/developers-italia/lg-acquisizione-e-riuso-software-per-pa-docs/it/stabile/attachments/allegato-d-guida-alle-licenze-open-source.html>`__, per consentire la massima riusabilità).

Al fine di applicare la licenza scelta al materiale da rilasciare è necessario creare nella root (cartella radice) del repository un file denominato LICENSE, contenente il testo integrale della licenza scelta, senza alcuna modifica. I testi originali sono disponibili a `questo indirizzo <https://spdx.org/licenses/>`__. Sempre le Linee Guida specificano l’obbligatorietà dello specificare la licenza applicata tramite espressione (o codice) SPDX all’inizio di ogni file sorgente, in modo che sia possibile effettuare una metadatazione automatica delle licenze usate.

Prima di scegliere una licenza per il proprio progetto è fondamentale effettuare dei controlli sulle dipendenze del proprio software. Infatti è possibile che alcune dipendenze o alcune parti del proprio software siano coperti da licenze più o meno restrittive che quindi possono risultare incompatibili con altre. Risulta dunque necessario effettuare dei controlli prima di effettuare la scelta finale e pubblicare il proprio software con una data licenza. Esistono degli strumenti che facilitano queste operazioni come ad esempio:

* License Checker - (https://www.npmjs.com/package/license-checker)
* Pivotal License Checker - (https://github.com/pivotal/LicenseFinder)
* FOSSA (servizio SaaS) - (https://fossa.io)

Nota bene: il risultato di queste analisi automatiche non è comunque paragonabile al parere di un profilo legale specializzato in materia. Laddove vi fossero dei dubbi o delle incomprensioni è buona norma richiedere una perizia e un parere legale onde evitare di infrangere le norme sul diritto d’autore o violare i termini di una licenza.

Esistono diverse modalità di applicazione delle licenze ai singoli file. Per conoscere la specifica REUSE, si consiglia la lettura della `guida dedicata <https://reuse.software/practices/2.0/>`__.


.gitignore
**********

Questo file permette di configurare la propria istanza di GIT in locale in modo tale da ignorare alcuni file e non “tracciarli”. In questo modo sarà ad esempio possibile separare i file sorgente dai file oggetto frutto di una compilazione in locale oppure i file di swap o file temporanei sui quali si sta lavorando in locale. L’utilizzo corretto di questo file rappresenta una buona pratica perché evita che alcuni file che non dovrebbero essere pubblici vengano inseriti per sbaglio nel repository remoto. Un altro esempio rappresenta i file di configurazione del software contenenti informazioni private (ad es., .env file): questi file non devono essere pubblicati e dunque denon essere inseriti nel .gitignore. 

Esempio di .gitignore file: 

* https://github.com/italia/developers.italia.it/blob/master/.gitignore


File di progetto
****************

Perché un progetto open source sia davvero in grado di generare l’impatto previsto è importante che all’interno del suo (o suoi) repository non vi siano solo i file contenenti il codice sorgente ma siano esposti -e documentati- tutti i file di “contorno” che permettono al codice di essere effettivamente compilato (laddove necessario) e eseguito. Capita spesso, purtroppo, di incappare in progetti che potrebbero essere interessanti e potenzialmente raccogliere numerosi contributori esterni per poi scoprire che risulta estremamente complesso o impossibile eseguire tale software all’interno del proprio ambiente di sviluppo. Ecco dunque che diventa fondamentale inserire all’interno del repository pubblico tutti i file (ad es., makefile) che permettono di effettuare queste operazioni di compilazione ed esecuzione corredati da documentazione puntuale. 
Esistono delle iniziative internazionali che si prodigano per illustrare le modalità di gestione di un progetto con la finalità di garantire sistemi di build riproducibili, come ad esempio https://reproducible-builds.org/. 
Nota bene: un progetto open source il cui funzionamento non possa essere correttamente riprodotto su altri sistemi al di fuori di quelli controllati dallo sviluppatore non solo diminuisce drasticamente il suo impatto ma viola anche parti di alcune licenze OSI compliant che prevedono che l’utente finale debba avere la possibilità di eseguire il software. In tal senso, è importante anche dichiarare l’eventuale dipendenza da sistemi proprietari sia nella documentazione che nel file publiccode.yml in modo da notificare l’utente finale e semplificare il suo processo di acquisizione.


Rilascio
~~~~~~~~

Una volta creato il repository pubblico è necessario pubblicare tutto il codice sorgente contenente i file già elencati più sopra. Se il software da pubblicare è già stato scritto in modalità “chiuso”, è importante riportare tutti i commit passati in modo da facilitare l’interazione con i contributori terzi. Effettuare un singolo commit in modalità “bulk” è considerata una cattiva pratica proprio perchè non rende trasparenti le singole modifiche effettuate nel tempo dagli sviluppatori.
I messaggi di commit sono importanti in quanto comunicano in breve quali operazioni sono state effettuate dallo sviluppatore. Esistono anche in questo caso diversi approcci e buone pratiche. Una di queste è Conventional Commits (https://www.conventionalcommits.org/en/v1.0.0/) che presenta il seguente formato: 

	<type>[optional scope]: <description>
	[optional body]
	[optional footer(s)]

Lo scopo è quello di trasmettere molte informazioni in modo semplice che siano leggibili e interpretabili sia da essere umani che da sistemi automatici. Anche in questo caso sarà dunque possibile sfruttare degli automatismi integrabili nelle piattaforme di code hosting o di Continuous Integration. 

Dopo il rilascio, tutte le operazioni successive che verranno effettuate saranno  pubbliche. Per prevenire la pubblicazione di altre informazioni sensibili oppure evitare di commettere errori prima del push sul repository è considerata una buona pratica l’utilizzo di sistemi di controllo pre-commit. Tali sistemi, come ad esempio https://pre-commit.com/, si possono installare negli ambienti locali di sviluppo e permettono di eseguire una serie di controlli prima di effettuare il commit o il push: in questo modo la pubblicazione viene bloccata fino a che il problema non verrà risolto.  
