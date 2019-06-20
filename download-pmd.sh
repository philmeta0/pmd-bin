#!/usr/bin/env bash

rm -rf dist > /dev/null
mkdir -p dist > /dev/null
pushd dist > /dev/null || true
# shellcheck disable=SC2154
echo "~~~ downloading pmd from github"
curl -SL "https://github.com/pmd/pmd/releases/download/pmd_releases%2F6.15.0/pmd-bin-6.15.0.zip" | jar xf /dev/stdin
mv "pmd-bin-6.15.0" pmd-bin
echo "~~~ moving updated jar file"
cp -f "../lib-updates/pmd-apex-6.16.0-SNAPSHOT.jar" "pmd-bin/lib/pmd-apex-6.15.0.jar"
popd > /dev/null || true
