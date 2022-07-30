// ! -lib hxnodejs
package;

import Network;
import Typer.DataType;
import haxe.Json;
import haxe.Resource;
import haxe.ds.Vector;
import haxe.io.Bytes;
import haxe.io.Path;
import stdgo.StdGoTypes;
import sys.io.File;
import sys.io.Process;

final cwd = Sys.getCwd();
final loop = Loop.getDefault();
final server = new Tcp(loop);
var clients:Array<Client> = [];
var processes:Array<Process> = [];
var onComplete:(modules:Array<Typer.Module>, data:Dynamic) -> Void = null;
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

function main() {
	var args = Sys.args();
	// args = ["-test", "time", Sys.getCwd()];
	run(args);
}

final passthroughArgs = [
	"-log",
	"--log",
	"-test",
	"--test",
	"-extern",
	"--extern",
	"-externs",
	"--externs"
];

function run(args:Array<String>) {
	final instance = compileArgs(args);
	Sys.println("create compiler instance");
	setup(0, 1, () -> {
		if (onComplete == null)
			onComplete = (modules, data) -> {
				close();
			};
		if (args.length <= 1) {
			Repl.init();
		} else {
			compile(instance);
		}
	});
	#if !js
	while (true)
		update();
	#end
}

function compileArgs(args:Array<String>):InstanceData {
	final args = args.copy();
	final instance = new InstanceData();
	instance.outputPath = "golibs";
	instance.root = "";
	var help = false;
	final argHandler = Args.generate([
		["-help", "--help", "-h", "--h"] => () -> help = true,
		@doc("don't run the build commands")
		["-norun", "--norun"] => () -> instance.noRun = true, @doc("go test")
		["-nocomments", "--nocomments"] => () -> instance.noComments = true, @doc("no comments")
		["-test", "--test"] => () -> instance.test = true,
		@doc("generate externs exported module fields only with no func exprs")
		["-extern", "--extern", "-externs", "--externs"] => () -> instance.externBool = true,
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
		@doc("all non main packages wrapped as a haxelib library to be used\n\nTarget:")
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
		["-v", "--v"] => () -> instance.defines.push("verboseTest"),
	]);
	argHandler.parse(args);
	for (i in 0...args.length) {
		switch args[i] {
			case "-a", "--a", "-arg", "--arg":
				programArgs = args.slice(i + 1);
				break;
		}
	}
	for (option in argHandler.options) {
		if (passthroughArgs.indexOf(option.flags[0]) != -1)
			continue;
		for (i in 0...args.length) {
			if (option.flags.indexOf(args[i]) != -1) {
				args.remove(args[i]);
				for (j in 0...option.args.length)
					args.remove(args[i]);
			}
		}
	}
	instance.args = args;
	if (help) {
		printDoc(argHandler);
		close();
		return instance;
	}
	return instance;
}

private function printDoc(handler:Args.ArgHandler) {
	shared.Util.successMsg("go2hx");
	Sys.print("\n");
	final max = 20;
	for (option in handler.options) {
		if (option.doc == null)
			continue;
		Sys.println(StringTools.rpad(option.flags[0], " ", max) + option.doc);
	}
}

function update() {
	loop.run(NoWait);
	#if (target.threaded)
	mainThread.events.progress();
	#end
	Sys.sleep(0.5); // wait
}

function close() {
	#if debug
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
	for (process in processes)
		process.close();
	server.close();
	Sys.exit(0);
}

function setup(port:Int = 0, processCount:Int = 1, allAccepted:Void->Void = null) {
	if (port == 0)
		port = 6114 + Std.random(200); // random range in case port is still bound from before
	Sys.println('listening on local port: $port');
	#if !js
	server.bind(new sys.net.Host("127.0.0.1"), port);
	#end

	// server.noDelay(true);
	for (i in 0...processCount) {
		// sys.thread.Thread.create(() -> Sys.command("./go4hx", ['$port']));
		#if (target.threaded)
		processes.push(new sys.io.Process("./go4hx", ['$port'], false));
		#else
		final child = js.node.ChildProcess.exec('./go4hx $port', null, null);
		child.on('exit', code -> {
			final code:Int = code;
			Sys.println('child process exited: $code');
			Sys.exit(code);
		});
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
				// close as stream has broken
				trace("stream has broken");
				close();
				return;
			}
			if (buff == null) {
				final len:Int = haxe.Int64.toInt(bytes.getInt64(0));
				Sys.println("get length: " + len);
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
			bytes = null;
			// Sys.println("pos: " + pos + " buff: " + buff.length);
			if (pos == buff.length) {
				Sys.println("got all bytes");
				var exportData:DataType = null;

				var data = haxe.zip.Uncompress.run(buff);
				buff = null;
				exportData = haxe.Json.parse(#if js @:privateAccess data.b.toString() #else data.toString() #end);
				data = null;
				// haxe.Timer.measure(() -> exportData = haxe.Json.parse(buff.toString()));
				// Sys.println("retrieved exportData");
				final index = Std.parseInt(exportData.index);
				var instance = instanceCache[index];
				instanceCache[index] = null; // reset
				// File.saveContent("export.json", Json.stringify(exportData, null, "    ")); // export out data to json
				var modules = [];
				modules = Typer.main(exportData, instance);
				exportData = null;
				var libs:Array<String> = [];

				// reset
				// trace("CLIENT RESET");
				client.runnable = true;
				client.retries = 0;
				pos = 0;
				buff = null;
				#if !hl
				client.stream.size = 8;
				#end
				for (module in modules) {
					if (instance.libwrap && !module.isMain) {
						Sys.setCwd(cwd);
						var name = module.name;
						var libPath = "libs/" + name + "/";

						Gen.create(libPath, module, instance.root);
						Sys.command('haxelib dev $name $libPath');
						if (libs.indexOf(name) == -1)
							libs.push(name);
					} else {
						Gen.create(Path.addTrailingSlash(instance.outputPath), module, instance.root);
					}
				}
				runBuildTools(modules, instance, programArgs);
				// trace(modules[0].files[0].name, data.hxml, data.name);
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
		Sys.println("nodejs server started");
	});
	#end
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

function mainPaths(modules:Array<Typer.Module>):Array<String> {
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

private function runBuildTools(modules:Array<Typer.Module>, instance:InstanceData, args:Array<String>) {
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
	final commands = ['-lib', 'go2hx'];
	var cp = instance.outputPath;
	if (cp != "") {
		commands.push("-cp");
		commands.push(cp);
	}
	for (define in instance.defines) {
		commands.push('-D $define');
	}
	if (instance.target != "" && instance.target != "interp") {
		final main = paths.length > 0 ? paths[0] : "";
		for (command in buildTarget(instance.target, instance.targetOutput, main).split(" "))
			commands.push(command);
		for (command in targetLibs(instance.target).split(" "))
			commands.push(command);
	}
	if (!instance.noRun && instance.target != "") {
		for (main in paths) {
			if (instance.root != "") {
				main = instance.root + (main == "" ? "" : "." + parseMain(main));
			}
			var commands = commands.concat(['-m', main]); // copy
			if (instance.target == "interp") {
				commands = commands.concat(buildTarget(instance.target, "", main).split(" "));
				commands = commands.concat(args);
			}
			Sys.println('haxe ' + commands.join(" "));
			Sys.command('haxe', commands); // build without build file
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
		if (paths.length == 0)
			throw "No main found";
		final main = parseMain(paths[0]);
		if (!StringTools.endsWith(instance.hxmlPath, ".hxml"))
			instance.hxmlPath += ".hxml";
		var content = "-m " + main + "\n";
		for (i in 0...Std.int(commands.length / 2)) {
			content += commands[i * 2] + " " + commands[i * 2 + 1] + "\n";
		}
		content = content.substr(0, content.length - 1);
		File.saveContent(instance.hxmlPath, content);
		Sys.println('Generated: ' + instance.hxmlPath + ' - ' + shared.Util.kbCount(content) + "kb");
	}
}

private function parseMain(main:String):String {
	final index = main.indexOf("_test.");
	if (index == -1)
		return main;
	var s = main.substr(0, index);
	s = StringTools.replace(s, ".", "/");
	if (Typer.stdgoList.indexOf(s) != -1)
		return 'stdgo.$main';
	return main;
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

function buildTarget(target:String, out:String, main:String):String {
	final index = main.lastIndexOf(".");
	if (index != -1)
		main = main.substr(index + 1);
	return switch target {
		case "hl", "jvm", "cpp", "cs":
			'--$target $out';
		case "interp":
			if (main == "") {
				"--interp";
			} else {
				"--run " + main;
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
		case "hl":
			'hl $out';
		case "jvm":
			'java -jar $out';
		case "cpp":
			"./" + out + "/" + main;
		default:
			throw "unknown target: " + target;
	};
	if (args.length > 0)
		s += " " + args.join(" ");
	return s;
}

function compile(instance:InstanceData):Bool {
	if (instance.localPath == "")
		instance.localPath = instance.args[instance.args.length - 1];
	var httpsString = "https://";
	for (i in 0...instance.args.length - 1) {
		var path = instance.args[i];
		if (StringTools.startsWith(path, httpsString)) {
			path = path.substr(httpsString.length);
			instance.args[i] = path;
		}
		if (Path.extension(path) == "go" || path.charAt(0) == "." || path.indexOf("/") == -1)
			continue;
		var command = 'go get $path';
		Sys.command(command);
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

function write(args:Array<String>, instance:InstanceData):Bool {
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

final instanceCache = new Vector<InstanceData>(20);

class InstanceData {
	public var args:Array<String> = [];
	public var data:Dynamic = null;
	public var printGoCode = false;
	public var localPath = "";
	public var target = "";
	public var targetOutput = "";
	public var libwrap = false;
	public var outputPath:String = "";
	public var root:String = "";
	public var buildPath:String = "";
	public var externBool:Bool = false;
	public var hxmlPath:String = "";
	public var noRun:Bool = false;
	public var noComments:Bool = false;
	public var test:Bool = false;

	public var noCommentsBool:Bool = false;

	public final defines:Array<String> = [];

	public function new(args:Array<String> = null) {
		if (args != null)
			this.args = args;
	}
}
