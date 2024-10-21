---topic:
  - Weather
  - Aviation
type: Resource
tags:
  - aviation
  - weather
status: Active
dateCreated: 2024-09-21T00:14:00
---
# METAR Data for Multiple Airports

>[!INFO]
> The table below shows the latest METAR data for selected airports. This data is refreshed every hour.

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