---
title: Github
---
# Signing github releases
[MyHoneyBadger/awesome-github-wiki](https://github.com/MyHoneyBadger/awesome-github-wiki)
[Signed Commits. How to get the shiny “Verified” badge… | by Izaak Schroeder | Bootstart | Medium](https://medium.com/bootstart/signed-commits-ec2cab9e7254)
[Signing commits - GitHub Docs](https://docs.github.com/en/authentication/managing-commit-signature-verification/signing-commits)
[Signing-github-releases.md](https://gist.github.com/hollodotme/edc4d4613ca602e70d242eae8b0a25cc) comes from [Holger Woltersdorf/Hollodotme on Github.](https://gist.github.com/hollodotme)
```bash
git config --global user.signingkey you@email.domain

# Now you can make a release as normal, but with a signed commit.
git tag -s v0.1 -m "the best version yet"

# The only difference here is the -s. 
# Before you upload the tag be sure to check your signature with 
git tag --verify v0.1.

# Push it
git push --tags origin
```

