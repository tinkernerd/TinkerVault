<%*
const githubRepo = tp.frontmatter.Repo || "No GitHub repository provided";
const description = tp.frontmatter.description || "No description provided";

// Convert the repo to lowercase
const githubRepoLower = githubRepo.toLowerCase();

let calloutContent;

if (githubRepo !== "No GitHub repository provided" && githubRepo.includes('/')) {
    const repoLink = `https://github.com/${githubRepoLower}`;

    calloutContent = `
> [!Github] [${githubRepo}](${repoLink})
> ${description}
    `;
} else {
    calloutContent = `
> [!Github]
> **Error**: Please provide a valid 'Repo' metadata in the format 'username/repo'.
    `;
}

tR += calloutContent;
%>
