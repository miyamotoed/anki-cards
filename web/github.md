# GitHub

## How to specify the private SSH-key

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



