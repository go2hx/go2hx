package;

import sys.FileSystem;
import utils.Network;
import typer.Typer.DataType;
import haxe.Json;
import haxe.Resource;
import haxe.ds.Vector;
import haxe.io.Bytes;
import haxe.io.Path;
import sys.io.File;

final cwd = Sys.getCwd();
final loop = Loop.getDefault();
final server = new Tcp(loop);
var clients:Array<Client> = [];
#if (target.threaded)
var processes:Array<sys.io.Process> = [];
#end
// events
var onComplete:(modules:Array<typer.Typer.Module>, data:Dynamic) -> Void = null;
var onUnknownExit:Void->Void = null;
var programArgs = [];
#if (target.threaded)
var mainThread = sys.thread.Thread.current();
#end

@:structInit
class Client {
	public var stream:Stream;
	public var runnable:Bool = true; // start out as true
	public var id:Int = 0;
	public var retries:Int = 0;

	public function new(stream, id) {
		this.stream = stream;
		this.id = id;
	}
}

/**
 * Run the compiler from the args
 * Setup the compiler and handles closing afterwards
 * @param args creates an instance from the args
 */
function runCompilerFromArgs(args:Array<String>) {
	var processCount = 1;
	var index = 0;

	if (removeArg(args, "-nogo") || removeArg(args, "--nogo"))
		processCount = 0;

	final instance = createCompilerInstanceFromArgs(args);

	Sys.println("Golang compiler instance");
	setupCompiler(instance, processCount, () -> {
		if (onComplete == null)
			onComplete = (modules, data) -> {
				closeCompiler(0, instance);
			};
		compileFromInstance(instance);
	});

	#if !js
	while (true)
		updateLoop();
	#end
}

private function removeArg(args:Array<String>, arg:String):Bool {
	final index = args.indexOf(arg);
	if (index != -1) {
		args.remove(args[index]);
		return true;
	}
	return false;
}

function createCompilerInstanceFromArgs(args:Array<String>):CompilerInstanceData {
	final args = args.copy();
	final instance = new CompilerInstanceData();
	instance.outputPath = "golibs";
	instance.root = "";
	var help = false;
	final argHandler = cli.Args.generate([
		@doc("Set what command should be used for gocmd get & gocmd mod init")
		["-gocmd", "--gocmd"] => s -> instance.goCommand = s,
		["-debug", "--debug"] => () -> instance.debugBool = true,
		["-help", "--help", "-h", "--h"] => () -> help = true,
		@doc("don't run the build commands")
		["-norun", "--norun"] => () -> instance.noRun = true, @doc("go test")
		["-nocomments", "--nocomments"] => () -> instance.noComments = true, @doc("no comments")
		["-test", "--test"] => () -> instance.test = true,
		["-bench", "--bench"] => () -> instance.bench = true,
		["-vartrace", "--vartrace", "-varTrace", "--varTrace"] => () -> instance.varTraceBool = true,
		["-stack", "--stack"] => () -> instance.stackBool = true,
		@doc("disable the usage of the build cache")
		["-no-cache", "--no-cache"] => () -> instance.useCache = false,
		@doc("clean the cache and regenerate all files")
		["-clean-cache", "--clean-cache"] => () -> instance.cleanCache = true,
		@doc("set output path or file location")
		["-output", "--output", "-o", "--o", "-out", "--out"] => out -> instance.outputPath = out,
		@doc("set the root package for all generated files")
		["-root", "--root", "-r", "--r"] => out -> instance.root = out,
		@doc("generate Haxe build file from compiler command")
		["-build", "--build"] => out -> instance.buildPath = out,
		@doc("generate build hxml from compiler commands")
		["-hxml", "--hxml"] => out -> instance.hxmlPath = out,
		@doc("add go code as a comment to the generated Haxe code")
		["-printgocode", "--printgocode"] => () -> instance.printGoCode = true,
		@doc("disable all non main packages wrapped as a haxelib library\n\nTarget:")
		["-nolibwrap", "--nolibwrap"] => () -> instance.libwrap = false,
		@doc("all non main packages wrapped as a haxelib library\n\nTarget:")
		["-libwrap", "--libwrap"] => () -> instance.libwrap = true,
		@doc('generate C++ code into target directory')
		["-cpp", "--cpp"] => out -> {
			instance.target = "cpp";
			instance.targetOutput = out;
		},
		@doc('generate JavaScript code into target file')
		["-js", "--js", ] => out -> {
			instance.target = "js";
			instance.targetOutput = out;
		},
		@doc('generate JVM bytecode into target file')
		["-jvm", "--jvm", "-java", "--java"] => out -> {
			instance.target = "jvm";
			instance.targetOutput = out;
		},
		@doc('generate Python code into target file')
		["-python", "--python"] => out -> {
			instance.target = "python";
			instance.targetOutput = out;
		},
		@doc('generate Lua code into target file')
		["-lua", "--lua"] => out -> {
			instance.target = "lua";
			instance.targetOutput = out;
		},
		@doc('generate C# code into target directory')
		["-cs", "--cs"] => out -> {
			instance.target = "cs";
			instance.targetOutput = out;
		},
		@doc('generate HashLink .hl bytecode or .c code into target file')
		["-hl", "--hl", "-hashlink", "--hashlink"] => out -> {
			instance.target = "hl";
			instance.targetOutput = out;
		},
		@doc('interpret the program using internal macro system')
		["-eval", "--eval", "-interp", "--interp"] => () -> {
			instance.target = "interp";
		}, @doc('json data of tests')
		// https://pkg.go.dev/cmd/go/internal/test#pkg-variables
		["-json", "--json"] => () -> instance.defines.push("jsonTest"),
		@doc('Do not start new tests after the first test failure.')
		["-failfast", "--failfast"] => () -> instance.defines.push("failfastTest"),
		@doc('Tell long-running tests to shorten their run time.')
		["-short", "--short"] => () -> instance.defines.push("shortTest"),
		@doc(" If a test binary runs longer than duration d, panic. If d is 0, the timeout is disabled. The default is 10 minutes (10m).")
		["-timeout", "--timeout"] => d -> instance.defines.push('timeoutTest $d'),
		@doc("Verbose output: log all tests as they are run. Also print all text from Log and Logf calls even if the test succeeds.")
		["-v", "--v", "-verbose", "--verbose"] => () -> {
			instance.verbose = true;
			instance.defines.push("verboseTest");
		},
		@doc("Remove all depedency on go2hx for the compiled code by moving the stdlib into the output")
		["-nodeps", "--nodeps", "-nodep", "--nodep"] => () -> instance.noDeps = true,
		["-port", "--port"] => port -> instance.port = Std.parseInt(port),
		@doc("Version of the compiler")
		["-version", "--version"] => () -> Sys.println(sys.io.File.getContent("version.txt")),
	]);

	argHandler.parse(args);
	for (i in 0...args.length) {
		switch args[i] {
			case "-a", "--a", "-arg", "--arg":
				programArgs = args.slice(i + 1);
				break;
		}
	}
	for (option in (argHandler.options : Array<Dynamic>)) {
		if (passthroughArgs.indexOf(option.flags[0]) != -1)
			continue;
		for (i in 0...args.length) {
			if (option.flags.indexOf(args[i]) != -1) {
				args.remove(args[i]);
				// removes the args of the flag afterwards
				for (j in 0...option.args.length)
					args.remove(args[i]);
			}
		}
	}
	instance.args = args;
	if (help) {
		printDoc(argHandler);
		closeCompiler(0, instance);
		return instance;
	}
	if (args.length <= 1) {
		closeCompiler(0, instance);
	}

	return instance;
}

private function printDoc(handler:cli.Args.ArgHandler) {
	shared.Util.successMsg("go2hx");
	Sys.print("\n");
	final max = 20;
	for (option in handler.options) {
		if (option.doc == null)
			continue;
		Sys.println(StringTools.rpad(option.flags[0], " ", max) + option.doc);
	}
}

function updateLoop() {
	loop.run(NoWait);
	#if (target.threaded)
	mainThread.events.progress();
	#end
	Sys.sleep(0.01); // wait
}

function closeCompiler(code:Int = 0, instance:Null<CompilerInstanceData> = null) {
	if (instance != null) {
		if (FileSystem.exists(instance.outputPath))
			utils.Cache.saveCache(Path.join([instance.args[instance.args.length - 1], instance.outputPath, '.go2hx_cache']));
	}

	#if (debug && !nodejs)
	if (processes.length > 0) {
		processes[0].kill();
		try {
			while (true)
				Sys.println(processes[0].stdout.readLine());
		} catch (_) {}
	}
	#end
	for (client in clients)
		client.stream.close();
	#if (target.threaded)
	for (process in processes)
		process.close();
	#end
	server.close();
	Sys.exit(code);
}

function setupCompiler(instance:CompilerInstanceData, processCount:Int = 1, allAccepted:Void->Void = null) {
	utils.Cache.setUseCache(instance.useCache);
	if (!instance.cleanCache)
		utils.Cache.loadCache(Path.join([instance.args[instance.args.length - 1], instance.outputPath, '.go2hx_cache']));

	var port = instance.port;

	#if !js
	server.bind(new sys.net.Host("127.0.0.1"), port);
	port = server.getPort();
	Sys.println('listening on local port: ${port}');
	#else
	var processCountIndex = 0;
	var resetCount = 0;
	function jsProcess() {
		final name = if (Sys.systemName() != "Windows") {
			"./go4hx";
		} else {
			"go4hx.exe";
		}
		final child = js.node.ChildProcess.exec('$name $port', null, null);
		// final child = js.node.ChildProcess.execFile('go4hx', ['$port'], {cwd: cwd}, null);
		child.on('exit', code -> {
			final code:Int = code;
			Sys.println('child process exited: $code');
			// print out output
			Sys.println(child.stdout.read());
			Sys.println(child.stderr.read());
			if (resetCount++ > 8) {
				child.kill();
				if (onUnknownExit != null)
					onUnknownExit();
			} else {
				child.kill();
				jsProcess();
			}
		});
		child.stderr.on('data', data -> {
			Sys.println('stderr: $data');
		});
		child.stdout.on('data', data -> {
			Sys.println('stdout: $data');
		});
		child.on('SIGINT', () -> {
			Sys.println('Received SIGINT. Press Control-D to exit.');
		});
	}
	#end
	// server.noDelay(true);
	for (i in 0...processCount) {
		// sys.thread.Thread.create(() -> Sys.command("./go4hx", ['$port']));
		#if (target.threaded)
		processes.push(new sys.io.Process("./go4hx", ['$port'], false));
		#else
		jsProcess();
		#end
	}
	var index = 0;
	server.listen(0, () -> {
		Sys.println("accepted connection");
		index++;
		final client:Client = {stream: server.accept(), id: -1};
		#if !hl
		client.stream.size = 8;
		#end
		clients.push(client);
		var pos = 0;
		var buff:Bytes = null;
		client.stream.readStart(bytes -> {
			if (bytes == null) {
				// health check
				#if (target.threaded)
				for (proc in processes) {
					final code = proc.exitCode(false);
					if (code == null)
						continue;
					trace("proc code:", code);
					if (code != 0) {
						Sys.print(proc.stderr.readAll());
					} else {
						Sys.print(proc.stdout.readAll());
					}
				}
				#end
				// close as stream has broken
				trace("stream has broken");
				closeCompiler(0, instance);
				return;
			}
			if (buff == null) {
				final len:Int = haxe.Int64.toInt(bytes.getInt64(0));
				instance.log("alloc " + len);
				#if !hl
				client.stream.size = len;
				#end
				buff = Bytes.alloc(len);
				bytes = bytes.sub(8, bytes.length - 8);
			}
			#if hl
			@:privateAccess buff.b.blit(pos, bytes, 0, bytes.length);
			#elseif js
			@:privateAccess buff.b.set(bytes.b, pos);
			#else
			buff.blit(pos, bytes, 0, bytes.length);
			#end
			pos += bytes.length;
			instance.log("progress: " + pos + "/" + buff.length);
			bytes = null;
			// Sys.println("pos: " + pos + " buff: " + buff.length);
			if (pos == buff.length) {
				var exportData:DataType = null;
				instance.log("uncompress start");
				var data = haxe.zip.Uncompress.run(buff);
				instance.log("uncompress complete, json parse");
				buff = null;
				exportData = haxe.Json.parse(#if js @:privateAccess data.b.toString() #else data.toString() #end);
				instance.log("json complete");
				data = null;
				// haxe.Timer.measure(() -> exportData = haxe.Json.parse(buff.toString()));
				// Sys.println("retrieved exportData");
				final index = Std.parseInt(exportData.index);
				var instance = instanceCache[index];
				instanceCache[index] = null; // reset
				// File.saveContent("export.json", Json.stringify(exportData, null, "    ")); // export out data to json
				var modules = [];
				Sys.setCwd(cwd);
				instance.log("compile");
				modules = typer.Typer.main(exportData, instance);
				instance.log("compile complete");
				exportData = null;

				// reset
				// trace("CLIENT RESET");
				client.runnable = true;
				client.retries = 0;
				pos = 0;
				buff = null;
				#if !hl
				client.stream.size = 8;
				#end
				Sys.setCwd(instance.localPath);
				if (instance.noDeps)
					createBasePkgs(Path.addTrailingSlash(instance.outputPath), modules, cwd);
				var isStdgo = false;
				var alreadyWrapped = false;
				var isMain = false;
				for (module in modules) {
					if (module.isMain) {
						isMain = true;
						break;
					}
				}
				codegen.CodeGen.sizeMap = [];
				for (module in modules) {
					if (!isStdgo)
						isStdgo = typer.Typer.stdgoList.contains(StringTools.replace(module.path, ".", "/"));
					if (instance.libwrap && !isMain && !isStdgo && !alreadyWrapped) {
						alreadyWrapped = true;
						final name = module.name;
						final libPath = name + "/";
						instance.outputPath = Path.addTrailingSlash(instance.outputPath) + libPath;
						// sys.io.File.saveContent(Path.addTrailingSlash(instance.outputPath) + "haxelib.json");
						codegen.CodeGen.create(instance.outputPath, module, instance.root);
						final cmd = 'haxelib dev $name ${instance.outputPath}';
						Sys.println(cmd);
						Sys.command(cmd);
						Sys.println('Include lib: -lib $name');
					} else {
						codegen.CodeGen.create(Path.addTrailingSlash(instance.outputPath), module, instance.root);
					}
				}
				logGenSizes();
				runBuildTools(modules, instance, programArgs);
				Sys.setCwd(cwd);
				onComplete(modules, instance.data);
				#if nodejs
				if (js.Node.global.gc != null)
					js.Node.global.gc();
				#elseif hl
				hl.Gc.major();
				#end
				modules = null;
				instance = null;
				programArgs = null;
			}
		});
		if (index >= processCount && allAccepted != null)
			allAccepted();
	});
	#if js
	@:privateAccess server.s.listen(port, () -> {
		port = server.getPort();
		Sys.println('nodejs server listening on local port: ${port}');
	});
	#end
}

private function logGenSizes() {
	final sizeMap = codegen.CodeGen.sizeMap;
	// log size maps
	var lSize = 0;
	for (path => size in sizeMap) {
		if (path.length > lSize)
			lSize = path.length;
	}
	for (path => size in sizeMap) {
		Sys.println('    ${StringTools.rpad(path, " ", lSize)} - ${size}kb');
	}
}

private function createBasePkgs(outputPath:String, modules:Array<typer.Typer.Module>, cwd:String) {
	Sys.println("create base pkgs: " + outputPath);
	if (!FileSystem.exists(outputPath + "/stdgo"))
		FileSystem.createDirectory(outputPath + "/stdgo");
	for (file in FileSystem.readDirectory(cwd + "/stdgo")) {
		if (Path.extension(file) == "hx") {
			final content = File.getContent(cwd + "/stdgo/" + file);
			File.saveContent(outputPath + "/stdgo/" + file, content);
		}
	}

	Sys.println("copy directory: " + cwd + " to: " + outputPath);
	shared.Util.copyDirectoryRecursively(cwd + "/haxe", outputPath + "/haxe");
	final path = "/stdgo/_internal";
	shared.Util.copyDirectoryRecursively(cwd + path, outputPath + path);
	for (file in FileSystem.readDirectory(cwd + path)) {
		if (Path.extension(file) == "hx") {
			final content = File.getContent(cwd + path + file);
			File.saveContent(outputPath + path + file, content);
		}
	}
}

function targetLibs(target:String):String {
	return switch target {
		case "jvm":
			"-lib hxjava";
		case "cs":
			"-lib hxcs";
		case "cpp":
			"-lib hxcpp";
		case "js":
			"-lib hxnodejs";
		default:
			"";
	}
}

function mainPaths(modules:Array<typer.Typer.Module>):Array<String> {
	final paths:Array<String> = [];
	for (module in modules) {
		if (module == null || !module.isMain || module.files[0] == null || !module.files[0].isMain)
			continue;
		var path = module.path;
		var name = module.files[0].name;
		if (path != "")
			path += ".";
		path += name;
		paths.push(path);
	}
	return paths;
}

function mainPkgs(modules:Array<typer.Typer.Module>):Array<String> {
	final paths:Array<String> = [];
	for (module in modules) {
		if (module == null || !module.isMain || module.files[0] == null || !module.files[0].isMain)
			continue;
		var path = module.path;
		paths.push(path);
	}
	return paths;
}

private function runBuildTools(modules:Array<typer.Typer.Module>, instance:CompilerInstanceData, args:Array<String>) {
	if (instance.target == "") {
		if (instance.test) {
			if (!instance.noRun) {
				instance.target = "hl"; // default test target
				instance.targetOutput = "test.hl";
			}
		} else {
			instance.noRun = true;
		}
	}
	final paths = mainPaths(modules);
	final commands = [];
	if (!instance.noDeps) {
		commands.push("-lib");
		commands.push("go2hx");
	} else {
		shared.Util.hxmlToArgs(cwd + "/extraParams.hxml", commands);
	}
	var cp = instance.outputPath;
	if (cp != "") {
		commands.push("-cp");
		commands.push(cp);
	}
	for (define in instance.defines) {
		commands.push("-D");
		commands.push(define);
	}
	if (instance.bench) {
		commands.push("-D");
		commands.push("bench");
	}
	if (instance.target != "" && instance.target != "interp") {
		final main = paths.length > 0 ? paths[0] : "";
		for (command in buildTarget(instance.target, instance.targetOutput).split(" "))
			commands.push(command);
		for (command in targetLibs(instance.target).split(" "))
			commands.push(command);
	}
	if (!instance.noRun && instance.target != "") {
		for (main in paths) {
			if (instance.root != "") {
				main = instance.root + (main == "" ? "" : "." + parseMain(main));
			} else {
				main = parseMain(main);
			}
			var commands = commands.concat(['-m', main]); // copy
			if (instance.target == "interp") {
				commands = commands.concat(buildTarget(instance.target, "").split(" "));
				commands = commands.concat(args);
			}
			final cliCommands = commands.copy();
			if (instance.noDeps) {
				final macroDefine = "--macro";
				for (i in 0...cliCommands.length) {
					if (i > 0 && cliCommands[i - 1] == macroDefine) {
						cliCommands[i] = '"' + cliCommands[i] + '"';
					}
				}
			}
			Sys.println('haxe ' + cliCommands.join(" "));
			Sys.command('haxe ' + cliCommands.join(" ")); // build without build file
			// trace("main: " + main);
			final runCommand = runTarget(instance.target, instance.targetOutput, args, main);
			if (runCommand != "") {
				Sys.println(runCommand);
				Sys.command(runCommand);
			}
		}
	}
	if (instance.buildPath != "") { // create build file
		final mains = [for (path in paths) shared.Util.makeExpr(path)];
		final base = [for (command in commands) shared.Util.makeExpr(command)];
		final expr = macro function main() {
			final base = $a{base};
			final mains = $a{mains};
			for (main in mains)
				Sys.command('haxe', base.concat(['-m', main]));
		}
		if (!StringTools.endsWith(instance.buildPath, ".hx"))
			instance.buildPath += ".hx";
		final content = new haxe.macro.Printer("    ").printExpr(expr);
		File.saveContent(instance.buildPath, content);
		// Sys.println('Generated: $buildPath - ' + shared.Util.kbCount(content) + "kb");
	}

	if (instance.hxmlPath != "") {
		if (paths.length == 0 && !instance.noRun) {
			trace(instance.hxmlPath);
			throw "No main found";
		}
		if (!StringTools.endsWith(instance.hxmlPath, ".hxml"))
			instance.hxmlPath += ".hxml";
		final pkgs = mainPkgs(modules);
		for (i in 0...paths.length) {
			final main = parseMain(paths[i]);
			var content = "-m " + main + "\n";
			for (i in 0...Std.int(commands.length / 2)) {
				content += commands[i * 2] + " " + commands[i * 2 + 1] + "\n";
			}
			var hxmlPath = instance.hxmlPath;
			var replaceIndex = hxmlPath.indexOf("$");
			if (replaceIndex != -1) {
				var hxmlFile = StringTools.replace(pkgs[i], ".", "_");
				hxmlPath = hxmlPath.substr(0, replaceIndex) + hxmlFile + hxmlPath.substr(replaceIndex + 1);
			}
			content = content.substr(0, content.length - 1);
			File.saveContent(hxmlPath, content);
			Sys.println('Generated:\n' + hxmlPath + ' - ' + shared.Util.kbCount(content) + "kb");
		}
	}
}

private function parseMain(main:String):String {
	final index = main.indexOf("_test.");
	if (index == -1)
		return '_internal.$main';
	var s = main.substr(0, index);
	s = StringTools.replace(s, ".", "/");
	// main = StringTools.replace(main, "_test.", ".");
	return '_internal.$main';
}

function libTarget(target:String):String {
	return switch target {
		case "cpp", "cs":
			'-lib hx$target';
		case "jvm", "java":
			"-lib hxjava";
		default:
			"";
	}
}

function buildTarget(target:String, out:String, ?main:String, ?args:Array<String>):String {
	return switch target {
		case "hl":
			'--hl $out';
		case "jvm", "cpp", "cs", "js", "lua", "python", "php", "neko":
			'--$target $out';
		case "interp":
			if (main != null && args != null) {
				'--run $main ' + args.join(" ");
			} else {
				"--interp";
			}
		default:
			throw "unknown target: " + target;
	}
}

function runTarget(target:String, out:String, args:Array<String>, main:String):String {
	final index = main.lastIndexOf(".");
	if (index != -1)
		main = main.substr(index + 1);
	var s = switch target {
		case "interp":
			"";
		case "cpp", "cs":
			"./" + out + "/" + main;
		case "jvm":
			'java -jar $out';
		case "python":
			if (Sys.systemName() == "Mac") {
				'python3 $out';
			} else {
				'python $out';
			}
		case "hl", "neko", "lua", "php":
			'$target $out';
		case "js":
			// --stack-size set because bytes.growSize Maximum call stack size exceeded
			'node --stack-size=65500 $out';
		default:
			throw "unknown target: " + target;
	};
	if (args != null && args.length > 0)
		s += " " + args.join(" ");
	return s;
}

function compileFromInstance(instance:CompilerInstanceData):Bool {
	if (instance.localPath == "")
		instance.localPath = instance.args[instance.args.length - 1];
	var httpsString = "https://";
	for (i in 0...instance.args.length - 1) {
		var path = instance.args[i];
		if (path.charAt(0) == "-")
			continue; // skip flags
		if (StringTools.startsWith(path, httpsString)) {
			path = path.substr(httpsString.length);
			instance.args[i] = path;
		}

		if (Path.extension(path) == "go" || path.charAt(0) == "." || path.indexOf("/") == -1)
			continue;

		if (typer.Typer.stdgoList.indexOf(path) != -1)
			continue;
		var command = '${instance.goCommand} get $path';
		Sys.setCwd(instance.localPath);
		#if (target.threaded)
		final proc = new sys.io.Process('${instance.goCommand} mod init go2hxlib');
		proc.exitCode();
		proc.close();
		#else
		Sys.command('${instance.goCommand} mod init go2hxlib');
		#end
		Sys.println(command);
		Sys.command(command);
		Sys.setCwd(cwd);
	}
	return write(instance.args, instance);
}

function getClient() {
	for (client in clients) {
		if (client.runnable)
			return client;
		if (++client.retries > 2 * 240) { // 240 seconds
			trace("Client has retried too many times, giving up");
			trace(instanceCache[client.id].data, client.id);
		}
	}
	return null;
}

function write(args:Array<String>, instance:CompilerInstanceData):Bool {
	final client = getClient();
	if (client == null)
		return false;
	for (i in 0...instanceCache.length) {
		if (instanceCache[i] != null)
			continue;
		client.id = i;
		instanceCache[i] = instance;
		args.unshift('$i');
		break;
	}
	client.stream.write(Bytes.ofString(args.join(" ")));
	client.runnable = false;
	return true;
}

final instanceCache = new Vector<CompilerInstanceData>(20);

class CompilerInstanceData {
	public var goCommand:String = "go";
	public var verbose:Bool = false;
	public var debugBool:Bool = false;
	public var noDeps:Bool = false;
	public var varTraceBool:Bool = false;
	public var stackBool:Bool = false;
	public var args:Array<String> = [];
	public var data:Dynamic = null;
	public var printGoCode = false;
	public var localPath = "";
	public var target = "";
	public var port:Int = 0;
	public var targetOutput = "";
	public var libwrap = false;
	public var outputPath:String = "";
	public var root:String = "";
	public var buildPath:String = "";
	public var externBool:Bool = false;
	public var hxmlPath:String = "";
	public var noRun:Bool = false;
	public var noComments:Bool = false;
	public var useCache:Bool = true;
	public var cleanCache:Bool = false;
	public var test:Bool = false;
	public var bench:Bool = false;

	public var noCommentsBool:Bool = false;

	public final defines:Array<String> = [];

	public function new(args:Array<String> = null) {
		if (args != null)
			this.args = args;
	}

	public function log(s:String) {
		if (!verbose)
			return;
		Sys.println(s);
	}
}

final passthroughArgs = ["-log", "--log", "-test", "--test", "-nodeps", "--nodeps", "-debug", "--debug"];
