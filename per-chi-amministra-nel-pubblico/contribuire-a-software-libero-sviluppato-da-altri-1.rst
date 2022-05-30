.. _contribuire-a-software-libero-sviluppato-da-altri-1:

Contribuire a software libero sviluppato da altri
=================================================

.. _relazioni-con-i-maintainer-del-software-1:

Relazioni con i maintainer del software
---------------------------------------

Utilizzare, ed eventualmente, contribuire, al *software* libero
disponibile è una pratica molto frequente, fortemente agevolata dal
modello di riuso descritto dal CAD.

Quando vi è l’esigenza di un componente o di un applicativo per la
propria organizzazione, si consiglia di agire secondo questo schema:

1. analizzare l’esigenza dell’applicativo o del componente software di
   cui si ha bisogno,

2. valutare se valga la pena svilupparlo internamente da zero o se sia
   meglio partire da qualche *software* libero già esistente,

3. nel caso di sviluppo partendo da un software libero esistente (ad es.
   trovato sul `Catalogo open source della Pubblica
   Amministrazione <https://developers.italia.it/it/software.html>`__),
   lavorare sul codice integrando e sviluppando la soluzione già
   rilasciata,

4. a questo punto è possibile decidere se mantenere un fork con il
   codice modificato o se invece sia preferibile fare una pull request
   sul repository di partenza.

In seguito valuteremo il caso in cui si decida di partire da una
soluzione a codice aperto esistente e quindi si voglia effettuare una
pull request con le evoluzioni realizzate. Questa soluzione rappresenta
la via preferibile in quanto permette da un lato di abbattere il futuro
costo di manutenzione del software realizzato (in termini di TCO - Total
Cost Of Ownership - come specificato dall'art. 68 del CAD) e dall’altro
perché in questo modo si allargherà la *user base* della soluzione
software customizzata.

Quando si prosegue al riuso di un software è bene contattare e segnalare
il riutilizzo ai maintainer del software stesso. Essi, infatti, possono
così fornire suggerimenti e consigli su come implementare una soluzione
che utilizzi il software e possono dare indicazioni circa la struttura
architetturale e l’organizzazione del codice da seguire nel caso si
vogliano inviare dei contributi.

In caso di scoperta di un problema di sicurezza, in particolar modo, è
importante effettuare una segnalazione tempestiva ai maintainer del
codice in maniera privata, per permettere loro di correggere la
vulnerabilità in tempi brevi e informare gli altri utilizzatori del
software della necessità di aggiornamento.

Riutilizzo
----------

Il riutilizzo di una soluzione di *software* libero, può avvenire
liberamente per gli scopi e con le modalità descritte nella licenza
applicata al software stesso. In caso di riutilizzo l’unico legame
formale tra cedente e acquirente della soluzione è rappresentato dalla
licenza software applicata alla soluzione.
