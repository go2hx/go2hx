package targets;

import Config.*;
import System.*;
import sys.FileSystem;

class Cs {
	static public function getCsDependencies() {
		switch (systemName) {
			case "Linux":
				if (!isCi() && commandSucceed("mono", ["--version"]))
					infoMsg('mono has already been installed.');
				else
					Linux.requireAptPackages(["mono-devel", "mono-mcs"]);
				runCommand("mono", ["--version"]);
			case "Mac":
				if (commandSucceed("mono", ["--version"]))
					infoMsg('mono has already been installed.');
				else
					runCommand("brew", ["install", "mono"], true);
				runCommand("mono", ["--version"]);
			case "Windows":
				// pass
		}

		haxelibInstallGit("HaxeFoundation", "hxcs", true);
	}

	static public function runCs(exe:String, ?args:Array<String>):Void {
		if (args == null)
			args = [];
		exe = FileSystem.fullPath(exe);
		switch (systemName) {
			case "Linux", "Mac":
				runCommand("mono", [exe].concat(args));
			case "Windows":
				runCommand(exe, args);
		}
	}
}
