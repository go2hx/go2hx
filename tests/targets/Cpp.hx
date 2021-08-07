package targets;

import Config.*;
import System.*;
import sys.FileSystem;

class Cpp {
	static public var gotCppDependencies = false;

	static public function getCppDependencies() {
		if (gotCppDependencies)
			return;

		// hxcpp dependencies
		switch (systemName) {
			case "Linux":
				Linux.requireAptPackages(["gcc-multilib", "g++-multilib"]);
			case "Mac":
				// pass
		}

		// install and build hxcpp
		try {
			var path = getHaxelibPath("hxcpp");
			infoMsg('hxcpp has already been installed in $path.');
		} catch (e:Dynamic) {
			haxelibInstallGit("HaxeFoundation", "hxcpp", true);
			var oldDir = Sys.getCwd();
			changeDirectory(getHaxelibPath("hxcpp") + "tools/hxcpp/");
			runCommand("haxe", ["-D", "source-header=''", "compile.hxml"]);
			changeDirectory(oldDir);
		}

		gotCppDependencies = true;
	}

	static public function runCpp(bin:String, ?args:Array<String>):Void {
		if (args == null)
			args = [];
		bin = FileSystem.fullPath(bin);
		runCommand(bin, args);
	}
}
