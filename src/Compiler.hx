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
var instance:CompilerInstanceData = null;
#if target.threaded
final threadPool = new utils.ThreadPool(4);
final threadData = new sys.thread.Deque<haxe.io.Bytes>();
#end

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
function receivedData(buff:Bytes) {
	var stamp = haxe.Timer.stamp();
	function measureTime():Float {
		final nextStamp = haxe.Timer.stamp();
		final diff = nextStamp - stamp;
		stamp = nextStamp;
		return diff;
	}
	final instance = getInstanceData();
	final data:typer.GoAst.PackageType = decodeData(buff);
	final decodeDataTime = measureTime();
	// IMPORTANT: typing phase Go AST -> Haxe AST
	final module = typer.Package.typePackage(data, instance);
	final typePackageTime = measureTime();
	// generate the code
	codegen.CodeGen.create(instance.localPath + instance.outputPath, module, instance.root);
	mutex.acquire();
	final countPkgs = modules.push(module);
	mutex.release();
	final codeGenTime = measureTime();
	Sys.println(module.path + " " + countPkgs + "/" + instance.totalPkgs);
	if (instance.times) {
		Sys.println("- decodeData : " + decodeDataTime);
		Sys.println("- typePackage: " + typePackageTime);
		Sys.println("- codeGen    : " + codeGenTime);
	}
}

function end(instance:CompilerInstanceData) {
	Sys.setCwd(cwd);
	final mains = mainPaths(modules);
	if (instance.printMain) {
		File.saveContent("main.txt", mains[0]);
	}
	onComplete(modules, instance.data);
	programArgs = null;
	modules = [];
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
		["-help", "--help", "-h", "--h"] => () -> help = true,
		@doc("don't run go4hx, set it up manually")
		["-nogo4hx", "--nogo4hx"] => () -> instance.noRunGo4hx = true, 
		@doc("go test")
		["-nocomments", "--nocomments"] => () -> instance.noComments = true, 
		@doc("no comments")
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
		["-printmain", "--printmain"] => () -> instance.printMain = true,
		["-times", "--times"] => () -> instance.times = true,
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
	if (instance.noRunGo4hx)
		Sys.println('listening on local port: $port');
	startGo4hx(port);
	accept(server, ready);
}

function startGo4hx(port:Int) {
	//return;
	resetCount = 0;
	//sys.thread.Thread.create(() -> Sys.command("./go4hx", ['' + port]));
	if (instance == null || !instance.noRunGo4hx)
		process = new sys.io.Process("./go4hx", ['' + port]);
}
function accept(server:Socket, ready:Void->Void) {
	if (instance == null)
		instance = new CompilerInstanceData();
	client = server.accept();
	if (instance.noRunGo4hx)
		Sys.println("accepted connection");
	if (ready != null)
		ready();
	while (true) {
		Sys.setCwd(cwd);
		instance.totalPkgs = getLength(client.input.read(8));
		if (instance.totalPkgs == 0) {
			Sys.println("0 packages to compile");
			end(instance);
			continue;
		}
		var startedPkgs = 0;
		var stamp = haxe.Timer.stamp();
		var depsSent = false;
		while (true) {
			final buffLength = getLength(client.input.read(8));
			final buff = client.input.read(buffLength);
			if (!depsSent) {
				depsSent = true;
				instance.deps = decodeData(buff).deps;
				printDeps(instance.deps);
			}else{
				#if target.threaded
				while (threadPool.threadsCount >= threadPool.maxThreadsCount) {
					Sys.sleep(0.001);
				}
				threadPool.run(() -> {
					receivedData(buff);
				});
				#else
				receivedData(buff);
				#end
				startedPkgs++;
				if (startedPkgs >= instance.totalPkgs) {
					Sys.println("threadData load: " + (haxe.Timer.stamp() - stamp));
					break;
				}
			}
		}
		while (true) {
			mutex.acquire();
			if (modules.length != 0) {
				mutex.release();
				break;
			}
			mutex.release();
			Sys.sleep(0.001);
		}
		#if target.threaded
		while (threadPool.threadsCount > 0) {
			trace(threadPool.threadsCount);
			Sys.sleep(0.5);
		}
		#end
		end(instance);
	}
}

private inline function getInstanceData():CompilerInstanceData {
	mutex.acquire();
	final instanceCopy = instance.copy();
	mutex.release();
	return instanceCopy;
}


private function printDeps(deps:Array<Dep>, tab:String="") {
	for (dep in deps) {
		var extra = "";
		if (dep.skipped)
			extra = "*";
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

function compileFromInstance(inst:CompilerInstanceData):Bool {
	instance = inst;
	if (instance.localPath == "")
		instance.localPath = haxe.io.Path.addTrailingSlash(instance.args[instance.args.length - 1]);
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
	return write(instance);
}

function write(instance:CompilerInstanceData):Bool {
	final args = instance.args;
	args.unshift(instance.outputPath);
	final bytes = Bytes.ofString(args.join(" "));
	client.output.bigEndian = false;
	final lenBytes = Bytes.alloc(4);
	lenBytes.setInt32(0, bytes.length);
	client.output.write(lenBytes);
	client.output.write(bytes);
	return true;
}

class CompilerInstanceData {
	public var times:Bool = false;
	public var printMain:Bool = false;
	public var deps:Array<Dep> = [];
	public var countPkgs:Int = 0;
	public var totalPkgs:Int = 0;
	public var goCommand:String = "go";
	public var verbose:Bool = false;
	public var noDeps:Bool = false;
	public var varTraceBool:Bool = false;
	public var stackBool:Bool = false;
	public var args:Array<String> = [];
	public var data:Dynamic = null;
	public var printGoCode = false;
	public var localPath = "";
	public var port:Int = 0;
	public var targetOutput = "";
	public var libwrap = false;
	public var outputPath:String = "";
	public var root:String = "";
	public var buildPath:String = "";
	public var externBool:Bool = false;
	public var hxmlPath:String = "";
	public var noRunGo4hx:Bool = false;
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
		instance.printMain = printMain;
		instance.countPkgs = countPkgs;
		instance.totalPkgs = totalPkgs;
		instance.goCommand = goCommand;
		instance.verbose = verbose;
		instance.noDeps = noDeps;
		instance.varTraceBool = varTraceBool;
		instance.stackBool = stackBool;
		instance.args = args.copy();
		instance.data = Reflect.copy(data);
		instance.printGoCode = printGoCode;
		instance.localPath = localPath;
		instance.port = port;
		instance.targetOutput = targetOutput;
		instance.libwrap = libwrap;
		instance.outputPath = outputPath;
		instance.root = root;
		instance.buildPath = buildPath;
		instance.externBool = externBool;
		instance.hxmlPath = hxmlPath;
		instance.noRunGo4hx = noRunGo4hx;
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
var process:Dynamic = null;
var mutex = #if target.threaded new sys.thread.Mutex(); #else {acquire: () -> {}, release: () -> {}}; #end
var programArgs = [];

typedef Dep = {
	path:String,
	skipped:Bool,
	deps:Array<Dep>,
}