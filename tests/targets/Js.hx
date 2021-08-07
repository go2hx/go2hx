package targets;

import Config.*;
import System.*;
import haxe.io.Path;
import sys.FileSystem;
import sys.io.Process;

using StringTools;

class Js {
	static public function getJSDependencies() {
		switch [ci, systemName] {
			case [_, "Linux"]:
				if (commandSucceed("node", ["-v"])) {
					infoMsg('node has already been installed.');
				} else {
					Linux.requireAptPackages(["nodejs"]);
				}
			case _:
				// pass
		}

		runCommand("node", ["-v"]);
	}
}
