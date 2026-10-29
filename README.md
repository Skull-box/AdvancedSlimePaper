> ## Fork Skull-box — branche `v2`
>
> Ce dépôt est le fork Skull-box d'[InfernalSuite/AdvancedSlimePaper](https://github.com/InfernalSuite/AdvancedSlimePaper).
> La branche **`v2`** (par défaut) part du `main` amont au commit `03191391` (Minecraft **26.2**, Paper 26.2 stable build 134)
> et y reste figée. Elle n'ajoute que notre CI : `.github/workflows/skullbox.yml` et `.github/skullbox/` (script d'init Gradle
> et script de publication), plus cette section. Le code amont n'est pas modifié.
>
> **Ce qui est publié**, à chaque push sur `v2` (ou lancement manuel), sur Reposilite `https://maven.skullbox.fr`
> (lecture authentifiée), groupId `fr.skullbox.asp` :
> - `api`, `core`, `loaders`, `api-loader`, `file-loader`, `mongo-loader`, `mysql-loader`, `redis-loader` (jar, sources, javadoc) ;
> - `asp-plugin` (jar shadé du plugin) et `asp-server` (paperclip, le jar à déployer).
>
> Deux versions par build : `26.2-<sha7>` (figée, dépôt `releases`) et `26.2-SNAPSHOT` (mobile, dépôt `snapshots`).
> Les jars `asp-server.jar` et `asp-plugin.jar` sont aussi joints au run GitHub Actions.
>
> **Resynchroniser avec l'amont (à la main, sur décision)** — aucune synchro automatique : leur `main` passera en 26.3.
> ```sh
> git remote add upstream https://github.com/InfernalSuite/AdvancedSlimePaper.git   # une fois
> git fetch upstream
> git switch v2
> git rebase <commit-amont-choisi>      # ex. upstream/main, après vérification de mcVersion dans gradle.properties
> git push --force-with-lease origin v2 # déclenche le build et la publication
> ```
> Seuls les fichiers ci-dessus divergent : le rebase ne devrait jamais entrer en conflit hors de cette section.

# Advanced Slime Paper (ASWM) [![Build Status](https://ci.infernalsuite.com/app/rest/builds/buildType:(id:AdvancedSlimePaper_Build)/statusIcon)](https://ci.infernalsuite.com/viewType.html?buildTypeId=AdvancedSlimePaper_Build&guest=1)

[<img src="https://assets-global.website-files.com/6257adef93867e50d84d30e2/636e0b5061df29d55a92d945_full_logo_blurple_RGB.svg" alt="" height="55" />](https://discord.gg/YevvsMa)

Advanced Slime Paper is a fork of Paper implementing the Slime Region Format developed by Hypixel. Originally a plugin, this project has been converted to a
fork to maximize our ability to provide fixes and performance improvements.
Its goal is to provide server administrators with an easy-to-use tool to load worlds faster and save space.

## Releases

ASP builds can be found [here](https://infernalsuite.com/download/asp). Older
builds can be found in the [Discord](https://discord.gg/YevvsMa) under the #aspaper-builds channel.

## Wiki
For API and usage info check out the docs at https://infernalsuite.com/

## Javadocs
The Javadocs can be found [here](https://docs.infernalsuite.com/).

## Credits

Thanks to:
* All the contributors that actively maintain ASWM and added features to SWM.
* [Paul19988](https://github.com/Paul19988) - ASWM Creator.
* [ComputerNerd100](https://github.com/ComputerNerd100) - Large Contributor & Maintainer.
* [b0ykoe](https://github.com/b0ykoe) - Provider of build services & repositories.
* [Owen1212055](https://github.com/Owen1212055) - Large Contributor & Maintainer.
* [Gerolmed](https://github.com/Gerolmed) - Contributor & Maintainer.
* [Grinderwolf](https://github.com/Grinderwolf) - The original creator.
* [Glare](https://glaremasters.me) - Providing the original Maven repository.
* [Minikloon](https://twitter.com/Minikloon) and all the [Hypixel](https://twitter.com/HypixelNetwork) team for developing the SRF.
