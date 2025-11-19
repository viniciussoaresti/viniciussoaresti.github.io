echo "Making sure destination directories exist."
mkdir -p /g/cDisk/downloads/ &
mkdir -p /g/cDisk/eclipse-workspace/ &
mkdir -p /g/cDisk/pictures/ &
mkdir -p /g/cDisk/videos/ &
mkdir -p /g/eDisk/osuSongs/ &
mkdir -p /g/fDisk/ &
mkdir -p /f/cDisk/downloads/ &
mkdir -p /f/cDisk/eclipse-workspace/ &
mkdir -p /f/cDisk/pictures/ &
mkdir -p /f/cDisk/videos/ &
mkdir -p /f/eDisk/osuSongs/ &
wait
echo "Check done, starting first copy: from C and E to F."
cp -r /c/Users/vinic/Downloads/* /f/cDisk/downloads/ &
cp -r /c/Users/vinic/eclipse-workspace/* /f/cDisk/eclipse-workspace/ &
cp -r /c/Users/vinic/Pictures/* /f/cDisk/pictures/ &
cp -r /c/Users/vinic/Videos/* /f/cDisk/videos/ &
cp -r /e/Jogos/osu!/Songs/* /f/eDisk/osuSongs/ &
wait
echo "Done, now starting copies from all drives to G."
cp -r /c/Users/vinic/Downloads/* /g/cDisk/downloads/ &
cp -r /c/Users/vinic/eclipse-workspace/* /g/cDisk/eclipse-workspace/ &
cp -r /c/Users/vinic/Pictures/* /g/cDisk/pictures/ &
cp -r /c/Users/vinic/Videos/* /g/cDisk/videos/ &
cp -r /e/Jogos/osu!/Songs/* /g/eDisk/osuSongs/ &
cp -r /f/hdFiles/* /g/fDisk/ &
wait
echo "All done!"