{
  packageOverrides = pkgs: with pkgs; rec {

	mainUser = "eino";
    	myPackages = pkgs.buildEnv {

	name = "corePackages";


	paths = [
		
		vim
		chromium
			
	];
	pathsToLink = [ "/share" "/bin" ];
	};	
};

}
