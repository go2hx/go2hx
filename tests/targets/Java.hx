package targets;

import Config.*;
import System.*;
import sys.FileSystem;

using StringTools;

class Java {
	static public function getJavaDependencies() {
		haxelibInstallGit("HaxeFoundation", "hxjava", true);
		runCommand("javac", ["-version"]);
		runCommand("java", ["-version"]);
	}
}
