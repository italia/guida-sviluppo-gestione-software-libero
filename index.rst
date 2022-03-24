**Guida allo sviluppo e gestione di software libero**

.. highlights ::

  **Buone pratiche, suggerimenti e tecniche utili allo sviluppo di
  software open source per chi progetta, realizza e gestisce i servizi
  pubblici digitali italiani.**

**→ OBIETTIVI DEL DOCUMENTO**

*Questo documento si pone l’obiettivo di fornire agli attori della
trasformazione digitale delle buone pratiche di gestione di progetti e
indicare strumenti che possono essere utilizzati nello sviluppo di
software open source.*

`Introduzione <#introduzione>`__\ **0**

`Introduzione al software libero nella Pubblica
Amministrazione <#introduzione-al-software-libero-nella-pubblica-amministrazione>`__
0

`1. Per le responsabili politiche e i responsabili
politici <#per-le-responsabili-politiche-e-i-responsabili-politici>`__\ **0**

`A chi si rivolge questo capitolo <#a-chi-si-rivolge-questo-capitolo>`__
0

`I vantaggi dell’open source <#i-vantaggi-dellopen-source>`__ 0

`Gli svantaggi del software
proprietario <#gli-svantaggi-del-software-proprietario>`__ 0

`I requisiti del software
pubblico <#i-requisiti-del-software-pubblico>`__ 0

`I vantaggi di riutilizzare un software open
source <#i-vantaggi-di-riutilizzare-un-software-open-source>`__ 0

`Quali sono gli aspetti da conoscere della gestione del ciclo di vita di
un
software? <#quali-sono-gli-aspetti-da-conoscere-della-gestione-del-ciclo-di-vita-di-un-software>`__
0

`Accettare segnalazioni e contributi da
terzi <#accettare-segnalazioni-e-contributi-da-terzi>`__ 0

`Contribuire al software open source sviluppato da
altri <#contribuire-al-software-open-source-sviluppato-da-altri>`__ 0

`Relazioni con i maintainer del
software <#relazioni-con-i-maintainer-del-software>`__ 0

`Cosa può fare in concreto chi ha responsabilità
politiche <#cosa-può-fare-in-concreto-chi-ha-responsabilità-politiche>`__
0

`2. Per gli amministratori
pubblici <#per-gli-amministratori-pubblici>`__\ **0**

`A chi si rivolge questo
capitolo? <#a-chi-si-rivolge-questo-capitolo-1>`__ 0

`I vantaggi del modello open
source <#i-vantaggi-del-modello-open-source>`__ 0

`Norme per l’acquisizione di software per la Pubblica
Amministrazione <#norme-per-lacquisizione-di-software-per-la-pubblica-amministrazione>`__
0

`Le fasi di sviluppo e riuso di
software <#le-fasi-di-sviluppo-e-riuso-di-software>`__ 0

`Rilasciare un nuovo software open
source <#rilasciare-un-nuovo-software-open-source>`__ 0

`Scegliere una piattaforma di code
hosting <#scegliere-una-piattaforma-di-code-hosting>`__ 0

`GitHub <#_dpdl7c23w7dm>`__ 0

`GitLab <#gitlab>`__ 0

`Bitbucket <#bitbucket>`__ 0

`Convertire un utente in
organizzazione <#convertire-un-utente-in-organizzazione>`__ 0

`GitHub <#github-1>`__ 0

`Aggiungere l’organizzazione a Developers
Italia <#aggiungere-lorganizzazione-a-developers-italia>`__ 0

`Scegliere il nome del progetto <#scegliere-il-nome-del-progetto>`__ 0

`Scegliere e dichiarare la
licenza <#scegliere-e-dichiarare-la-licenza>`__ 0

`Accettare dei contributi dopo il
rilascio <#accettare-dei-contributi-dopo-il-rilascio>`__ 0

`Gestire un software nel suo ciclo di
vita <#gestire-un-software-nel-suo-ciclo-di-vita>`__ 0

`Gestione delle segnalazioni <#gestione-delle-segnalazioni>`__ 0

`Gestione delle richieste di
modifica <#gestione-delle-richieste-di-modifica>`__ 0

`Dichiarazione di obsolescenza di un
progetto <#dichiarazione-di-obsolescenza-di-un-progetto>`__ 0

`Rendere obsoleto (“deprecate”) un progetto che nessuno
usa <#rendere-obsoleto-deprecate-un-progetto-che-nessuno-usa>`__ 0

`Contribuire al software open source sviluppato da
altri <#contribuire-al-software-open-source-sviluppato-da-altri-1>`__ 0

`Relazioni con i maintainer del
software <#relazioni-con-i-maintainer-del-software-1>`__ 0

`Riutilizzo <#riutilizzo>`__ 0

`3 . Per chi sviluppa il
software <#per-chi-sviluppa-il-software>`__\ **0**

`A chi si rivolge questo
capitolo? <#a-chi-si-rivolge-questo-capitolo-2>`__ 0

`Quando devo rilasciare il mio
software? <#quando-devo-rilasciare-il-mio-software>`__ 0

`Rilasciare un software open
source <#rilasciare-un-software-open-source>`__ 0

`Preparare il progetto <#preparare-il-progetto>`__ 0

`Gestione delle dipendenze <#gestione-delle-dipendenze>`__ 0

`Responsabilità di terzi <#responsabilità-di-terzi>`__ 0

`I file da inserire nel
repository <#i-file-da-inserire-nel-repository>`__ 0

`README <#readme>`__ 0

`AUTHORS <#authors>`__ 0

`publiccode.yml <#publiccode.yml>`__ 0

`LICENSE <#license>`__ 0

`File di progetto <#file-di-progetto>`__ 0

`Rilascio <#rilascio>`__ 0

`Gestire un software nel suo ciclo di
vita <#gestire-un-software-nel-suo-ciclo-di-vita-1>`__ 0

`L'importanza del ruolo del
maintainer <#limportanza-del-ruolo-del-maintainer>`__ 0

`Versionamento e rilasci <#versionamento-e-rilasci>`__ 0

`Issue <#issue>`__ 0

`Strumenti di tracking esterni <#strumenti-di-tracking-esterni>`__ 0

`Richiesta di aiuto <#richiesta-di-aiuto>`__ 0

`Segnalazioni di bug <#segnalazioni-di-bug>`__ 0

`Richieste di miglioramento (Feature
request) <#richieste-di-miglioramento-feature-request>`__ 0

`Gestione delle issue <#gestione-delle-issue>`__ 0

`Accettare i contributi dopo il
rilascio <#accettare-i-contributi-dopo-il-rilascio>`__ 0

`Integrazione Continua (Continuous
Integration) <#integrazione-continua-continuous-integration>`__ 0

`Contribuire al software open source sviluppato da
altri <#contribuire-al-software-open-source-sviluppato-da-altri-2>`__ 0

`Relazioni con i maintainer del
software <#relazioni-con-i-maintainer-del-software-2>`__ 0

`Effettuare una contribuzione <#effettuare-una-contribuzione>`__ 0

`Gestione della community <#gestione-della-community>`__ 0

`Bibliografia / Sitografia <#bibliografia-sitografia>`__\ **0**

.. toctree::
  :maxdepth: 3
  :caption: Indice dei contenuti

  introduzione.rst
  per-le-responsabili-politiche-e-i-responsabili-politici.rst
  per-gli-amministratori-pubblici.rst
  per-chi-sviluppa-il-software.rst
  bibliografia-sitografia.rst
