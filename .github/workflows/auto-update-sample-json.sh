set +xe

echo hello there

date > blah.txt

git remote add github "https://$GITHUB_ACTOR:$GITHUB_TOKEN@github.com/$GITHUB_REPOSITORY.git"
git pull github ${GITHUB_REF} --ff-only

git add blah.txt

git commit -m "Update sample json"
git push github HEAD:${GITHUB_REF}
