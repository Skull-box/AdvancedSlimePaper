#!/usr/bin/env bash
# Publie le build courant sur Reposilite sous la version $1 (voir publish.init.gradle).
# Une version figée déjà présente dans releases n'est pas republiée (relance d'un même commit) : Reposilite
# refuserait l'écrasement, et le contenu serait identique.
# Environnement : MAVEN_USERNAME / MAVEN_TOKEN (jeton d'écriture), SKULLBOX_SERVER_JAR.
set -euo pipefail

version="$1"
case "$version" in
  *-SNAPSHOT) repo=snapshots ;;
  *) repo=releases ;;
esac

if [ "$repo" = releases ]; then
  code=$(curl -s -o /dev/null -w '%{http_code}' -u "$MAVEN_USERNAME:$MAVEN_TOKEN" \
    "https://maven.skullbox.fr/releases/fr/skullbox/asp/asp-server/$version/asp-server-$version.pom")
  if [ "$code" = 200 ]; then
    echo "::notice::fr.skullbox.asp:*:$version déjà présent dans releases, publication ignorée"
    exit 0
  fi
fi

SKULLBOX_VERSION="$version" ./gradlew --console=plain --init-script .github/skullbox/publish.init.gradle \
  publishAllPublicationsToSkullboxRepository -x test
echo "::notice::Publié fr.skullbox.asp:*:$version dans $repo"
