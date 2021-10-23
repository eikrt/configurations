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
		silver-searcher
		nodejs
			
	];
	pathsToLink = [ "/share" "/bin" ];
	};	
};
}

