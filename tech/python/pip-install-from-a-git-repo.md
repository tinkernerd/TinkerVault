---
title: Pip Install from a Github Repo
source: https://gist.github.com/javrasya/e95ade856ff42e4649972f8a54368459
author: javrasya
---
Pip is a package manager of python. You can download `Python` libraries from some `Python` repositories like `PyPI`. You can also download libraries from a `git` repository. This is gonna be the issue to be explained in this article.

I don't like to memorize things all the time. So, I guess, I couldn't be working without internet :). Whenever I need to install some python libraries from a git repositories, I see a lot of way to do it. It is really confusing. This should be the reason why I can't memorize it. I can see how a very simple requirement is handled with to many confusing way. There shouldn't be to many way. Some of them is not working neither. At last, I decided to blog it.

As you may know, you can use two protocols which are `http` and `ssh` to do something on `git` repositories. Using protocol `ssh` instead of `http` may provide some ease of use. Because of nature of `ssh`, you can do something with your primary/public keys. So, you don't have to input your credentials all the time. But I'll be giving a way for both;

Here are the example with `bitbucket` `git` repositories;

```bash
#For HTTP

pip install git+https://bitbucket.org/<project_owner>/<project_name>
#Example: pip install git+https://bitbucket.org/egemsoft/esefpy-web
```

```bash
#For SSH

pip install git+ssh://git@bitbucket.org/<project_owner>/<project_name>.git/
#Example: pip install git+ssh://git@bitbucket.org/egemsoft/esefpy-web.git
```

```bash
#For Local Git Repository

pip install git+file///path/to/your/git/project/
#Example: pip install git+file:///Users/ahmetdal/workspace/celery/
```

