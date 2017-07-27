tell application "Terminal"
	activate in window 1
	do script "touch /Users/anna/CodetestFilex.txt" in window 1
	do script "bash /Users/anna/Code/passExpiredMessage.sh" in window 1
	do script "passwd" in window 1
end tell
