---
title: JavaScript Examples
type: Resource
tags:
  - javascript
---
# JS Examples
## not my work badge
```dataviewjs
const source = dv.current().source || "No source provided";
const author = dv.current().author || "Unknown author";

let noteBlock = `<div class="callout">
    <strong>Hey, this isn't my work.</strong>
    Feel free to check out the <a href="${source}" target="_blank">original article</a>, by ${author}.
</div>`;

dv.el("div", noteBlock);
```


```js
const source = dv.current().source || "No source provided";
const author = dv.current().author || "Unknown author";

let noteBlock = `<div class="callout">
    <strong>Hey, this isn't my work.</strong>
    Feel free to check out the <a href="${source}" target="_blank">original article</a>, by ${author}.
</div>`;

dv.el("div", noteBlock);
```

## Metar  Table using API
```dataviewjs
const airports = ['KBEH', 'KMDW', 'KSBN', 'KORD']; // List of airports
const apiKey = 'pOeQWCeTA9r2lfI4p0_YUlYmNo-qsKXGlCt-aU1zWNY'; // Replace with your actual API key

// Create table HTML structure and add to the view
let table = `<table>
    <thead>
        <tr>
            <th>Airport</th>
            <th>METAR</th>
        </tr>
    </thead>
    <tbody>
        ${airports.map(airport => `<tr><td>${airport}</td><td><pre id="metar-${airport}">Loading...</pre></td></tr>`).join('')}
    </tbody>
</table>`;

dv.el("div", table);

// Fetch METAR data for each airport and update the table
async function fetchMetar(airport) {
    const response = await fetch(`https://avwx.rest/api/metar/${airport}?token=${apiKey}`);
    if (response.ok) {
        const data = await response.json();
        return data.sanitized;
    }
    return 'Unable to fetch METAR';
}

async function updateMetar() {
    for (const airport of airports) {
        const metar = await fetchMetar(airport);
        document.getElementById(`metar-${airport}`).textContent = metar;
    }
}

// Update METAR every hour (3600000 ms)
//setInterval(updateMetar, 3600000);

// Initial update when the page loads
updateMetar();
```
``` js
const airports = ['KBEH', 'KMDW', 'KSBN', 'KORD']; // List of airports
const apiKey = 'pOeQWCeTA9r2lfI4p0_YUlYmNo-qsKXGlCt-aU1zWNY'; // Replace with your actual API key

// Create table HTML structure and add to the view
let table = `<table>
    <thead>
        <tr>
            <th>Airport</th>
            <th>METAR</th>
        </tr>
    </thead>
    <tbody>
        ${airports.map(airport => `<tr><td>${airport}</td><td><pre id="metar-${airport}">Loading...</pre></td></tr>`).join('')}
    </tbody>
</table>`;

dv.el("div", table);

// Fetch METAR data for each airport and update the table
async function fetchMetar(airport) {
    const response = await fetch(`https://avwx.rest/api/metar/${airport}?token=${apiKey}`);
    if (response.ok) {
        const data = await response.json();
        return data.sanitized;
    }
    return 'Unable to fetch METAR';
}

async function updateMetar() {
    for (const airport of airports) {
        const metar = await fetchMetar(airport);
        document.getElementById(`metar-${airport}`).textContent = metar;
    }
}

// Update METAR every hour (3600000 ms)
//setInterval(updateMetar, 3600000);

// Initial update when the page loads
updateMetar();```
## 🕊️  Bible Verse

```dataviewjs
const response = await fetch("https://labs.bible.org/api/?passage=random&type=json");
if (response.ok) {
    const verse = await response.json();
    const bibleVerse = verse[0];
    dv.span(`**${bibleVerse.bookname} ${bibleVerse.chapter}:${bibleVerse.verse}** - "${bibleVerse.text}"`);
} else {
    dv.span("Error fetching Bible verse.");
}
```
```javascript
const response = await fetch("https://labs.bible.org/api/?passage=random&type=json");
if (response.ok) {
    const verse = await response.json();
    const bibleVerse = verse[0];
    dv.span(`**${bibleVerse.bookname} ${bibleVerse.chapter}:${bibleVerse.verse}** - "${bibleVerse.text}"`);
} else {
    dv.span("Error fetching Bible verse.");
}
```
