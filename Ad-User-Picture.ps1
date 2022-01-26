# Change Photo Location prior to runing
# Change USer ID

$UserImage=\\server\netlogon\image.jpg
$USERID=MyUserName

$photo = [byte[]](Get-Content $UserImage -Encoding byte)
Set-ADUser $USERID  -Replace @{thumbnailPhoto=$photo}

