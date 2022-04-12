{


  packageOverrides = pkgs: with pkgs; rec {

	mainUser = "eino";
    	myPackages = pkgs.buildEnv {

	name = "corePackages";


	paths = [
		emacs
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
		snes9x-gtk
		mupen64plus
		kega-fusion
		dosbox
		wine
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

