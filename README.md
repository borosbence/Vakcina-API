# Vakcina API

A COVID oltások szervezéséhez szükséges Web API alkalmazás elkészítésére téged kértek fel. A feladathoz 4 HTTP végpontot kell elkészíteni, fontos, hogy a mellékelt leírás alapján működjön a kész Web API. A feladat megoldásához segítenek a kódsorban lévő TODO bejegyzéseket is!

Kezdeti lépések:

- Töltse fel a MySQL adatbázist a mellékelt _vp\_vakcina.sql_ fájl segítségével.
- Indítsa el a Postman-t és importálja be a _Vakcina.postman\_collection.json_ gyűjteményt.
- Nyissa meg a mellékelt Vakcina.API.sln fájlt a Visual Studio IDE programmal. Ellenőrizze, hogy a program elindulásakor, az adatok elérhetők a Postman _Darabszám_ lekérdezés segítségével. Válaszként &#39;100&#39;-at kell kapnia.

Kapcsolati adatok beállítása

**1.)** Hozzon létre egy ConnectionString bejegyzést az appsettings.json fájlban, használja fel a VakcinaContext osztályban található kapcsolati adatokat. (1 pont)

**2.)** Állítsa be a Startup.cs fájlban, hogy a program indulásakor az appsettings.json-ben definiált ConnectionStringet használj az alkalmazás. (1 pont)

DTO osztály készítése

Nyissa meg az _OltasDTO_ üres osztályt. Ez az osztály fogja reprezentálni az oltás rekordokat az adatbázisból.

**3.)** Készítsen hozzá tulajdonságokat, hogy az alábbi JSON objektumnak feleljen meg. Ügyeljen a névre és a hozzá tartozó érték típusára. (2 pont)

```json
{
  "taj_szam": 497602313,
  "vakcina": "AstraZeneca",
  "orvos": "Dr. Bubó Bodó",
  "datum_utolso": "2022-03-01T00:00:00",
  "oltas_szam": 2
}
```

**4.)** Készítsen egy beállító konstruktort, ami minden értékét beállítja a paraméterben megadott értékekkel. (1 pont)

OltasokController végpontok javítása

A Web API-nak jelenleg csak egyetlen erőforrása van, _oltasok_ néven. Fejezze be a már elkezdett végpontokat az _OltasokController_ osztályban! Használja segítségül a Postman gyűjteményben lévő lekérdezéseket.

_GetCount_ metódus

**5.)** A GetCount metódus jelenleg az összes oltás darab számát adja vissza. Módosítsa a metódust, hogy egy megadott dátumra (dátumidőre) szűkítse le a találatok számát. (1 pont)

**6.)** Módosítsa a végpont útvonal attribútumát úgy, hogy a dátum is szerepeljen az URL útvonalban, pl: _api/oltasok/2022-03-01_ (1 pont)

_GetOltasok_ metódus

**7.)** Javítsa ki a metódushoz tartozó láthatóságot, hogy kívülről is elérhető legyen. (1 pont)

**8.)** Adjon hozzá HTTP attribútumot, hogy GET metódussal lehessen elérni ezt a végpontot. (1 pont)

**9.)**. Alakítsa át végpont eredményét, rendezze őket dátum szerint, az eredményt alakítsa át az elkészített _OltasDTO_ típusra. Ellenőrizze, hogy a vakcina és az orvos neve is megjelenjen a lekérdezésnél! (3 pont)

Ha az orvos létrehoz egy oltást a kliens oldali front-end rendszeren, akkor a beteg TAJ számát, az orvos és a vakcina azonosítóját küldi el a Web API felé (_PostOltas_). Újabb megerősítő oltás esetén csak a beteg TAJ számát küldi el (_PutOltas_). Ha van elég mennyiségű a választott vakcinából, akkor az utolsó oltás dátuma a jelenlegi dátum lesz, legelső oltás esetén az oltás száma 1 lesz, újabb esetén eggyel növekszik. A vakcina mennyisége mindkét alkalommal csökken eggyel.

A következő 4 feladatot hajtsa végre a _PostOltas_ és a _PutOltas_ metóduson is.

**10.)** Ellenőrizze, hogy a kapott oltás létezik-e már az adatbázisban. (4 pont)
  a. Első oltás esetén, ha létezik az adott TAJ szám, akkor adja vissza az alábbi konfliktus hibaüzenetet: _"Ezzel a TAJ számmal már lett rögzítve oltás."_
  b. Megerősítő oltás esetén, az ellenkezőjét kell vizsgálni. Konfliktus esetén ezt adja vissza: _"Ezzel a TAJ még nem lett rögzítve oltás."_

**11.)** Vakcina keresése és mennyiség módosítása. (4 pont)
  a. Keresse ki az oltáshoz tartozó vakcina rekordot az elsődleges kulcsa alapján.
  b. Ha a vakcina mennyisége 0 vagy kisebb adjon 400 Bad Request hibaüzenetet az alábbi szöveggel: "Elfogyott a választott vakcina."

**12.)** Ha van elegendő vakcina, akkor csökkentse a megtalált vakcina mennyiségét eggyel. Az EntityState.Modified parancs frissíti majd az adatbázisban is a rekordot. (2 pont)

**13.)** Oltás értékeinek kiszámítása. (2 pont)
  a. Frissítse az oltás dátumát az jelenlegi dátumra.
  b. Állítsa be az oltás szám mennyiségét.


**14.)** A HTTP PUT végponton lévő 200 OK választ cserélje ki 204 No Content státuszkódra. (1 pont)

**Összesen** : 24 pont
