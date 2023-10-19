# GitHub

## How to specify the private SSH-key

<!-- notecardId: 1694921357903 -->

<div class="container text-left">

```console
Host    github-name
        Hostname        github.com
        User            git
        IdentityFile    {$path}/ssh_key
        IdentitiesOnly  yes
```

```console
git remote add origin git@github-name:miyamotoed/anki-cards.git

```

</div>


## How do I delete a commit from a branch?

<!-- notecardId: 1694921357949 -->

<div class="container text-left">

```console
git reset --hard HEAD~1
```

If you already pushed it, you will need to do a force push to get rid of it...

```console
git push origin HEAD --force
```

</div>
