import haxe.io.Path;
import src.Util;
import sys.FileSystem;
import sys.io.File;
import sys.io.Process;

function main() {
	var index = 0;
	final args = Sys.args();
	final ci = if (args.length > 0 && args[0] == "ci") {
		args.shift();
		true;
	} else {
		false;
	}

	if (args.length > 0 && args.indexOf("clean") != - 1) {
		clean();
		return;
	}

	if (args.length > 0 && args.indexOf("extraParams") != -1) {
		createExtraParams();
		return;
	}

	if (args.length > 0 && args.indexOf("build") != -1) {
		build(true);
		return;
	}

	if (args.length > 0 && args.indexOf("hxb") != -1) {
		setupHxb();
		return;
	}
	var rebuild = false;
	var process = new Process('git', ['rev-parse', 'HEAD']);
	if (process.exitCode() != 0) {
		var message = process.stderr.readAll().toString();
		trace("Cannot execute `git rev-arse HEAD` " + message);
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
	File.saveContent("version.txt", version);
	if ((index = args.indexOf("-rebuild")) != -1 || (index = args.indexOf("--rebuild")) != -1) { // used to rebuild the compiler each run
		args.remove(args[index]);
		Sys.println("rebuilding...");
		rebuild = true;
	}
	build(rebuild);

	if (args.length <= 1) {
		Sys.command("haxe scripts/build-interp.hxml --help");
		return;
	}
	if ((index = args.indexOf("-compiler_cpp")) != -1 || (index = args.indexOf("--compiler_cpp")) != -1) {
		args.remove(args[index]);
		setupCPP(rebuild, args);
		return;
	}
	if ((index = args.indexOf("-compiler_hl")) != -1 || (index = args.indexOf("--compiler_hl")) != -1) {
		args.remove(args[index]);
		setupHashlink(rebuild,args);
		return;
	}
	if ((index = args.indexOf("-compiler_interp")) != -1 || (index = args.indexOf("--compiler_interp")) != -1) {
		args.remove(args[index]);
		setupInterp(rebuild,args);
		return;
	}
	if ((index = args.indexOf("-compiler_nodejs")) != -1 || (index = args.indexOf("--compiler_nodejs")) != -1) {
		args.remove(args[index]);
		setupNodeJS(rebuild,args);
		return;
	}
	/*var code = 1;
	try {
		process = new Process("node -v");
		code = process.exitCode();
		process.close();
	}catch(_) {
		code = 1;
	}

	if (code == 0) {
		setupNodeJS(rebuild,args);
		return;
	}*/
	setupInterp(rebuild,args);
}

function clean() {
	if (FileSystem.exists("golibs"))
		deleteDirectoryRecursively("golibs");
	for (path in FileSystem.readDirectory("stdgo")) {
		if (!FileSystem.isDirectory('stdgo/$path'))
			continue;
		switch path {
			case "_internal":
				for (path2 in FileSystem.readDirectory('stdgo/$path')) {
					if (FileSystem.isDirectory('stdgo/$path/$path2')) {
						switch path2 {
							case "unsafe":
								continue;
							case "internal":
								for (path3 in FileSystem.readDirectory('stdgo/$path/$path2')) {
									if (FileSystem.isDirectory('stdgo/$path/$path2/$path3')) {
										switch path3 {
											case "reflect":
											default:
												deleteDirectoryRecursively('stdgo/$path/$path2/$path3');
										}
									}
								}
								continue;
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
	return Sys.command('find $dir -type f -delete');
	//return Sys.command('git rm --cache -r -d $dir');
	return 0;
	#else
	return 0;
	#end
}

function build(rebuild:Bool) {
	var process = new Process("go", ["version"]);
	var code = process.exitCode();
	if (code != 0) {
		Sys.println("go command not found");
		return;
	}
	process.close();

	if (!FileSystem.exists("tools")) {
		Sys.command("git clone https://github.com/go2hx/tools --depth=1");
	} else {
		if (rebuild) {
			Sys.setCwd("tools");
			Sys.command("git pull");
			Sys.setCwd("..");
		}
	}
	// run go compiler
	if (!FileSystem.exists("go4hx") || rebuild) {
		Sys.println("build go part of the compiler");
		Sys.command("go build .");
	}
}

function setupNodeJS(rebuild:Bool,args:Array<String>) {
	Sys.println("NodeJS compiler version");
	// run nodejs
	if (!FileSystem.exists("export/build.js") || rebuild) {
		Sys.command("haxe scripts/build-js.hxml");
	}
	args.unshift("export/build.js");
	// 4gb = 4096, 2gb = 2048
	// args.unshift("--max-old-space-size=4096");
	//args.unshift("--expose-gc");
	Sys.command("node", args);
}

function setupCPP(rebuild:Bool,args:Array<String>) {
	Sys.println("C++ compiler version");
	if (!FileSystem.exists("export/cpp") || rebuild) {
		var cmd = "haxe scripts/build-cpp.hxml";
		Sys.command(cmd);
	}
	final name = if (Sys.systemName() != "Windows") {
		"./export/cpp/Main-debug";
	}else{
		"export/cpp/Main-debug.exe";
	}
	trace(name,args);
	new sys.io.Process(name, args);
}

function setupHashlink(rebuild:Bool,args:Array<String>) {
	Sys.println("Hashlink compiler version");
	var no_uv = false;
	var no_fmt = false;
	var index = 0;
	if ((index = args.indexOf("-no_uv")) != -1 || (index = args.indexOf("--no_uv")) != -1) {
		no_uv = true;
		args.remove(args[index]);
	}
	if ((index = args.indexOf("-no_fmt")) != -1 || (index = args.indexOf("--no_fmt")) != -1) {
		no_fmt = true;
		args.remove(args[index]);
	}
	if (!FileSystem.exists("build.hl") || rebuild) {
		var cmd = "haxe scripts/build-hl.hxml";
		if (no_uv)
			cmd += " -D no_uv";
		if (no_fmt)
			cmd += " -D no_fmt";
		Sys.command(cmd);
	}
	args.unshift("export/build.hl");
	Sys.command("hl", args);
}

function setupInterp(rebuild:Bool, args:Array<String>) {
	Sys.println("Interp compiler version");
	Sys.command("haxe scripts/build-interp.hxml " + args.join(" "));
}

function setupHxb() {
	Sys.println("setting up Hxb");
	var args = Sys.args();
	final index = args.indexOf("hxb");
	args = args.slice(index + 1);
	if (Sys.command('haxe scripts/hxb.hxml ' + args.join(" ")) != 0) {
		Sys.println("Failed to setup Hxb");
		Sys.exit(1);
	}
}

function createExtraParams() {
	final args = Sys.args();
	final localPath = args[args.length - 1];
	final cwd = Sys.getCwd();
	File.copy(cwd + "/extraParams.hxml", localPath + "/extraParams.hxml");
}