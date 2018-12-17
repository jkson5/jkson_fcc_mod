# jkson_fcc_mod

[*** VERSIONE ITALIANA ***](http://github.com/jkson5/jkson_fcc_mod/blob/master/README_Italiana.md)
Per forzare le impostazioni SDR Mavic Pro o P4Pv2 come FCC, Boost, force_2.3G o force_2.5G, possiamo usare i comandi interni. Questi comandi imposteranno i parametri radio con qualsiasi sistema operativo per smartphone, qualsiasi programma (ad es. Litchi) e persino senza smartphone. Perché funzionerà sul drone localmente. Devi applicare questa mod solo per il drone. RC si sincronizzerà.

Se si desidera utilizzare force23 o force25, è necessario prima attivare RC. Altrimenti la frequenza non cambierà.

Questa mod funziona solo per il Mavic PRO / Platinum (1.04.0300 e versioni precedenti) e Phantom4Pv2 (1.00.22.00 e versioni precedenti)
Come installare (Windows)

    Si prega di scaricare questo tool da qui: https://github.com/jkson5/jkson_fcc_mod/archive/master.zip) e decomprimerlo da in una cartella di vostra scelta.

    Collegare il Mavic PRO o P4Pv2 con cavo USB e accendetelo.

    Scaricare DUMLDore da qui https://github.com/jezzab/DUMLdore/releases/download/v3.15/DUMLdoreV3.zip e avviarlo. Selezionare "ADB ENABLE".

    Controlla in Gestione dispositivi di Windows se ci sono dei dispositivi DJI non riconosciuti. Se sì, decomprimere ADBDriver.zip e provare a forzare il driver di aggiornamento per questo dispositivo in questo modo - Aggiorna software driver> Esplora il mio computer> Fammi scegliere da un elenco> Mostra tutto> successivo> Disco> sfoglia e seleziona android_winusb.inf in scompattato Cartella ADBDriver.

    Nella cartella mod eseguire install_mod.bat e seguire le istruzioni nella riga di comando

Come si usa

Dopo la procedura di installazione, sarà possibile scegliere diverse opzioni, a seconda del modello di drone. Le opzioni FIXED FCC o Boost imposteranno la modalità persistente e avranno effetto dopo il riavvio.

Per il Mavic PRO / Platinum è disponibile pure la modalità "selettore di loop". Significa che puoi selezionare le modalità in volo, in loop. Per passare alla modalità successiva è necessario tenere premuto il tasto "pausa" e premere contemporaneamente una volta il pulsante sul lato sinistro (C1). Il sistema consente di modificare la modalità non più velocemente di ogni 5 secondi.

La sequenza è CE> FCC> Boost> Ripristino SDR. "Ripristino SDR" significa che l'SDR si riavvierà con la modalità predefinita. Si prega di tenere presente che quando l'SDR verrà riavviato, la connessione andrà persa per alcuni secondi (~ 3-4s) e il drone avvierà la procedura failsafe, ad es. RETURN TO HOME.
Come verificare la modalità FCC

Dovresti avviare DJI GO, andare alle impostazioni HD e guardare al grafico di frequenza. Se la linea ~ 1km è un po 'sotto i 90dBm, sei in modalità CE. Se la linea è superiore a 90 dBm, si è in modalità FCC. Modalità boost (1.5W) è possibile eseguire la prova solo con il powermeter radio tipo questo https://www.banggood.com/custlink/mGDmDz1HnV o con il volo di prova. Assicurati di avere una batteria sufficiente per il volo di ritorno.

Per ringraziare o per contattarmi

PayPal ed email - evgeniychuiko@gmail.com Telegram messenger @ jkson5, o mandami una email, ma per favore inizia con "grazie" a PayPal. Ho trascorso alcuni mesi per realizzare questa mod e ne dedicherò di più con il tuo supporto. Grazie in anticipo!

Come rimuovere jkson mod
Devi ripetere la procedura di installazione. Troverete l'opzione "Cancella mod" nel passaggio successivo dopo la selezione del dispositivo. 


## DeejayeyeHackingClub information repos aka "The OG's" (Original Gangsters)

Special thanks to @jcase, @jan2642, @mefisto, @jezzab

[http://dji.retroroms.info](http://dji.retroroms.info) - "Wiki"

https://github.com/fvantienen/dji_rev - This repository contains tools for reverse engineering DJI product firmware images.

https://github.com/hdnes/pyduml - Assistant-less firmware pushes and DUMLHacks referred to as DUMBHerring when used with "fireworks.tar" from RedHerring. DJI silently changes Assistant? great... we will just stop using it.

https://github.com/MAVProxyUser/P0VsRedHerring - RedHerring, aka "July 4th Independence Day exploit", "FTPD directory transversal 0day", etc. (Requires Assistant). We all needed a public root exploit... why not burn some 0day?

https://github.com/MAVProxyUser/dji_system.bin - Current Archive of dji_system.bin files that compose firmware updates referenced by MD5 sum. These can be used to upgrade and downgrade, and root your I2, P4, Mavic, Spark, Goggles, and Mavic RC to your hearts content. (Use with pyduml or DUMLDore)

https://github.com/MAVProxyUser/firm_cache - Extracted contents of dji_system.bin, in the future will be used to mix and match pieces of firmware for custom upgrade files. This repo was previously private... it is now open.

https://github.com/MAVProxyUser/DUMLrub - Ruby port of PyDUML, and firmware cherry picking tool. Allows rolling of custom firmware images.

https://github.com/jezzab/DUMLdore - Even windows users need some love, so DUMLDore was created to help archive, and flash dji_system.bin files on windows platforms.

https://github.com/MAVProxyUser/DJI_ftpd_aes_unscramble - DJI has modified the GPL Busybox ftpd on Mavic, Spark, & Inspire 2 to include AES scrambling of downloaded files... this tool will reverse the scrambling
