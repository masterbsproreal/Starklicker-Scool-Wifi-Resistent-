# Star Klicker

## Bestenliste verbinden

Die Bestenliste ist noch nicht aktiv. Dafür braucht das Spiel ein kostenloses Supabase-Projekt als gemeinsamen Online-Speicher. Du brauchst dafür keinen Login im Spiel und kein Passwort für Mitspieler.

### 1. Supabase-Projekt erstellen

1. Öffne [supabase.com](https://supabase.com) und melde dich an.
2. Wähle **New project** und erstelle ein Projekt.
3. Warte, bis das Projekt fertig eingerichtet ist.

### 2. Bestenlisten-Tabelle erstellen

1. Öffne im Supabase-Projekt links **SQL Editor**.
2. Wähle **New query**.
3. Öffne hier im Projekt die Datei [leaderboard.sql](leaderboard.sql), markiere den gesamten Inhalt und kopiere ihn.
4. Füge den Inhalt in die Supabase-Abfrage ein und drücke **Run**.

### 3. Projektwerte in die Website eintragen

1. Öffne in Supabase **Project Settings → API Keys**.
2. Kopiere die **Project URL**.
3. Kopiere den öffentlichen **anon / legacy anon key**. Er ist ein öffentlicher Schlüssel und darf im Spiel verwendet werden.
4. Öffne hier im Projekt die Datei [leaderboard-config.js](leaderboard-config.js). Trage die Werte zwischen den Anführungszeichen ein:

```js
globalThis.StarClickerLeaderboardConfig = {
	supabaseUrl: 'HIER DIE PROJECT URL EINFÜGEN',
	supabaseAnonKey: 'HIER DEN ANON KEY EINFÜGEN'
};
```

Verwende **niemals** den `service_role`- oder Secret-Key. Diese Schlüssel geben zu viele Rechte und dürfen nicht in eine Website-Datei.

### 4. Website aktualisieren

Speichere `leaderboard-config.js` und veröffentliche die Änderung auf GitHub Pages. Danach die Website neu laden. Wenn die Verbindung stimmt, erscheint die gemeinsame Top-10-Liste.

Eingetragen werden nur Spitzname (maximal 16 Zeichen) und aktueller Punktestand. Verwende keinen echten Namen oder andere persönliche Daten. Da das Spiel die Punktzahl direkt aus dem Browser sendet, ist die Bestenliste für lockeren Wettbewerb gedacht und nicht manipulationssicher.