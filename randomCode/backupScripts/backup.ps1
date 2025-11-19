Write-Host "Starting first copy: from C and E to F."
$jobs = @()
$jobs += Start-Job { robocopy "C:\Users\vinic\Downloads" "F:\cDisk\downloads\" /E /XO }
$jobs += Start-Job { robocopy "C:\Users\vinic\eclipse-workspace" "F:\cDisk\eclipse-workspace\" /E /XO }
$jobs += Start-Job { robocopy "C:\Users\vinic\Pictures" "F:\cDisk\pictures\" /E /XO }
$jobs += Start-Job { robocopy "C:\Users\vinic\Videos" "F:\cDisk\videos\" /E /XO }
$jobs += Start-Job { robocopy "E:\Jogos\osu!\Songs" "F:\eDisk\osuSongs\" /E /XO }
Wait-Job $jobs
Write-Host "Done, now starting copies from all drives to G."
$jobs = @()
$jobs += Start-Job { robocopy "C:\Users\vinic\Downloads" "G:\cDisk\downloads\" /E /XO }
$jobs += Start-Job { robocopy "C:\Users\vinic\eclipse-workspace" "G:\cDisk\eclipse-workspace\" /E /XO }
$jobs += Start-Job { robocopy "C:\Users\vinic\Pictures" "G:\cDisk\pictures\" /E /XO }
$jobs += Start-Job { robocopy "C:\Users\vinic\Videos" "G:\cDisk\videos\" /E /XO }
$jobs += Start-Job { robocopy "E:\Jogos\osu!\Songs" "G:\eDisk\osuSongs\" /E /XO }
$jobs += Start-Job { robocopy "F:\hdFiles" "G:\fDisk\" /E /XO }
Wait-Job $jobs
Write-Host "All done!"