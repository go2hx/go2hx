package targets;

import Config.*;
import System.*;
import haxe.io.*;
import sys.FileSystem;

using StringTools;

class Lua {
	static public function getLuaDependencies() {
		switch (systemName) {
			case "Linux":
				Linux.requireAptPackages(["libpcre3-dev", "libssl-dev", "libreadline-dev"]);
				runCommand("pip", ["install", "--user", "hererocks"]);
				var pyUserBase = commandResult("python", ["-m", "site", "--user-base"]).stdout.trim();
				addToPATH(Path.join([pyUserBase, "bin"]));
			case "Mac":
				{
					if (commandSucceed("python3", ["-V"]))
						infoMsg('python3 has already been installed.');
					else
						runCommand("brew", ["install", "python3"], true);

					runCommand("brew", ["install", "pcre"], false, true);
					runCommand("pip3", ["install", "hererocks"]);
				}
		}
	}

	static function installLib(lib:String, version:String, ?server:String) {
		if (!commandSucceed("luarocks", ["show", lib, version])) {
			var args = ["install", lib, version];
			if (server != null) {
				var server_arg = '--server=$server';
				args.push(server_arg);
			}
			runCommand("luarocks", args);
		} else {
			infoMsg('Lua dependency $lib is already installed at version $version');
		}
	}
}
