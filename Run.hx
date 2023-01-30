import haxe.io.Path;
import shared.Util;
import sys.FileSystem;
import sys.io.File;
import sys.io.Process;

function main() {
	final args = Sys.args();
	final ci = if (args.length > 0 && args[0] == "ci") {
		args.shift();
		true;
	} else {
		false;
	}

	if (args.length > 0 && args[0] == "clean") {
		clean();
		return;
	}

	var process = new Process("go", ["version"]);
	var code = process.exitCode();
	if (code != 0) {
		Sys.println("go command not found");
		return;
	}
	process.close();

	var rebuild = false;
	process = new Process('git', ['rev-parse', 'HEAD']);
	if (process.exitCode() != 0) {
		var message = process.stderr.readAll().toString();
		trace("Cannot execute `git rev-arse HEAD`. " + message);
		return;
	}
	final version = process.stdout.readLine();
	process.close();
	if (FileSystem.exists("version.txt")) {
		if (!rebuild && version != File.getContent("version.txt")) {
			Sys.println("updating version rebuilding binaries");
			rebuild = true;
		}
	} else {
		rebuild = true; // rebuild if no version present for good measure
	}
	if (!FileSystem.exists("tools")) {
		Sys.command("git clone https://github.com/go2hx/tools --depth=1");
	} else {
		if (rebuild) {
			Sys.setCwd("tools");
			Sys.command("git pull");
			Sys.setCwd("..");
		}
	}
	File.saveContent("version.txt", version);
	if (args.indexOf("-rebuild") != -1 || args.indexOf("--rebuild") != -1) { // used to rebuild the compiler each run
		args.remove("-rebuild");
		args.remove("--rebuild");
		Sys.println("rebuilding...");
		rebuild = true;
	}
	// run go compiler
	if (!FileSystem.exists("go4hx") || rebuild)
		Sys.command("go build .");

	if (args.length <= 1) {
		Sys.command("haxe build-interp.hxml --help");
		return;
	}
	code = 1;
	try {
		process = new Process("node -v");
		code = process.exitCode();
		process.close();
	}catch(_) {}

	if (code == 0) {
		// run nodejs
		if (!FileSystem.exists("build.js") || rebuild) {
			Sys.command("haxe build-js.hxml");
		}
		args.unshift("build.js");
		// 4gb = 4096, 2gb = 2048
		args.unshift("--max-old-space-size=4096");
		Sys.command("node", args);
		return;
	}
	code = 1;
	try {
		process = new Process("hl", ["--version"]);
		code = process.exitCode();
		process.close();
	}catch(_) {}

	if (code == 0) {
		// run hashlink
		var no_uv = false;
		var no_fmt = false;
		if (args.indexOf("-no_uv") != -1 || args.indexOf("--no_uv") != -1) {
			no_uv = true;
		}
		if (args.indexOf("-no_fmt") != -1 || args.indexOf("--no_fmt") != -1) {
			no_fmt = true;
		}
		if (!FileSystem.exists("build.hl") || rebuild) {
			var cmd = "haxe build-hl.hxml";
			if (no_uv)
				cmd += " -D no_uv";
			if (no_fmt)
				cmd += " -D no_fmt";
			Sys.command(cmd);
		}
		args.unshift("build.hl");
		Sys.command("hl", args);
	} else {
		Sys.command("haxe build-interp.hxml " + args.join(" "));
	}
}

function clean() {
	for (path in FileSystem.readDirectory("stdgo")) {
		if (!FileSystem.isDirectory('stdgo/$path'))
			continue;
		switch path {
			case "unsafe":
				continue;
			case "internal", "testing":
				for (path2 in FileSystem.readDirectory('stdgo/$path')) {
					if (FileSystem.isDirectory('stdgo/$path/$path2')) {
						switch path2 {
							case "poll", "reflectlite", "testenv", "reflect":
							default:
								deleteDirectoryRecursively('stdgo/$path/$path2');
						}
					}
				}
				continue;
		}
		deleteDirectoryRecursively('stdgo/$path');
	}
}

function deleteDirectoryRecursively(dir:String):Int {
	trace(dir);
	#if !js
	return Sys.command('find $dir -type f ! -iname "*.MD" -delete');
	#else
	return 0;
	#end
}
