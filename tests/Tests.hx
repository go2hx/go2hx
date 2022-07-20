import haxe.Json;
import sys.io.File;
import sys.io.FileInput;
import sys.io.FileOutput;
import sys.io.Process;
import sys.thread.Lock;

using haxe.io.Path;
using sys.FileSystem;

// @formatter:off
final gobyexampleExcludes = [
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
];
final yaegiExcludes = [];
final goExcludes = [];
final unitExcludes = [];
// @formatter:on
var tasks:Array<TaskData> = [];
var runsLeft:Int = 0;
var processPool = new ProcessPool(2);
final path = Sys.getCwd();
var ci = false;
var logOutput:FileOutput = null;
var suites:Map<String, TestSuite> = [];
var startStamp = 0.0;

function main() {
	final args = Sys.args();
	if (args.length > 0 && args[0] == "ci")
		ci = true;
	processPool.complete = completeProcess;
	Main.setup(0, 4); // 4 processes of go4hx
	Main.onComplete = complete;
	File.saveContent("test.log", "");
	logOutput = File.append("test.log", false);
	// go by example, stdlib, yaegi, go internal tests, unit regression tests
	// final tests = testGoByExample().concat(test883().concat(testStd())).slice(0, 2);
	final tests = testUnit();
	for (test in tests) { // create TestSuite data class
		if (suites[test.type] == null)
			suites[test.type] = new TestSuite();
	}
	tests.sort((a, b) -> a.name > b.name ? 1 : -1); // consistent across os targets
	// add tests to task list
	for (test in tests) {
		final hxml = "tests/" + test.type + "_" + sanatize(test.name);
		var compilerArgs = [test.path, '--hxml', hxml];
		if (test.test)
			compilerArgs.push("--test");
		compilerArgs.push(path);
		final data:TaskData = {
			data: test,
			target: "",
			hxml: hxml,
			args: compilerArgs,
			command: "",
		};
		tasks.push(data);
	}
	runsLeft = tasks.length * targets.length * 2 - 1; // 2 runs per task per target
	Sys.println("Test runs left: " + runsLeft);
	startStamp = haxe.Timer.stamp();
	// update loop
	while (true)
		update();
}

final targets = ["interp", "hl", "jvm"];

private function update() {
	processPool.update();
	Main.update();
	// trace("TASKS LEFT: " + tasks.map(task -> task.data.name));
	for (task in tasks) {
		final instance = Main.compileArgs(task.args);
		instance.data = task;
		final compiled = Main.compile(instance);
		if (!compiled) // wait delay
			break;
		tasks.remove(task);
	}
}

final hadError:Map<String, Bool> = [];

private function completeProcess(code:Int, proc:Process, task:TaskData, command:String, runtimeBool:Bool) {
	if (code == 0) {
		if (!runtimeBool && task.target != "interp") {
			final args = task.data.exclude == "" ? [] : ["-excludes"].concat(task.data.exclude.split(" "));
			if (task.target == "hxcpp") {
				command += " -D HXCPP_NONINTERACTIVE";
			}
			final out = createTargetOutput(task.target, task.data.type, task.data.name);
			final main = task.data.name.charAt(0).toUpperCase() + task.data.name.substr(1);
			final command = Main.runTarget(task.target, out, args, main);
			task.command = command;
			processPool.run(command, task, true);
		} else {
			suites[task.data.type].success(task);
		}
	} else {
		if (runtimeBool) {
			log(task.data.name + '.go `$command` runtime error: $code');
			suites[task.data.type].runtimeError(task);
		} else {
			log(task.data.name + '.go `$command`   build error: $code');
			proc.kill();
			log(proc.stderr.readAll().toString());
			if (task.target != "interp")
				runsLeft--; // remove as no more runtime test
			suites[task.data.type].buildError(task);
		}
	}
	if (--runsLeft <= 0)
		close();
}

private function complete(modules:Array<Typer.Module>, task:TaskData) {
	// spawn targets
	for (target in targets) {
		final task = task.copy();
		var command = (ci ? "npx " : "") + "haxe " + task.hxml + ".hxml";
		task.target = target;
		final out = createTargetOutput(target, task.data.type, task.data.name);
		final main = task.data.name.charAt(0).toUpperCase() + task.data.name.substr(1);
		command += " " + Main.buildTarget(target, out, main);
		command += " " + Main.targetLibs(target);
		task.command = command;
		trace(command);
		processPool.run(command, task, false);
	}
}

private function createTargetOutput(target:String, type:String, name:String):String {
	return switch target {
		case "interp": type + "_" + sanatize(name) + ".hxml";
		case "hl": type + "_" + sanatize(name) + ".hl";
		case "jvm": type + "_" + sanatize(name) + ".jar";
		case "cpp", "cs": 'export/$target/' + type + "_" + sanatize(name);
		default:
			throw "unknown target: " + target;
	}
}

private function sanatize(s:String):String {
	s = StringTools.replace(s, "/", "_");
	return s;
}

private function testGo():Array<TestData> { // go tests
	final proc = new Process("go env GOROOT");
	proc.exitCode();
	var GOROOT:String = proc.stdout.readAll().toString();
	GOROOT = GOROOT.substr(0, GOROOT.length - 1);
	proc.close();
	final dir = GOROOT.addTrailingSlash() + "test/";
	final tests:Array<TestData> = [];
	for (path in dir.readDirectory()) {
		var name = path.withoutExtension();
		path = dir + path;
		if (path.isDirectory() || path.extension() != "go" || goExcludes.indexOf(path) != -1)
			continue;
		final input = File.read(path, false);
		final line = input.readLine().substr(3);
		if (!["run"].contains(line))
			continue;
		tests.push({
			name: name,
			type: "go",
			path: path,
			exclude: "",
			test: false,
		});
	}
	return tests;
}

private function testStd():Array<TestData> { // standard library package tests
	final list:Array<String> = Json.parse(File.getContent("tests.json")).tests;
	final tests:Array<TestData> = [];
	for (obj in list) {
		final args = obj.split("-");
		tests.push({
			name: args[0],
			type: "std",
			path: args[0],
			exclude: args[1],
			test: true,
		});
	}
	return tests;
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
	for (type => suite in suites) {
		log('--> $type');
		log('      correct: ' + calc(suite.correctCount, suite.count));
		log('      success: ' + calc(suite.successCount, suite.count));
		log('  build error: ' + calc(suite.buildErrorCount, suite.count));
		log('runtime error: ' + calc(suite.runtimeErrorCount, suite.count));
		suite.dataList.sort((a, b) -> a.task.data.name > b.task.data.name ? 1 : -1); // sort test list by name
		log(' test results:');
		final testData:Map<String, String> = [];
		final testFailingCount:Map<String, Int> = [];
		for (data in suite.dataList) {
			if (!testFailingCount.exists(data.task.data.name))
				testFailingCount[data.task.data.name] = 0;
			if (!testData.exists(data.task.data.name))
				testData[data.task.data.name] = "";
			if (!data.passing)
				testFailingCount[data.task.data.name]++;
			testData[data.task.data.name] += "\n    " + (data.passing ? "[x]" : "[ ]") + " " + data.task.target + " "
				+ StringTools.lpad(data.task.command, " ", 60);
		}
		for (name => str in testData) {
			final failCount = testFailingCount[name];
			if (failCount == 0) {
				log('[x] $name');
			} else {
				log('[ ] $name$str');
			}
		}
	}
	logOutput.close();
	Main.close();
}

private function testYaegi():Array<TestData> {
	final dir = "./tests/yaegia/_test/";
	final tests:Array<TestData> = [];
	if (!FileSystem.exists(dir)) {
		Sys.command("git clone https://github.com/traefik/yaegi tests/yaegi");
	} else {
		Sys.setCwd("./tests/yaegi");
		Sys.command("git pull");
		Sys.setCwd("../..");
	}
	for (path in dir.readDirectory()) {
		final name = path.withoutExtension();
		path = dir + path;
		if (path.isDirectory() || path.extension() != "go" || yaegiExcludes.indexOf(path) != -1)
			continue;
		final input = File.read(path, false);
		var isError = false;
		while (true) {
			try {
				final line = input.readLine();
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
		tests.push({
			name: name,
			type: "yaegi",
			path: path,
			exclude: "",
			test: false,
		});
	}
	return tests;
}

private function testUnit():Array<TestData> {
	final tests:Array<TestData> = [];
	final dir = "./tests/unit/";
	for (path in dir.readDirectory()) {
		final name = path.withoutExtension();
		path = dir + path;
		if (path.isDirectory() || path.extension() != "go" || unitExcludes.indexOf(path) != -1)
			continue;
		tests.push({
			name: name,
			type: "unit",
			path: path,
			exclude: "",
			test: false,
		});
	}
	return tests;
}

private function testGoByExample():Array<TestData> { // gobyexample
	final dir = "./tests/gobyexample/examples/";
	final tests:Array<TestData> = [];
	if (!FileSystem.exists(dir)) {
		Sys.command("git clone https://github.com/mmcgrana/gobyexample tests/gobyexample");
	} else {
		Sys.setCwd("./tests/gobyexample");
		Sys.command("git pull");
		Sys.setCwd("../..");
	}

	for (folder in dir.readDirectory()) {
		folder = dir + folder.addTrailingSlash();
		for (path in folder.readDirectory()) {
			if (path.extension() != "go" || gobyexampleExcludes.indexOf(path) != -1)
				continue;
			final name = path.withoutExtension();
			path = folder + path;
			tests.push({
				name: name,
				type: "gobyexample",
				path: path,
				exclude: "",
				test: false,
			});
		}
	}
	return tests;
}

@:structInit
class TestData {
	public var name:String = "";
	public var type:String = "";
	public var path:String = "";
	public var exclude:String = "";
	public var test:Bool = false;

	public function new(name, type, path, exclude, test) {
		this.name = name;
		this.type = type;
		this.path = path;
		this.exclude = exclude;
		this.test = test;
	}

	public function copy()
		return new TestData(this.name, this.type, this.path, this.exclude, this.test);
}

@:structInit
class TaskData {
	public var target:String = "";
	public var args:Array<String> = [];
	public var data:TestData = null;
	public var hxml:String = "";
	public var command:String = "";

	public function new(target, args, data, hxml, command) {
		this.target = target;
		this.args = args;
		this.data = data;
		this.hxml = hxml;
		this.command = command;
	}

	public function copy()
		return new TaskData(target, args.copy(), data.copy(), hxml, command);
}

class TestSuite {
	public var excludes:Array<String> = [];
	public var buildErrorCount:Int = 0;
	public var runtimeErrorCount:Int = 0;
	public var successCount:Int = 0;
	public var correctCount:Int = 0;
	public var count:Int = 0;
	public var dataList:Array<{task:TaskData, passing:Bool}> = [];

	public function new() {}

	public function buildError(task:TaskData) {
		dataList.push({task: task, passing: false});
		buildErrorCount++;
		count++;
	}

	public function runtimeError(task:TaskData) {
		dataList.push({task: task, passing: false});
		runtimeErrorCount++;
		count++;
	}

	public function success(task:TaskData) { // passess running the test
		dataList.push({task: task, passing: true});
		successCount++;
		count++;
	}

	public function correct(task:TaskData) { // correct matching output
		dataList.push({task: task, passing: true});
		correctCount++;
		count++;
	}
}
