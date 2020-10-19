# Keychain Export

MacOS keeps all its saved passwords in a special, well-secured databased accessible via the 'Keychain Access' app. Apple has provided no way to export the passwords out of the Keychain. Sometimes that can be a handy thing to do. I needed this when I migrated from Safari to Chrome. Would also be useful is migrating to a better password manager such as KeePass, 1password, LastPass, and so on. 

There is prior art here:
* https://gist.github.com/rmondello/b933231b1fcc83a7db0b
* https://appletoolbox.com/easily-export-your-passwords-from-icloud-keychain-with-this-script/
* https://1password.community/discussion/107351/export-icloud-keychain-saved-password-to-csv-file-solved
* https://1password.community/discussion/101693/moving-to-1password-from-another-password-manager#latest

MRC's scripts referenced in the 1password forums were recommended by most people. The main problem I ran into was that these ran against the local database. The passwords saved in iCloud are in a different database. The recommendation was to copy them all local, then run these scripts. I decided to after iCloud directly.


## In this repo:
export_keychain.scpt 
* An Apple Script that runs inside the 'Script Editor'. It automates the keystrokes of opening an entry in 'Keychain Access', copying the fields, then pasting them into 'TextEdit'. 
* The pasted output is comma separated. This can be changed to tab separated by flipping the value of 'csv' at the top of the script.
* It loops as many times as you want by setting the repeat value on line 4. 
* 'Keychain Access' requires you to authenticate every time you make the password visible, so you have to put your password in the script so it can fill it in on that box when it appears. I really hate this part. The only thing worse than hard coding a password into a script is exporting ALL your passwords into a plain-text csv file. 
* I had to inject delays after every key press that switched or spawned a window to give the UI time to catch up. I tried to prioritize reliability over speed, but it still fails with regularity. You can't run this without babysitting it. 
* When it gets hung up, you have to hit stop in 'Script Editor', correct any incorrectly pasted text, reset the windows, then start it back up. Common fails were not copying from Keychain resulting in pasting nothing for a specific field, and not switching apps correctly resulting in pasting a comma at the end of a field inside the Keychain dialog (usually in the Name field). Adjust the delays or add more of them to correct this. 
