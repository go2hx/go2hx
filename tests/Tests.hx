import Main.InstanceData;
import js.node.ChildProcess;
import haxe.macro.Compiler;
import haxe.Json;
import sys.io.File;
import sys.io.FileInput;
import sys.io.FileOutput;
import sys.FileSystem;
using haxe.io.Path;

// @formatter:off
final excludes:Map<String,Array<String>> = [
	"gobyexample" => [
		"atomic-counters.go",                 // TODO fix looping
		"non-blocking-channel-operations.go", // TODO fix looping
		"command-line-arguments.go",          // unsupported functionality
		"command-line-flags.go",              // unsupported functionality
		"command-line-subcommands.go",        // unsupported functionality
		"context.go",                         // TODO net/http
		"defer.go",                           // TODO os
		"directories.go",                     // TODO os
		"embed-directive.go",                 // TODO embed
		"environment-variables.go",           // TODO os
		"execing-processes.go",               // TODO os/exec
		"exit.go",                            // TODO os
		"http-clients.go",                    // TODO net/http
		"http-servers.go",                    // TODO net/http
		"line-filters.go",                    // TODO os
		"panic.go",                           // TODO os
		"reading-files.go",                   // TODO os
		"signals.go",                         // TODO os/signal
		"spawning-processes.go",              // TODO os/exec
		"string-formatting.go",               // TODO os
		"temporary-files-and-directories.go", // TODO os
		"main_test.go",                       // TODO testing
		"text-templates.go",                  // TODO os
		"writing-files.go",                   // TODO os
	],
	"yaegi" => [],
	"go" => [],
	"unit" => [],
];

final path = Sys.getCwd();
var ciBool = false;
var logOutput:FileOutput = null;
var startStamp = 0.0;
var tests:Array<String> = [];
var tasks:Array<TaskData> = [];
var type:String = "";
// cpp tests take a long time to compile, so sometimes its not run if quick testing is required
final targets = ["interp", "hl"];
var suite = new TestSuite();
var completeBool = false;
var lastTaskLogs = [];

function main() {
	Main.setup(0, 1); // amount of processes to spawn
	Main.onComplete = complete;

	File.saveContent("test.log", "");
	logOutput = File.append("test.log", false);
	// go by example, stdlib, yaegi, go internal tests, unit regression tests
	ciBool = Compiler.getDefine("ci") != null;
	final unitBool = Compiler.getDefine("unit") != null;
	final stdBool = Compiler.getDefine("std") != null;
	final goBool = Compiler.getDefine("go") != null;
	final yaegiBool = Compiler.getDefine("yaegi") != null;
	final goByExampleBool = Compiler.getDefine("gobyexample") != null;
	var startStamp = 0.0;

	if (!unitBool && !stdBool && !goBool && !yaegiBool && !goByExampleBool) {
		trace("no tests specified");
		close();
		return;
	}
	if (unitBool)
		testUnit();
	if (stdBool)
		testStd();
	if (goBool)
		testGo();
	if (yaegiBool)
		testYaegi();
	if (goByExampleBool)
		testGoByExample();
	tests.sort((a, b) -> a > b ? 1 : -1); // consistent across os targets
	// tests = ["./tests/unit/invalidString0.go"];
	trace(tests);
	startStamp = haxe.Timer.stamp();
	final timer = new haxe.Timer(100);
	timer.run = update;
}

var runningCount = 0;
var instance:InstanceData = null;
var timeout = 0;

function update() {
	if (completeBool && tests.length == 0 && tasks.length == 0 && runningCount == 0) {
		trace("COMPLETE");
		close();
	}
	if (timeout++ > (10 * 60) * 24) {
		trace("TIMEOUT");
		trace("tests.length:",tests.length);
		trace("tasks.length:",tasks.length);
		trace("runningCount:",runningCount);
		trace("completeBool:",completeBool);
		// instance.args is null
		trace("last task logs:",lastTaskLogs);
		trace("tests left:",tests.length);
		close();
	}
	for (test in tests) {
		final hxml = "golibs/" + type + "_" + sanatize(test);
		final args = [test, '--norun', '--hxml', hxml];
		args.push(path);
		instance = Main.compileArgs(args);
		final compiled = Main.compile(instance);
		timeout = 0;
		if (!compiled) {
			break;
		}
		tests.remove(test);
	}
	if (tasks.length > 0 && runningCount < 3 ) {
		final task = tasks.pop();
		Sys.println("tests: " + tests.length + " tasks: " + tasks.length + " running: " + runningCount + " lastTaskLogs: " + lastTaskLogs);
		final taskString = task.command + " " + task.args.join(" ");
		lastTaskLogs.push(taskString);
		final ls = ChildProcess.spawn(task.command, task.args);
		var timeoutTimer = new haxe.Timer((1000 * 60) * 5);
		timeoutTimer.run = () -> {
			lastTaskLogs.remove(taskString);
			trace("TEST TIMEOUT: " + task.command + " " + task.args);
			if (task.runtime) {
				suite.runtimeError(task.path,task.target);
			}else{
				suite.buildError(task.path,task.target);
			}
			
			ls.kill();
			timeoutTimer.stop();
			timeout = 0;
		};
		runningCount++;
		ls.stdout.on('data', function(data) {
			log(task.target + "|" + task.path + "|" + task.runtime + " ~ " + lastTaskLogs);
			log(data);
			timeout = 0;
		});
		ls.stderr.on('data', function(data) {
			log(task.target + "|" + task.path + "|" + task.runtime);
			Sys.print(data);
			log(data);
			timeout = 0;
		});
		ls.on('close', function(code) {
			timeout = 0;
			lastTaskLogs.remove(taskString);
			completeBool = true;
			timeoutTimer.stop();
			runningCount--;
			if (code == 0) {
				if (task.target == "interp") {
					suite.success(task.path, task.target);
				}else{
					if (task.runtime) {
						suite.success(task.path, task.target);
					}else{
						final cmd = Main.runTarget(task.target,task.out,[],task.main).split(" ");
						tasks.push({command:cmd[0], args: cmd.slice(1), target: task.target, path: task.path, runtime: true, out: "", main: ""});
					}
				}
			}else{
				if (task.runtime) {
					suite.runtimeError(task.path, task.target);
				}else{
					suite.buildError(task.path, task.target);
				}
			}
		});
	}
}

private function complete(modules:Array<Typer.Module>, _) {
	timeout = 0;
	completeBool = true;
	// spawn targets
	final paths = Main.mainPaths(modules);
	for (path in paths) {
		final main = path;
		path = path.charAt(0).toLowerCase() + path.substr(1);
		final hxml = "golibs/" + type + "_" + path + ".hxml";
		for (target in targets) {
			final out = createTargetOutput(target, type, path);
			final outCmd = Main.buildTarget(target, out).split(" ");
			final args = [hxml].concat(outCmd);
			if (ciBool)
				args.unshift("haxe");
			tasks.push({command: ciBool ? "npx" : "haxe", args: args, path: path, runtime: false, target: target, out: out, main: main});
		}
	}
}

private function createTargetOutput(target:String, type:String, name:String):String {
	return switch target {
		case "interp": type + "_" + sanatize(name) + ".hxml";
		case "hl": type + "_" + sanatize(name) + ".hl";
		case "jvm": type + "_" + sanatize(name) + ".jar";
		case "cpp", "cs", "php": 'export/$target/' + type + "_" + sanatize(name);
		case "js": type + "_" + sanatize(name) + ".js";
		case "lua": type + "_" + sanatize(name) + ".lua";
		case "neko": type + "_" + sanatize(name) + ".n";
		case "python": type + "_" + sanatize(name) + ".py";
		default:
			throw "unknown target: " + target;
	}
}

private function sanatize(s:String):String {
	s = Path.withoutDirectory(s);
	s = Path.withoutExtension(s);
	s = StringTools.replace(s, "/", "_");
	return s;
}

private function testGo() { // go tests
	var GOROOT:String = ChildProcess.execSync("go env GOROOT");
	GOROOT = GOROOT.substr(0, GOROOT.length - 1);
	final dir = GOROOT.addTrailingSlash() + "test/";
	for (path in FileSystem.readDirectory(dir)) {
		var name = path.withoutExtension();
		if (FileSystem.isDirectory(path) || path.extension() != "go" || excludes[type].indexOf(path) != -1)
			continue;
		final input = File.read(dir + path, false);
		final line = input.readLine().substr(3);
		if (line != "run")
			continue;
		tests.push(name);
	}
	// go run /usr/local/go/test/alias1.go
}

private function testStd() { // standard library package tests
	type = "std";
	final list:Array<String> = Json.parse(File.getContent("tests.json"));
	Sys.println("STD TESTS: " + list.length);
	for (name in list) {
		final hxml = "stdgo/" + StringTools.replace(name,"/","_") + ".hxml";
		if (!sys.FileSystem.exists(hxml))
			continue;
		final main = name;
		for (target in targets) {
			final out = createTargetOutput(target, type, name);
			final outCmd = Main.buildTarget(target, out).split(" ");
			final args = [hxml].concat(outCmd);
			if (ciBool)
				args.unshift("haxe");
			tasks.push({command: ciBool ? "npx" : "haxe", args: args, path: name, runtime: false, target: target, out: out, main: main});
			Sys.println(args.join(" "));
		}
	}
	Sys.println("______________________");
	// haxe stdgo/unicode.hxml --interp
}

private function log(v) {
	Sys.println(v);
	logOutput.writeString('$v\n');
	logOutput.flush();
}

private function close() {
	log("======= TIME =======");
	log(Date.now().toString());
	log("elapsed: " + (haxe.Timer.stamp() - startStamp));
	log("======= SUMMARY RESULTS ======");
	function calc(count:Int, total:Int):String {
		if (count == 0)
			return "0%";
		return count + " " + (Std.int(count / total * 10000) / 100) + "%";
	}
	final output:Array<String> = FileSystem.exists('tests/$type.json') ? Json.parse(File.getContent('tests/$type.json')) : [];
	final input:Array<String> = [];
	log('--> $type');
	log('      correct output: ' + calc(suite.correctCount, suite.count));
	log('             success: ' + calc(suite.successCount, suite.count));
	log('         build error: ' + calc(suite.buildErrorCount, suite.count));
	log('       runtime error: ' + calc(suite.runtimeErrorCount, suite.count));
	suite.dataList.sort((a, b) -> a.path > b.path ? 1 : -1); // sort test list by name
	log('        test results:');
	final testData:Map<String, String> = [];
	final testFailingCount:Map<String, Int> = [];
	for (data in suite.dataList) {
		if (!testFailingCount.exists(data.path))
			testFailingCount[data.path] = 0;
		if (!testData.exists(data.path))
			testData[data.path] = "";
		if (!data.passing) {
			testFailingCount[data.path]++;
		} else {
			final fullname = data.target + "|" + data.path;
			input.push(fullname);
			output.remove(fullname);
		}
		testData[data.path] += "\n    " + (data.passing ? "[x]" : "[ ]") + " " + data.target
			+ (data.build ? " build error" : "") + (data.correct ? " correct" : "");
	}
	for (name => str in testData) {
		final failCount = testFailingCount[name];
		if (failCount == 0) {
			log('[x] $name');
		} else {
			log('[ ] $name$str');
		}
	}
	var code = 0;
	if (output.length > 0) {
		log('         regression results: ');
		for (obj in output)
			log(obj);
		code = 1;
	}else{
		input.sort((a, b) -> a > b ? 1 : -1);
		File.saveContent('tests/$type.json', Json.stringify(input, null, " "));
	}
	logOutput.close();
	Main.close(code);
}

private function testYaegi() {
	type = "yaegi";
	final dir = path + "tests/yaegi/_test/";
	if (!FileSystem.exists(dir)) {
		Sys.command("git clone https://github.com/traefik/yaegi tests/yaegi");
	} else {
		Sys.setCwd("./tests/yaegi");
		Sys.command("git pull");
		Sys.setCwd("../..");
	}
	for (path in FileSystem.readDirectory(dir)) {
		final name = path.withoutExtension();
		if (FileSystem.isDirectory(path) || path.extension() != "go" || excludes[type].indexOf(path) != -1)
			continue;
		final input = File.read(dir + path, false);
		var isError = false;
		while (true) {
			try {
				final line = input.readLine();
				if (StringTools.startsWith(line, "package")) {
					isError = line.indexOf("main") == -1;
				}
				if (line == "// Error:") {
					isError = true;
					break;
				}
				if (line == "// Output:")
					break;
			} catch (_) {
				isError = true;
				break;
			}
		}
		input.close();
		if (isError)
			continue;
		tests.push(name);
	}
	// go run ./tests/yaegi/_test/a1.go
}

private function testUnit() {
	type = "unit";
	final dir = "./tests/unit/";
	for (path in FileSystem.readDirectory(dir)) {
		path = dir + path;
		if (FileSystem.isDirectory(path) || path.extension() != "go" || excludes[type].indexOf(path) != -1)
			continue;
		tests.push(path);
	}
	// go run ./tests/unit/append0.go
}

private function testGoByExample() { // gobyexample
	type = "gobyexample";
	final dir = "./tests/gobyexample/examples/";
	if (!FileSystem.exists(dir)) {
		Sys.command("git clone https://github.com/mmcgrana/gobyexample tests/gobyexample");
	} else {
		Sys.setCwd("./tests/gobyexample");
		Sys.command("git pull");
		Sys.setCwd("../..");
	}
	for (folder in FileSystem.readDirectory(dir)) {
		folder = dir + folder.addTrailingSlash();
		for (path in FileSystem.readDirectory(folder)) {
			if (path.extension() != "go" || excludes[type].indexOf(path) != -1)
				continue;
			final name = path.withoutExtension();
			path = folder + path;
			tests.push(name);
		}
	}
	// go run ./tests/gobyexample/examples/arrays/arrays.go
}

class TestSuiteData {
	public var path:String = "";
	public var target:String = "";
	public var build:Bool = false;
	public var passing:Bool = false;
	public var correct:Bool = false;
	public function new(path:String,target:String, passing:Bool,build:Bool=false,correct:Bool=false) {
		this.path = path;
		this.target = target;
		this.passing = passing;
		this.build = build;
		this.correct = correct;
	}
}

class TestSuite {
	public var excludes:Array<String> = [];
	public var buildErrorCount:Int = 0;
	public var runtimeErrorCount:Int = 0;
	public var successCount:Int = 0;
	public var correctCount:Int = 0;
	public var count:Int = 0;
	public var dataList:Array<TestSuiteData> = [];

	public function new() {}

	public function buildError(test:String, target:String) {
		dataList.push(new TestSuiteData(test, target, false, true));
		buildErrorCount++;
		count++;
	}

	public function runtimeError(test:String,target:String) {
		dataList.push(new TestSuiteData(test, target, false));
		runtimeErrorCount++;
		count++;
	}

	public function success(test:String, target:String) { // passess running the test
		dataList.push(new TestSuiteData(test, target, true));
		successCount++;
		count++;
	}

	public function correct(test:String, target:String) { // correct matching output
		dataList.push(new TestSuiteData(test, target, false, false, true));
		correctCount++;
		count++;
	}
}

@:structInit
class TaskData {
	public var path:String;
	public var command:String;
	public var args:Array<String>;
	public var target:String;
	public var runtime:Bool;
	public var out:String;
	public var main:String;
	public function new(path:String, command:String,args:Array<String>,target:String,runtime:Bool, out:String, main:String) {
		this.path = path;
		this.target = target;
		this.runtime = runtime;
		this.command = command;
		this.args = args;
		this.out = out;
		this.main = main;
	}
}