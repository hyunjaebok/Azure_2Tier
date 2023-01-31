sudo mkdir mntazure-2tier-file
if [ ! -d etcsmbcredentials ]; then
sudo mkdir etcsmbcredentials
fi
if [ ! -f etcsmbcredentialsazure2tiersa.cred ]; then
    sudo bash -c 'echo username=azure2tiersa  etcsmbcredentialsazure2tiersa.cred'
    sudo bash -c 'echo password=sy0hmz9L6+3eZAnkEOThvMQBaKf5JRvulrQmaZEn6qerK8+yFFMIQnBV7f6VHRlbADsVxVdD+AStaFdnAg==  etcsmbcredentialsazure2tiersa.cred'
fi
sudo chmod 600 etcsmbcredentialsazure2tiersa.cred

sudo bash -c 'echo azure2tiersa.file.core.windows.netazure-2tier-file mntazure-2tier-file cifs nofail,credentials=etcsmbcredentialsazure2tiersa.cred,dir_mode=0777,file_mode=0777,serverino,nosharesock,actimeo=30  etcfstab'
sudo mount -t cifs azure2tiersa.file.core.windows.netazure-2tier-file mntazure-2tier-file -o credentials=etcsmbcredentialsazure2tiersa.cred,dir_mode=0777,file_mode=0777,serverino,nosharesock,actimeo=30