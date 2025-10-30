import haxe.io.Path;
import shared.Util;
import sys.FileSystem;
import sys.io.File;
import sys.io.Process;

#if !haxe5
#error "Requires Haxe 5"
#end

final goRequiredVersion = File.getContent(".gorc");
final home = Sys.getEnv(if (Sys.systemName() == "Windows") "UserProfile" else "HOME");
final goCommand = executable(home + "/.go/go" + goRequiredVersion + "/bin/go");
final goRoot = home +  "/.go/go" + goRequiredVersion;
final goupCommand = executable(home + "/.go/bin/goup");

function main() {
	var index = 0;
	final args = Sys.args();
	final ci = if (args.length > 0 && args[0] == "ci") {
		args.shift();
		true;
	} else {
		false;
	}
	var index = args.indexOf("goup");
	if (args.length > 0 && index != -1) {
		final command = goupCommand + " " + args.slice(index + 1, args.length - 1).join(" ");
		Sys.println(command);
		Sys.command(command);
		return;
	}
	index = args.indexOf("go");
	if (args.length > 0 && index != -1) {
		final command = goCommand + " " + args.slice(index + 1, args.length - 1).join(" ");
		Sys.println(command);
		Sys.command(command);
		return;
	}
	if (args.length > 0 && args.indexOf("clean") != -1) {
		clean();
		return;
	}

	if (args.length > 0 && args.indexOf("build") != -1) {
		build(true);
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
		trace("no version");
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
		Sys.command("haxe extra/scripts/build-interp.hxml --help");
		return;
	}
	if (goCommand != "go") {
		final last = args.pop();
		args.push("-gocmd");
		args.push(goCommand);
		args.push("-goroot");
		args.push(goRoot);
		args.push(last);
	}
	var debug = false;
	if ((index = args.indexOf("-compiler_debug")) != -1 || (index = args.indexOf("--compiler_debug")) != -1) {
		args.remove(args[index]);
		debug = true;
	}
	if ((index = args.indexOf("-compiler_cpp")) != -1 || (index = args.indexOf("--compiler_cpp")) != -1) {
		args.remove(args[index]);
		setupCPP(rebuild, args, debug);
		return;
	}
	if ((index = args.indexOf("-compiler_hl")) != -1 || (index = args.indexOf("--compiler_hl")) != -1) {
		args.remove(args[index]);
		setupHashlink(rebuild, args);
		return;
	}
	if ((index = args.indexOf("-compiler_interp")) != -1 || (index = args.indexOf("--compiler_interp")) != -1) {
		args.remove(args[index]);
		setupInterp(rebuild, args);
		return;
	}
	if ((index = args.indexOf("-compiler_nodejs")) != -1 || (index = args.indexOf("--compiler_nodejs")) != -1) {
		args.remove(args[index]);
		setupNodeJS(rebuild, args);
		return;
	}
	if ((index = args.indexOf("-compiler_java")) != -1 || (index = args.indexOf("--compiler_java")) != -1) {
		args.remove(args[index]);
		setupJava(rebuild, args);
		return;
	}
	setupCPP(rebuild, args, debug);
}

function clean() {
	return;
	if (FileSystem.exists("golibs"))
		deleteDirectoryRecursively("golibs");
	for (path in FileSystem.readDirectory("go")) {
		if (!FileSystem.isDirectory('go/$path'))
			continue;
		switch path {
			case "_internal":
				for (path2 in FileSystem.readDirectory('go/$path')) {
					if (FileSystem.isDirectory('go/$path/$path2')) {
						switch path2 {
							case "unsafe":
								continue;
							case "internal":
								for (path3 in FileSystem.readDirectory('go/$path/$path2')) {
									if (FileSystem.isDirectory('go/$path/$path2/$path3')) {
										switch path3 {
											case "reflect":
											default:
												deleteDirectoryRecursively('go/$path/$path2/$path3');
										}
									}
								}
								continue;
							default:
								deleteDirectoryRecursively('go/$path/$path2');
						}
					}
				}
				continue;
		}
		deleteDirectoryRecursively('go/$path');
	}
}

function deleteDirectoryRecursively(dir:String):Int {
	trace(dir);
	#if !js
	return Sys.command('find $dir -type f -delete');
	// return Sys.command('git rm --cache -r -d $dir');
	return 0;
	#else
	return 0;
	#end
}

function installRequiredGoVersion() {
	final command = goupCommand + " install " + goRequiredVersion;
	Sys.println(command);
	Sys.println("Please wait a little...");
	final proc = new Process(command);
	if (proc.exitCode(true) != 0) {
		final outMessage = proc.stdout.readAll().toString();
		final errMessage = proc.stderr.readAll().toString();
		if (errMessage.indexOf('msg="symlink') != -1 || outMessage.indexOf('msg="symlink') != -1)
			return;
		Sys.println("goup install command failed");
		trace(outMessage);
		trace(errMessage);
		Sys.exit(1);
	}
}

private function executable(path:String) {
	if (isWindows()) {
		return path + '.exe';
	}
	return path;
}

function installGoUp():Bool {
	// prebuilt binaries
	var arch = ""; // arch
	var os = ""; // os

	function getArch(line:String):String {
		return switch line {
			case "x86_64", "amd64":
				"amd64";
			case "arm64", "aarch64":
				"arm64";
			default:
				throw "unknown arch: " + line;
		}
	}
	var ext = "";
	switch systemName.toLowerCase() {
		case "linux":
			os = systemName.toLowerCase();
			final process = new Process("uname -m");
			if (process.exitCode(true) != 0)
				return false;
			arch = getArch(process.stdout.readLine().toLowerCase());
		case "mac":
			os = "darwin";
			// check if silicon or intel
			final process = new Process("uname -m");
			if (process.exitCode(true) != 0)
				return false;
			arch = getArch(process.stdout.readLine().toLowerCase());
		case "windows":
			os = systemName;
			ext = ".exe";
			final process = new Process("echo %PROCESSOR_ARCHITECTURE%");
			if (process.exitCode(true) != 0)
				return false;
			arch = getArch(process.stdout.readLine().toLowerCase());
		default:
			Sys.println("Unknown systemName: " + systemName);
			return false;
	}
	var file = '$os-$arch';
	if (isWindows())
		file += '.exe';
	Sys.println("GoUp installing " + file);
	if (!FileSystem.exists('bin'))
		FileSystem.createDirectory('bin');
	final url = 'https://github.com/owenthereal/goup/releases/download/v0.7.0/$file';
	final command = 'curl --silent --show-error --fail --location $url --output bin/$file';
	if (Sys.command(command) != 0) {
		Sys.println("failed to run curl");
		return false;
	}
	final goBinDir = home + "/.go/bin/";
	if (!FileSystem.exists(goBinDir))
		FileSystem.createDirectory(goBinDir);
	File.copy('bin/$file', goBinDir + executable("goup"));
	if (!isWindows())
		Sys.command('chmod u+x $goupCommand');
	var proc = new Process(goupCommand + " init --skip-prompt");
	if (proc.exitCode(true) != 0) {
		final outMessage = proc.stdout.readAll().toString();
		final errMessage = proc.stderr.readAll().toString();
		if (errMessage.indexOf('msg="symlink') != -1 || outMessage.indexOf('msg="symlink') != -1)
			return true;
		trace(outMessage);
		trace(errMessage);
		Sys.println("failed to run goup");
		return false;
	}
	return true;
}

function isWindows():Bool {
	return Sys.systemName().toLowerCase() == "windows";
}

function build(rebuild:Bool) {
	final command = executable(home + "/.go/bin/goup") + " version";
	var process = new Process(command);
	if (process.exitCode(true) != 0) {
		if (!installGoUp()) {
			Sys.println("failed to install goup");
			Sys.exit(1);
		}
	}
	process = new Process(goCommand + " version");
	var code = process.exitCode();
	if (code != 0) {
		installRequiredGoVersion();
	} else {
		var foundVersion = process.stdout.readAll().toString();
		var index = foundVersion.indexOf("go", 10);
		if (index == -1) {
			Sys.println("not valid to go version: " + foundVersion);
			Sys.exit(1);
		}
		foundVersion = foundVersion.substr(index + 2, goRequiredVersion.length);
		if (foundVersion != goRequiredVersion) {
			Sys.println("go version, got: " + foundVersion + " wanted: " + goRequiredVersion);
			installRequiredGoVersion();
		}
	}
	process.close();

	// run go compiler
	if (!FileSystem.exists("go4hx") || rebuild) {
		if (!FileSystem.exists("git/tools") || !FileSystem.exists("git/hxparser") || !FileSystem.exists("git/hxparse")) {
			// update tools submodule
			Sys.println("updating git submodules");
			Sys.command("git submodule update --init --recursive");
		}
		Sys.println("build Go part of the compiler");
		final command = goCommand + ' build .';
		Sys.println(command);
		final code = Sys.command(command);
		if (code != 0) {
			Sys.println("Failed to build Go compiler");
			Sys.exit(code);
		}
	}
	setupCPP(rebuild, [], false);
}

function setupNodeJS(rebuild:Bool, args:Array<String>) {
	Sys.println("NodeJS compiler version");
	// run nodejs
	if (!FileSystem.exists("export/build.js") || rebuild) {
		Sys.command("haxe extra/scripts/build-js.hxml");
	}
	args.unshift("export/build.js");
	// 4gb = 4096, 2gb = 2048
	// args.unshift("--max-old-space-size=4096");
	// args.unshift("--expose-gc");
	Sys.command("node", args);
}

function setupCPP(rebuild:Bool, args:Array<String>, debug:Bool) {
	Sys.println("Building Haxe part of the compiler");
	final proc = new Process("haxe -cp extra/scripts --run SetupHxcpp");
	if (proc.exitCode(true) != 0) {
		trace(proc.stdout.readAll().toString(), proc.stderr.readAll().toString());
	}
	Sys.putEnv("HXCPP_COMPILE_THREADS", "4");
	Sys.putEnv("HXCPP_COMPILE_CACHE", "~/hxcache");
	final debugSuffix = debug ? "-debug" : "";

	final fileName = executable('export/cpp/Main$debugSuffix');
	if (!FileSystem.exists("export/cpp") || !FileSystem.exists(fileName) || rebuild) {
		var cmd = 'haxe extra/scripts/build-cpp$debugSuffix.hxml';
		final code = Sys.command(cmd);
		if (code != 0) {
			Sys.println("BUILD FAILED");
			Sys.exit(1);
		}
	}
	if (args.length > 0) {
		final command = fileName + " " + args.join(" ");
		Sys.println(command);
		final code = Sys.command(fileName, args);
		if (code != 0) {
			Sys.println("COMPILER RUN FAILED: " + command);
			Sys.exit(code);
		}
	}
}

function setupJava(rebuild:Bool, args:Array<String>) {
	Sys.println("Jvm compiler version");
	// run build jvm
	if (!FileSystem.exists("export/build.jvm") || rebuild) {
		Sys.command("haxe extra/scripts/build-jvm.hxml");
	}
	args.unshift("export/build.jar");
	args.unshift("-jar");
	trace(args.join(" "));
	Sys.command("java", args);
}

function setupHashlink(rebuild:Bool, args:Array<String>) {
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
		var cmd = "haxe extra/scripts/build-hl.hxml";
		if (no_uv)
			cmd += " -D no_uv";
		if (no_fmt)
			cmd += " -D no_fmt";
		Sys.command(cmd);
	}
	args.unshift("export/build.hl");
	final command = "hl" + " " + args.join(" ");
	Sys.println(command);
	final code = Sys.command(command);
	if (code != 0) {
		Sys.println("COMPILER RUN FAILED: " + command);
		Sys.exit(code);
	}
}

function setupInterp(rebuild:Bool, args:Array<String>) {
	Sys.println("Interp compiler version");
	Sys.command("haxe extra/scripts/build-interp.hxml " + args.join(" "));
}
