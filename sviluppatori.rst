Per gli sviluppatori
====================

Questo capitolo è rivolto agli sviluppatori che lavorano con il software
pubblico. Si presuppone una conoscenza di base degli strumenti di lavoro come
git, linguaggi di programmazione e strumenti di integrazione, ma non di
metodologie avanzate o collaborative, come il cosiddetto “GitFlow” o come saper
gestire progetti software pubblici.

In questa sezione ci sarà una particolare attenzione dedicata a come scrivere
e gestire codice in maniera sicura, in particolar modo considerando gli
accorgimenti necessari a separare lo strato di autenticazione ai servizi (ad
es. le credenziali di un database) dalla logica applicativa, e tutte le
migliori best practice. A differenza di quanto si possa credere infatti, la
pubblicazione del codice sorgente, se eseguita in maniera corretta, aiuta
a ridurre la superficie di attacco di un possibile malintenzionato.

.. toctree::
	:caption: Indice capitolo sviluppatori

	sviluppatori/introduzione-al-software-libero-nella-PA.rst
	sviluppatori/quando-rilasciare-mio-software.rst
	sviluppatori/rilasciare-software-open-source.rst
	sviluppatori/gestire-software-ciclo-vita.rst
	sviluppatori/contribuire-software-open-source.rst
