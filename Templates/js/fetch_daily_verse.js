module.exports = async (tp) => {
  const url = "https://beta.ourmanna.com/api/v1/get?format=json&order=daily";
  const response = await tp.system.silent(() => fetch(url));
  const data = await response.json();
  const verseReference = data.verse.details.reference;
  const verseText = data.verse.details.text;
  return `[${verseReference}](${url}) ${verseText}`;
};
