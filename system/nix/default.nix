with (import <nixpkgs> {});

mkShell {
	mainUser = "eino";
	shellHook =  
	''
		alias nix-install="nix-env -iA nixpkgs.myPackages"
		alias nix-edit="vim /home/eino/.config/nixpkgs/config.nix"
	'';
	buildInputs = [
		gcc
	];
}
