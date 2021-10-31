{


  packageOverrides = pkgs: with pkgs; rec {

	mainUser = "eino";
    	myPackages = pkgs.buildEnv {

	name = "corePackages";


	paths = [
		
		vim
		chromium
		lemonbar
		acpi
		sysstat
		feh
		xdotool
		neofetch
		xfce.xfce4-terminal
		xfce.xfce4-screenshooter
		scrot
		silver-searcher
		nodejs
		fceux
		mpv
		youtube-dl
		spotifyd
		spotify-tui
			
	];
	pathsToLink = [ "/share" "/bin" ];
	};	
};
}

