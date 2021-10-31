# POSTINSTALL

These steps presume you have latest debian installed


## AFTER INSTALL

1. Add user to sudoers

	su root
	adduser <user> sudo
	reboot

2. Install git

	sudo apt install git

3. Clone configurations git repository

	git clone https://github.com/eikrt/configurations

4. Run configurations/system/postinstall/postinstall.*

5. Enjoy!
