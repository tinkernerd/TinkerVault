---
title: Signing GitHub
description: Digitally signing your GitHub releases and commits adds a layer of security and authenticity, ensuring that your code hasn't been tampered with. This guide provides resources and examples to help you sign your commits and tags for GitHub releases.
type: Resource
topic:
  - Github
  - Git
  - Security
  - CyberSecurity
category: Info Tech
created_at: 2025-02-06T19:03:55-05:00
modified_at: 2025-02-06T19:07:22-05:00
---
Digitally signing your GitHub releases and commits adds a layer of security and authenticity, ensuring that your code hasn't been tampered with. This guide provides resources and examples to help you sign your commits and tags for GitHub releases.
## **📚 Resources**
- [MyHoneyBadger/awesome-github-wiki](https://github.com/MyHoneyBadger/awesome-github-wiki)  
  A curated list of resources and tips for using GitHub effectively.

- [Signed Commits: How to Get the Shiny “Verified” Badge | Medium](https://medium.com/bootstart/signed-commits-ec2cab9e7254)  
  Learn how to sign commits and earn the "Verified" badge on GitHub.

- [Signing Commits - GitHub Docs](https://docs.github.com/en/authentication/managing-commit-signature-verification/signing-commits)  
  Official GitHub documentation on managing commit signature verification.

- [Signing GitHub Releases - Gist by Holger Woltersdorf](https://gist.github.com/hollodotme/edc4d4613ca602e70d242eae8b0a25cc)  
  A helpful guide to signing releases, contributed by [Holger Woltersdorf](https://gist.github.com/hollodotme).

---

## **🔧 Why Sign Commits and Releases?**
- **Security**: Ensure the code comes from a trusted source.
- **Integrity**: Protect against tampering by verifying the cryptographic signature.
- **Recognition**: Gain the "Verified" badge for commits and releases on GitHub.

---

## **💻 How to Sign Commits and Tags**

### **Step 1: Configure Your Signing Key**
Set up your signing key globally:
```sh
git config --global user.signingkey you@email.domain
```


# Signing github releases
- [MyHoneyBadger/awesome-github-wiki](https://github.com/MyHoneyBadger/awesome-github-wiki)
- [Signed Commits. How to get the shiny “Verified” badge… | by Izaak Schroeder | Bootstart | Medium](https://medium.com/bootstart/signed-commits-ec2cab9e7254)
- [Signing commits - GitHub Docs](https://docs.github.com/en/authentication/managing-commit-signature-verification/signing-commits)
- [Signing-github-releases.md](https://gist.github.com/hollodotme/edc4d4613ca602e70d242eae8b0a25cc) comes from [Holger Woltersdorf/Hollodotme on Github.](https://gist.github.com/hollodotme)
```bash
git config --global user.signingkey you@email.domain
```

# Now you can make a release as normal, but with a signed commit.
`git tag -s v0.1 -m "the best version yet"`

The only difference here is the -s. 

Before you upload the tag be sure to check your signature with 

`git tag --verify v0.1.`

# Push it
git push --tags origin