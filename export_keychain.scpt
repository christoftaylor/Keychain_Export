-- set this to 1 for csv and 0 for tab delinated output
set csv to 1

repeat 1 times
	tell application "Keychain Access"
		activate
		tell application "System Events" to keystroke "i" using command down
		delay 1
		tell application "System Events" to key code 48
		delay 0.3
		-- copy the Name
		tell application "System Events" to set the clipboard to ""
		tell application "System Events" to keystroke "c" using command down
		delay 0.3
	end tell
	tell application "TextEdit"
		activate
		delay 0.3
		tell application "System Events" to keystroke "v" using command down
		if (csv = 1) then
			tell application "System Events" to keystroke ","
		else
			tell application "System Events" to key code 48
		end if
	end tell
	tell application "Keychain Access"
		activate
		tell application "System Events" to key code 48
		delay 0.3
		-- copy the Kind (type)
		tell application "System Events" to set the clipboard to ""
		tell application "System Events" to keystroke "c" using command down
	end tell
	tell application "TextEdit"
		activate
		delay 0.3
		tell application "System Events" to keystroke "v" using command down
		if (csv = 1) then
			tell application "System Events" to keystroke ","
		else
			tell application "System Events" to key code 48
		end if
	end tell
	tell application "Keychain Access"
		activate
		tell application "System Events" to key code 48
		delay 0.3
		-- copy the Account (username)
		tell application "System Events" to set the clipboard to ""
		tell application "System Events" to keystroke "c" using command down
	end tell
	tell application "TextEdit"
		activate
		delay 0.3
		tell application "System Events" to keystroke "v" using command down
		if (csv = 1) then
			tell application "System Events" to keystroke ","
		else
			tell application "System Events" to key code 48
		end if
	end tell
	tell application "Keychain Access"
		activate
		tell application "System Events" to key code 48
		delay 0.3
		-- copy the Where (url)
		tell application "System Events" to set the clipboard to ""
		tell application "System Events" to keystroke "c" using command down
		delay 0.3
	end tell
	tell application "TextEdit"
		activate
		delay 0.3
		tell application "System Events" to keystroke "v" using command down
		if (csv = 1) then
			tell application "System Events" to keystroke ","
		else
			tell application "System Events" to key code 48
		end if
	end tell
	tell application "Keychain Access"
		activate
		delay 0.3
		-- shift+tab to go around other way to avoid Comments
		tell application "System Events" to key code 48 using shift down
		tell application "System Events" to key code 48 using shift down
		tell application "System Events" to key code 48 using shift down
		tell application "System Events" to key code 48 using shift down
		tell application "System Events" to key code 48 using shift down
		-- check 'Show password'
		tell application "System Events" to key code 49
		delay 1
		tell application "System Events" to keystroke "PUT_YOUR_SYSTEM_PASSWORD_HERE"
		tell application "System Events" to keystroke return
		delay 0.3
		tell application "System Events" to key code 48
		delay 0.3
		-- copy the Password
		tell application "System Events" to set the clipboard to ""
		tell application "System Events" to keystroke "c" using command down
		tell application "System Events" to keystroke "w" using command down
		delay 0.3
	end tell
	tell application "TextEdit"
		activate
		delay 0.3
		tell application "System Events" to keystroke "v" using command down
		tell application "System Events" to keystroke return
		tell application "System Events" to set the clipboard to ""
	end tell
	tell application "Keychain Access"
		activate
		delay 0.3
		-- down arrow to move to next entry
		tell application "System Events" to key code 125
	end tell
end repeat
