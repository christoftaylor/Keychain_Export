# Keychain Export

MacOS keeps all its saved passwords in a special, well-secured databased accessible via the 'Keychain Access' app. Apple has provided no way to export the passwords out of the Keychain. Sometimes that can be a handy thing to do. I needed this when I migrated from Safari to Chrome. 

There is some prior art here:
* https://gist.github.com/rmondello/b933231b1fcc83a7db0b
* https://1password.community/discussion/107351/export-icloud-keychain-saved-password-to-csv-file-solved
* https://1password.community/discussion/101693/moving-to-1password-from-another-password-manager#latest

MRC's scripts referenced in the 1password forums were recommended by most people.



## In this repo:
export_keychain.scpt 
* An Apple Script that runs inside the Script Editor. It automates the keystrokes of opening an entry in 'Keychain Access', copying the fields, then pasting them into 'TextEdit'. 
* The pasted output is comma separated. This can be changed to tab separated by flipping the value of 'csv' at the top of the script.
* It loops as many times as you set the repeat value to. 
* 'Keychain Access' requires you to authenticate every time you make the password visible, so you have to put your password in the script so it can fill it in on that box when it appears. There are delays injected throughout to slow the script down to allow time for the dialog boxes to appear. I really hate this part. The only thing worse than hard coding a password into a script is exporting ALL your passwords into a plain-text csv file. 
