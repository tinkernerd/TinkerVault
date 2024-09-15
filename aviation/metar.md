---
title: Live METAR Data
topic:
  - Weather
  - Aviation
---
# METAR Data for Multiple Airports
<style>
    table {
        width: 100%;
        border-collapse: collapse;
    }
    td, th {
        border: 1px solid #ddd;
        padding: 8px;
    }
    pre {
        white-space: pre-wrap; /* Wrap text within the cell */
    }
</style>
!!! note
    The table below shows the latest METAR data for selected airports. This data is refreshed every hour.

| Airport | METAR                                 |
| ------- | ------------------------------------- |
| BEH     | <pre id="metar-KBEH">Loading...</pre> |
| MDW     | <pre id="metar-KMDW">Loading...</pre> |
| ORD     | <pre id="metar-KORD">Loading...</pre> |
| SBN     | <pre id="metar-KSBN">Loading...</pre> |

<script>
    const airports = ['KBEH', 'KMDW', 'KSBN', 'KORD']; // Add your list of airports here
    const apiKey = 'pOeQWCeTA9r2lfI4p0_YUlYmNo-qsKXGlCt-aU1zWNY'; // Replace with your actual API key

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
    setInterval(updateMetar, 3600000);

    // Initial update when page loads
    updateMetar();
</script>
        
