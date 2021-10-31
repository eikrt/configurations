{


  packageOverrides = pkgs: with pkgs; rec {

	mainUser = "eino";
    	myPackages = pkgs.buildEnv {

	name = "corePackages";


	paths = [
		
		vim
		chromium
		acpi
		sysstat
		feh
		xdotool
		neofetch
		xfce.xfce4-screenshooter
		scrot
		silver-searcher
		nodejs
		fceux
		snes9x-gtk
		mupen64plus
		dolphinEmu
		kega-fusion
		dosbox
		mpv
		youtube-dl
		spotify-tui
		spotifyd
			
	];
	pathsToLink = [ "/share" "/bin" ];
	};	
};
allowUnfree = true;
}

