Param(
    [string]$commit_msg
)
#goto the director of the local repo
$destination = "C:\users\mkennedy\onedrive\Projects\repos\simplehtml"
cd $destination

#if no commit msg, use a generic one
if (!$commit_msg) {
    $commit_msg = "just updating simplehtml"
    }

# build a timestamp
$date = Get-Date
$timemsg = "[" + $date.ToLocalTime() + "]"
$message = $timemsg + " " + $commit_msg

# add files
git add index.html
git add git_update.ps1
# commit changes
git commit -m $message
# push to github
git push
# here you will be asked for your username/password