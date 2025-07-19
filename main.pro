% Copyright

implement main
    open core

domains
    % se definesc tipurile de date (mijloace de transport)
    tipMasina = dacia; bmw; audi.
    tipMotocicleta = cruiser; scooter; moped.
    tipATV = hecht; kawasaki; maverick.
    tipBicicleta = road; mountain; touring.
    tipBarca = sea_eagle; ribcraft; osprey.
    % se definesc structurile de informatii
    infoMasina = infoMasina(tipMasina Tip, integer An, integer Pret).
    infoMotocicleta = infoMotocicleta(tipMotocicleta Tip, integer An, integer Pret).
    infoATV = infoATV(tipATV Tip, integer An, integer Pret).
    infoBicicleta = infoBicicleta(tipBicicleta Tip, integer An, integer Pret).
    infoBarca = infoBarca(tipBarca Tip, integer An, integer Pret).

    % acest tip compus permite ca un obiect are(X, Y) sa contina orice mijloc de transport, nu doar masini
    tipMijlocTransport =
        infoMasina(tipMasina Tip, integer An, integer Pret);
        infoMotocicleta(tipMotocicleta Tip, integer An, integer Pret);
        infoATV(tipATV Tip, integer An, integer Pret);
        infoBicicleta(tipBicicleta Tip, integer An, integer Pret);
        infoBarca(tipBarca Tip, integer An, integer Pret).

class facts - fapteMasini % faptele de baza
    are : (string Persoana, tipMijlocTransport InfoMasina).

clauses
    run() :-
        console::init(),
        file::consult("..\\bunuri.txt", fapteMasini), % incarca faptele din fisierul "bunuri.txt"
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesori de masini]=------------------------\n"),
        are(X, infoMasina(_, _, _)),
        stdio::writef("% are masina \n", X),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesori de motociclete]=------------------------\n"),
        are(X, infoMotocicleta(_, _, _)),
        stdio::writef("% are motocicleta \n", X),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesori de ATV-uri]=------------------------\n"),
        are(X, infoATV(_, _, _)),
        stdio::writef("% are ATV \n", X),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesori de biciclete]=------------------------\n"),
        are(X, infoBicicleta(_, _, _)),
        stdio::writef("% are bicicleta \n", X),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesori de barci]=------------------------\n"),
        are(X, infoBarca(_, _, _)),
        stdio::writef("% are barca \n", X),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesori de Dacia]=------------------------\n"),
        are(X, infoMasina(dacia(), _, _)),
        stdio::writef("% are Dacia \n", X),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesori de BMW]=------------------------\n"),
        are(X, infoMasina(bmw(), _, _)),
        stdio::writef("% are BMW \n", X),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesori de Audi]=------------------------\n"),
        are(X, infoMasina(audi(), _, _)),
        stdio::writef("% are Audi \n", X),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesori de motocicleta Cruiser]=------------------------\n"),
        are(X, infoMotocicleta(cruiser(), _, _)),
        stdio::writef("% are motocicleta Cruiser \n", X),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesori de motocicleta Scooter]=------------------------\n"),
        are(X, infoMotocicleta(scooter(), _, _)),
        stdio::writef("% are motocicleta Scooter \n", X),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesori de motocicleta Moped]=------------------------\n"),
        are(X, infoMotocicleta(moped(), _, _)),
        stdio::writef("% are motocicleta Moped \n", X),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesori de ATV Hecht]=------------------------\n"),
        are(X, infoATV(hecht(), _, _)),
        stdio::writef("% are ATV Hecht \n", X),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesori de ATV Kawasaki]=------------------------\n"),
        are(X, infoATV(kawasaki(), _, _)),
        stdio::writef("% are ATV Kawasaki \n", X),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesori de ATV Maverick]=------------------------\n"),
        are(X, infoATV(maverick(), _, _)),
        stdio::writef("% are ATV Maverick \n", X),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesori de bicicleta road]=------------------------\n"),
        are(X, infoBicicleta(road(), _, _)),
        stdio::writef("% are bicicleta road \n", X),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesori de bicicleta mountain]=------------------------\n"),
        are(X, infoBicicleta(mountain(), _, _)),
        stdio::writef("% are bicicleta mountain \n", X),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesori de bicicleta touring]=------------------------\n"),
        are(X, infoBicicleta(touring(), _, _)),
        stdio::writef("% are bicicleta touring \n", X),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesori de barca Sea Eagle]=------------------------\n"),
        are(X, infoBarca(sea_eagle(), _, _)),
        stdio::writef("% are barca Sea Eagle \n", X),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesori de barca Ribcraft]=------------------------\n"),
        are(X, infoBarca(ribcraft(), _, _)),
        stdio::writef("% are barca Ribcraft \n", X),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesori de barca Osprey]=------------------------\n"),
        are(X, infoBarca(osprey(), _, _)),
        stdio::writef("% are barca Osprey \n", X),
        fail.

    run() :-
        stdio::write("\n------------------------=[Ce masini are Valentin?]=------------------------\n"),
        are("Valentin", infoMasina(Tip, _, _)),
        stdio::writef("Valentin are masina % \n", Tip),
        fail.

    run() :-
        stdio::write("\n------------------------=[Cat costa masinile lui Valentin?]=------------------------\n"),
        are("Valentin", infoMasina(Tip, _, Pret)),
        stdio::writef("% lui Valentin costa % euro \n", Tip, Pret),
        fail.

    run() :-
        stdio::write("\n------------------------=[Ce biciclete are Valentin?]=------------------------\n"),
        are("Valentin", infoBicicleta(Tip, _, _)),
        stdio::writef("Valentin are bicicleta % \n", Tip),
        fail.

    run() :-
        stdio::write("\n------------------------=[Cat costa bicicletele lui Valentin?]=------------------------\n"),
        are("Valentin", infoBicicleta(Tip, _, Pret)),
        stdio::writef("Bicicleta % a lui Valentin costa % euro \n", Tip, Pret),
        fail.

    run() :-
        stdio::write("\n------------------------=[Ce barci are Laura?]=------------------------\n"),
        are("Laura", infoBarca(Tip, _, _)),
        stdio::writef("Laura are barca % \n", Tip),
        fail.

    run() :-
        stdio::write("\n------------------------=[Cat costa barcile Laurei?]=------------------------\n"),
        are("Laura", infoBarca(Tip, _, Pret)),
        stdio::writef("Barca % a Laurei costa % euro \n", Tip, Pret),
        fail.

    run() :-
        stdio::write("\n------------------------=[Ce masini are Luiza?]=------------------------\n"),
        are("Luiza", infoMasina(Tip, _, _)),
        stdio::writef("Luiza are masina % \n", Tip),
        fail.

    run() :-
        stdio::write("\n------------------------=[Cat costa masinile Luizei?]=------------------------\n"),
        are("Luiza", infoMasina(Tip, _, Pret)),
        stdio::writef("% Luizei costa % euro \n", Tip, Pret),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesorii de masini scumpe]=------------------------\n"),
        are(X, infoMasina(Tip, _, Pret)),
        Pret > 10000,
        stdio::writef("% are % cu pretul de % euro\n", X, Tip, Pret),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesorii de masini ieftine]=------------------------\n"),
        are(X, infoMasina(Tip, _, Pret)),
        Pret < 10000,
        stdio::writef("% are % cu pretul de % euro\n", X, Tip, Pret),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesorii de motociclete scumpe]=------------------------\n"),
        are(X, infoMotocicleta(Tip, _, Pret)),
        Pret > 1500,
        stdio::writef("% are motocicleta % cu pretul de % euro\n", X, Tip, Pret),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesorii de motociclete ieftine]=------------------------\n"),
        are(X, infoMotocicleta(Tip, _, Pret)),
        Pret < 1500,
        stdio::writef("% are motocicleta % cu pretul de % euro\n", X, Tip, Pret),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesorii de biciclete scumpe]=------------------------\n"),
        are(X, infoBicicleta(Tip, _, Pret)),
        Pret > 300,
        stdio::writef("% are bicicleta % cu pretul de % euro\n", X, Tip, Pret),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesorii de biciclete ieftine]=------------------------\n"),
        are(X, infoBicicleta(Tip, _, Pret)),
        Pret < 300,
        stdio::writef("% are bicicleta % cu pretul de % euro\n", X, Tip, Pret),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesorii de ATV-uri scumpe]=------------------------\n"),
        are(X, infoATV(Tip, _, Pret)),
        Pret > 8000,
        stdio::writef("% are ATV-ul % cu pretul de % euro\n", X, Tip, Pret),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesorii de ATV-uri ieftine]=------------------------\n"),
        are(X, infoATV(Tip, _, Pret)),
        Pret < 8000,
        stdio::writef("% are ATV-ul % cu pretul de % euro\n", X, Tip, Pret),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesorii de barci scumpe]=------------------------\n"),
        are(X, infoBarca(Tip, _, Pret)),
        Pret > 5000,
        stdio::writef("% are barca % cu pretul de % euro\n", X, Tip, Pret),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesorii de barci ieftine]=------------------------\n"),
        are(X, infoBarca(Tip, _, Pret)),
        Pret < 5000,
        stdio::writef("% are barca % cu pretul de % euro\n", X, Tip, Pret),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesorii de obiecte scumpe]=------------------------\n"),
        are(X, infoMasina(Tip, _, Pret)),
        Pret > 10000,
        stdio::writef("% are % cu pretul de % euro\n", X, Tip, Pret),
        fail.
    run() :-
        are(X, infoMotocicleta(Tip, _, Pret)),
        Pret > 1500,
        stdio::writef("% are motocicleta % cu pretul de % euro\n", X, Tip, Pret),
        fail.
    run() :-
        are(X, infoATV(Tip, _, Pret)),
        Pret > 8000,
        stdio::writef("% are ATV-ul % cu pretul de % euro\n", X, Tip, Pret),
        fail.
    run() :-
        are(X, infoBicicleta(Tip, _, Pret)),
        Pret > 300,
        stdio::writef("% are bicicleta % cu pretul de % euro\n", X, Tip, Pret),
        fail.
    run() :-
        are(X, infoBarca(Tip, _, Pret)),
        Pret > 5000,
        stdio::writef("% are barca % cu pretul de % euro\n", X, Tip, Pret),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesorii de obiecte ieftine]=------------------------\n"),
        are(X, infoMasina(Tip, _, Pret)),
        Pret < 10000,
        stdio::writef("% are % cu pretul de % euro\n", X, Tip, Pret),
        fail.
    run() :-
        are(X, infoMotocicleta(Tip, _, Pret)),
        Pret < 1500,
        stdio::writef("% are motocicleta % cu pretul de % euro\n", X, Tip, Pret),
        fail.
    run() :-
        are(X, infoBicicleta(Tip, _, Pret)),
        Pret < 300,
        stdio::writef("% are bicicleta % cu pretul de % euro\n", X, Tip, Pret),
        fail.
    run() :-
        are(X, infoATV(Tip, _, Pret)),
        Pret < 8000,
        stdio::writef("% are ATV-ul % cu pretul de % euro\n", X, Tip, Pret),
        fail.
    run() :-
        are(X, infoBarca(Tip, _, Pret)),
        Pret < 5000,
        stdio::writef("% are barca % cu pretul de % euro\n", X, Tip, Pret),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesorii ce au investit in obiectele lor mai mult de 10000 euro]=------------------------\n"),
        are(X, infoMasina(Tip, _, Pret)),
        Pret > 10000,
        stdio::writef("% a investit in % suma de % euro\n", X, Tip, Pret),
        fail.
    run() :-
        are(X, infoMotocicleta(Tip, _, Pret)),
        Pret > 10000,
        stdio::writef("% a investit in motocicleta % suma de % euro\n", X, Tip, Pret),
        fail.
    run() :-
        are(X, infoATV(Tip, _, Pret)),
        Pret > 10000,
        stdio::writef("% a investit in ATV-ul % suma de % euro\n", X, Tip, Pret),
        fail.
    run() :-
        are(X, infoBicicleta(Tip, _, Pret)),
        Pret > 10000,
        stdio::writef("% a investit in bicicleta % suma de % euro\n", X, Tip, Pret),
        fail.
    run() :-
        are(X, infoBarca(Tip, _, Pret)),
        Pret > 10000,
        stdio::writef("% a investit in barca % suma de % euro\n", X, Tip, Pret),
        fail.

    run() :-
        stdio::write("\n------------------------=[Posesorii ce au investit in obiectele lor mai putin de 10000 euro]=------------------------\n"),
        are(X, infoMasina(Tip, _, Pret)),
        Pret < 10000,
        stdio::writef("% a investit in % suma de % euro\n", X, Tip, Pret),
        fail.
    run() :-
        are(X, infoMotocicleta(Tip, _, Pret)),
        Pret < 10000,
        stdio::writef("% a investit in motocicleta % suma de % euro\n", X, Tip, Pret),
        fail.
    run() :-
        are(X, infoATV(Tip, _, Pret)),
        Pret < 10000,
        stdio::writef("% a investit in ATV-ul % suma de % euro\n", X, Tip, Pret),
        fail.
    run() :-
        are(X, infoBicicleta(Tip, _, Pret)),
        Pret < 10000,
        stdio::writef("% a investit in bicicleta % suma de % euro\n", X, Tip, Pret),
        fail.
    run() :-
        are(X, infoBarca(Tip, _, Pret)),
        Pret < 10000,
        stdio::writef("% a investit in barca % suma de % euro\n", X, Tip, Pret),
        fail.

    run() :-
        stdio::write("\nSfarsitul testarii\n"),
        stdio::write("Apasati Enter pentru a iesi..."),
        _ = stdio::readLine().

end implement main

goal
    console::runUtf8(main::run).
