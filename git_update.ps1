$destination = "C:\users\mkennedy\onedrive\Projects\repos\simplehtml"
if (!$commit_msg) {
    $commit_msg = "just updating simpleindex.html"
    }
cd $destination
git add index.html
git commit -m $commit_msg
git push