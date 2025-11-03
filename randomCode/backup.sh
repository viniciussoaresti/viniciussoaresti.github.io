echo "Making sure destination directories exist."
touch backup.txt
mkdir -p /g/cDisk/downloads/ >> backup.txt 2>&1 &
mkdir -p /g/cDisk/eclipse-workspace/ >> backup.txt 2>&1 &
mkdir -p /g/cDisk/pictures/ >> backup.txt 2>&1 &
mkdir -p /g/cDisk/videos/ >> backup.txt 2>&1 &
mkdir -p /g/eDisk/osuSongs/ >> backup.txt 2>&1 &
mkdir -p /g/fDisk/Downloads >> backup.txt 2>&1 &
wait
echo "Check done, starting copies!"
cp -r /c/Users/vinic/Downloads/* /g/cDisk/downloads/ >> backup.txt 2>&1 &
cp -r /c/Users/vinic/eclipse-workspace/* /g/cDisk/eclipse-workspace/ >> backup.txt 2>&1 &
cp -r /c/Users/vinic/Pictures/* /g/cDisk/pictures/ >> backup.txt 2>&1 &
cp -r /c/Users/vinic/Videos/* /g/cDisk/videos/ >> backup.txt 2>&1 &
cp -r /e/Jogos/osu!/Songs/* /g/eDisk/osuSongs/ >> backup.txt 2>&1 &
cp -r /f/hdFiles/* /g/fDisk/Downloads/ >> backup.txt 2>&1 &
wait
echo "All done!"