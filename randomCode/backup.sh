echo "Making sure destination directories exist."
mkdir -p /g/cDisk/downloads/ &
mkdir -p /g/cDisk/eclipse-workspace/ &
mkdir -p /g/cDisk/pictures/ &
mkdir -p /g/cDisk/videos/ &
mkdir -p /e/eDisk/osuSongs/ &
mkdir -p /g/fDisk/Downloads &
wait
echo "Check done, starting copies!"
cp -r /c/Users/vinic/Downloads/* /g/cDisk/downloads/ &
cp -r /c/Users/vinic/eclipse-workspace/* /g/cDisk/eclipse-workspace/ &
cp -r /c/Users/vinic/Pictures/* /g/cDisk/pictures/ &
cp -r /c/Users/vinic/Videos/* /g/cDisk/videos/ &
cp -r /e/Jogos/osu!/Songs/* /e/eDisk/osuSongs/ &
cp -r /f/hdFiles/* /g/fDisk/Downloads/ &
wait
echo "All done!"