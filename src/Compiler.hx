package;

/**
 * Compiler holds the API to call the compiler and use various callbacks
 */
import sys.FileSystem;
import haxe.Json;
import haxe.Resource;
import haxe.ds.Vector;
import haxe.io.Bytes;
import haxe.io.Path;
import sys.io.File;
import sys.net.Socket;

// events
var onComplete:(modules:Array<typer.HaxeAst.Module>, data:Dynamic) -> Void = null;
var onUnknownExit:Void->Void = null;
var modules:Array<typer.HaxeAst.Module> = [];
var runningList:Array<Task> = [];
var instance:CompilerInstanceData = null;


@:structInit
class Task {
	public var stamp:Float = 0;
	public var path:String = "";
	public var state:TaskState = TYPING;
	public function new(stamp, path) {
		this.stamp = stamp;
		this.path = path;
	}
}

enum TaskState {
	TYPING;
	PRINTING;
	END;
}

/**
 * All of the Go AST and type information has been sent over the network.
 * 1. Uncompress it.
 * 2. Parse it as JSON.
 * 3. Set current working directory.
 * 4. Typing phase GO AST -> Haxe AST transformations
 * 5. Generate code from the result of typing.
 * 6. Run go2hx's build tools if applicable.
 * 7. Call onComplete.
 * @param instance 
 * @param buff 
 * @param client 
 */
private function receivedData(instance:CompilerInstanceData, buff:Bytes) {
	var stamp = haxe.Timer.stamp();
	function measureTime():Float {
		final nextStamp = haxe.Timer.stamp();
		final diff = nextStamp - stamp;
		stamp = nextStamp;
		return diff;
	}
	final data:typer.GoAst.PackageType = decodeData(buff);
	#if (cpp && HXCPP_TRACY)
	//cpp.vm.tracy.TracyProfiler.zoneScoped(data.path);
	//cpp.vm.tracy.TracyProfiler.setThreadName(data.path);
	#end
	final decodeDataTime = measureTime();
	mutex.acquire();
	final task:Task = {stamp: haxe.Timer.stamp(), path: data.path};
	runningList.push(task);
	mutex.release();
	// IMPORTANT: typing phase Go AST -> Haxe AST
	Sys.setCwd(cwd);
	final module = typer.Package.typePackage(data, instance);
	Sys.setCwd(instance.localPath);
	final typePackageTime = measureTime();
	mutex.acquire();
	task.state = PRINTING;
	modules.push(module);
	mutex.release();
	// generate the code
	codegen.CodeGen.create(instance.outputPath, module, instance.root);
	final codeGenTime = measureTime();
	mutex.acquire();
	task.state = END;
	instance.countPkgs++;
	runningList.remove(task);
	//Sys.println(instance.countPkgs + "/" + instance.totalPkgs);
	Sys.println(module.path + " " + instance.countPkgs + "/" + instance.totalPkgs);
	Sys.println("- decodeData : " + decodeDataTime);
	Sys.println("- typePackage: " + typePackageTime);
	Sys.println("- codeGen    : " + codeGenTime);
	Sys.println("- total      : " + (decodeDataTime + typePackageTime + codeGenTime));
	if (instance.countPkgs >= instance.totalPkgs) {
		end(instance);
	}
	mutex.release();
}

function end(instance:CompilerInstanceData) {
	if (instance.noDeps)
		createBasePkgs(instance.outputPath, modules, cwd);
	runBuildTools(modules, instance, programArgs);
	Sys.setCwd(cwd);
	onComplete(modules, instance.data);
	programArgs = null;
	modules = [];
	runningList = [];
}

function decodeData(buff):Dynamic {
	final uncompressedData = haxe.zip.Uncompress.run(buff);
	final result = haxe.Json.parse(uncompressedData.toString());
	// final result = haxe.Json.parse(buff.toString());
	return result;
}

function runGC() {
	#if nodejs
	if (js.Node.global.gc != null)
		js.Node.global.gc();
	#elseif hl
	hl.Gc.major();
	#elseif cpp
	cpp.vm.Gc.run(true);
	#end
}

/**
 * Run the compiler from the args
 * Setup the compiler and handles closing afterwards
 * @param args creates an instance from the args
 */
function runCompilerFromArgs(args:Array<String>) {
	if (args.length == 0) {
		Sys.println("no arguments given to compiler");
		return;
	}

	instance = createCompilerInstanceFromArgs(args);

	Sys.println("Golang compiler instance");
	setupCompiler(() -> {
		if (onComplete == null)
			onComplete = (modules, data) -> {
				closeCompiler(0);
			};
		compileFromInstance(instance);
	});
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
	instance.outputPath = "golibs/";
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
		["-output", "--output", "-o", "--o", "-out", "--out"] => out -> instance.outputPath = Path.addTrailingSlash(out),
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
	final options:Array<{args:Array<Dynamic>, flags:Array<Dynamic>}> = argHandler.options;
	for (option in options) {
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
		closeCompiler(0);
		return instance;
	}
	if (args.length <= 1) {
		closeCompiler(0);
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

function closeCompiler(code:Int = 0) {
	Sys.println("CLOSE COMPILER");
	if (process != null)
		process.close();
	Sys.exit(code);
}

var resetCount = 0;

function setupCompiler(ready:Void->Void) {
	var port = 0;
	if (instance != null)
		port = instance.port;
	server.bind(new sys.net.Host("127.0.0.1"), port);
	server.listen(1);
	port = server.host().port;
	if (instance != null)
		instance.port = port;
	Sys.println('listening on local port: $port');
	startGo4hx(port);
	accept(server, ready);
}

function startGo4hx(port:Int) {
	resetCount = 0;
	#if (target.threaded)
	//sys.thread.Thread.create(() -> Sys.command("./go4hx", ['' + port]));
	process = new sys.io.Process("./go4hx", ['' + port], false);
	#else
	jsProcess(port);
	#end
}
function accept(server:Socket, ready:Void->Void) {
	if (instance == null)
		instance = new CompilerInstanceData();
	Sys.println("accepted connection");
	client = server.accept();
	if (ready != null)
		ready();
	var buffSize = 0;
	Sys.setCwd(cwd);
	while (true) {
		buffSize = 0;
		try {
			instance.totalPkgs = getLength(client.input.read(8));
		}catch(e) {
			//trace(e);
			//Sys.sleep(2);
			throw e;
		}
		var startedPkgs = 0;
		while (true) {
			final buff = client.input.read(getLength(client.input.read(8)));
			final b = Bytes.alloc(buff.length);
			b.blit(0, buff, 0, buff.length);
			if (instance.deps.length == 0) {
				instance.deps = decodeData(b).deps;
				printDeps(instance.deps);
			}else{
				/*#if (target.threaded && !macro)
				inline function checkWait():Bool
					return threadPool.runningCount >= threadPool.maxThreadsCount;
				if (checkWait()) {
					slowThreadCheck();
				}
				while (checkWait()) {
					Sys.sleep(0.01);
				}
				threadPool.run(() -> receivedData(instance, b));
				#else*/
				receivedData(instance, b);
				//#end
				startedPkgs++;
				if (startedPkgs >= instance.totalPkgs) {
					break;
				}
			}
		}
	}
}

private function printDeps(deps:Array<Dep>, tab:String="") {
	for (dep in deps) {
		var extra = "";
		if (dep.excluded)
			continue;
		Sys.println(tab + dep.path + extra);
		if (dep.deps != null && dep.deps.length > 0)
			printDeps(dep.deps, tab + "  ");
	}
}

private function setBytes(buff:Bytes, bytes:Bytes, pos:Int):Int {
	buff.blit(pos, bytes, 0, bytes.length);
	return pos + bytes.length;
}

function getLength(bytes:haxe.io.Bytes):Int {
	return haxe.Int64.toInt(bytes.getInt64(0));
}

function createBuffer(client, bytes, instance):Bytes {
	final len:Int = getLength(bytes);
	instance.log("alloc " + len);
	client.stream.size = len;
	return Bytes.alloc(len);
}

function healthCheck(instance) {
	// health check
	#if (target.threaded)
	if (process != null) {
		final code = process.exitCode(false);
		if (code == null)
			return;
		trace("proc code:", code);
		if (code != 0) {
			Sys.print(process.stderr.readAll());
		} else {
			Sys.print(process.stdout.readAll());
		}
	}
	#end
	// close as stream has broken
	trace("stream has broken");
	closeCompiler(0);
	return;
}

function slowThreadCheck() {
	#if target.threaded
	final stamp = haxe.Timer.stamp();
	final max = 15;
	for (task in runningList) {
		final diff = stamp - task.stamp;
		//trace(task.path, diff);
		if (diff > max) {
			Sys.println('*TASK - ${task.path} ${task.state} slow: $diff');
		}
	}
	#end
}

private function createBasePkgs(outputPath:String, modules:Array<typer.HaxeAst.Module>, cwd:String) {
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
		case "jvm": "-lib hxjava";
		case "cs": "-lib hxcs";
		case "cpp": "-lib hxcpp";
		case "js": "-lib hxnodejs";
		default:
			"";
	}
}

function mainPaths(modules:Array<typer.HaxeAst.Module>):Array<String> {
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

function mainPkgs(modules:Array<typer.HaxeAst.Module>):Array<String> {
	final paths:Array<String> = [];
	for (module in modules) {
		if (module == null || !module.isMain || module.files[0] == null || !module.files[0].isMain)
			continue;
		var path = module.path;
		paths.push(path);
	}
	return paths;
}

private function runBuildTools(modules:Array<typer.HaxeAst.Module>, instance:CompilerInstanceData, args:Array<String>) {
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
			var commands = ['-m', main].concat(commands); // copy
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
		case "cpp", "cs": '-lib hx$target';
		case "jvm", "java": "-lib hxjava";
		default:
			"";
	}
}

function buildTarget(target:String, out:String, ?main:String, ?args:Array<String>):String {
	return switch target {
		case "hl": '--hl $out';
		case "jvm", "cpp", "cs", "js", "lua", "python", "php", "neko": '--$target $out';
		case "interp": if (main != null && args != null) {
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

function compileFromInstance(inst:CompilerInstanceData):Bool {
	instance = inst;
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
		if (io.Data.stdgoList.indexOf(path) != -1)
			continue;
		final goCommand = instance.goCommand;
		var command = '$goCommand get $path';
		Sys.setCwd(instance.localPath);
		#if (target.threaded)
		final proc = new sys.io.Process('$goCommand mod init go2hxlib');
		proc.exitCode();
		proc.close();
		#else
		Sys.command('$goCommand mod init go2hxlib');
		#end
		Sys.println(command);
		Sys.command(command);
		Sys.setCwd(cwd);
	}
	return write(instance.args, instance);
}

function write(args:Array<String>, instance:CompilerInstanceData):Bool {
	final bytes = Bytes.ofString(args.join(" "));
	client.output.bigEndian = false;
	final lenBytes = Bytes.alloc(4);
	lenBytes.setInt32(0, bytes.length);
	client.output.write(lenBytes);
	client.output.write(bytes);
	return true;
}

class CompilerInstanceData {
	public var deps:Array<Dep> = [];
	public var countPkgs:Int = 0;
	public var totalPkgs:Int = 0;
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
	public var defines:Array<String> = [];

	public function new(args:Array<String> = null) {
		if (args != null)
			this.args = args;
	}

	public function log(s:String) {
		if (!verbose)
			return;
		Sys.println(s);
	}
	public function copy():CompilerInstanceData {
		final instance = new CompilerInstanceData();
		instance.deps = deps.copy();
		instance.countPkgs = countPkgs;
		instance.totalPkgs = totalPkgs;
		instance.goCommand = goCommand;
		instance.verbose = verbose;
		instance.debugBool = debugBool;
		instance.noDeps = noDeps;
		instance.varTraceBool = varTraceBool;
		instance.stackBool = stackBool;
		instance.args = args.copy();
		instance.data = Reflect.copy(data);
		instance.printGoCode = printGoCode;
		instance.localPath = localPath;
		instance.target = target;
		instance.port = port;
		instance.targetOutput = targetOutput;
		instance.libwrap = libwrap;
		instance.outputPath = outputPath;
		instance.root = root;
		instance.buildPath = buildPath;
		instance.externBool = externBool;
		instance.hxmlPath = hxmlPath;
		instance.noRun = noRun;
		instance.noComments = noComments;
		instance.useCache = useCache;
		instance.cleanCache = cleanCache;
		instance.test = test;
		instance.bench = bench;
		instance.noCommentsBool = noCommentsBool;
		instance.defines = defines.copy();
		return instance;
	}
}

// global vars
final passthroughArgs = ["-log", "--log", "-test", "--test", "-nodeps", "--nodeps", "-debug", "--debug"];
final cwd = Sys.getCwd();
final server = new Socket();
var client:Socket = null;
#if (target.threaded && !macro)
var threadPool = new utils.ThreadPool(4);
#end
#if target.threaded
var mainThread = sys.thread.Thread.current();
#end
var process:Dynamic = null;
var mutex = #if target.threaded new sys.thread.Mutex(); #else {acquire: () -> {}, release: () -> {}}; #end
var programArgs = [];

typedef Dep = {
	path:String,
	excluded:Bool,
	deps:Array<Dep>,
}

#if js
function jsProcess(instance) {
	final name = if (Sys.systemName() != "Windows") {
		"./go4hx";
	} else {
		"go4hx.exe";
	}
	process = js.node.ChildProcess.exec('$name ${instance.port}', null, null);
	process.on('exit', code -> {
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
			jsProcess(instance);
		}
	});
	process.stderr.on('data', data -> {
		Sys.println('stderr: $data');
	});
	process.stdout.on('data', data -> {
		Sys.println('stdout: $data');
	});
	process.on('SIGINT', () -> {
		Sys.println('Received SIGINT. Press Control-D to exit.');
	});
}
#end
