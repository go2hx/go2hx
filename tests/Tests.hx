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
var outputMap:Map<String,String> = [];
var tasks:Array<TaskData> = [];
var type:String = "";
// cpp tests take a long time to compile, so sometimes its not run if quick testing is required
var targets = ["hl"];
var suite = new TestSuite();
var completeBool = false;
var sortMode = "";
var count = 0;
var offset = 0;
var run:String = "";
var lastTaskLogs = [];
var dryRun = false;
final runnerCount = Compiler.getDefine("runnerCount") ?? "2";

function main() {
	if (Compiler.getDefine("target_hxcpp") != null)
		targets = ["cpp"];

	File.saveContent("test.log", "");
	logOutput = File.append("test.log", false);
	// go by example, stdlib, yaegi, go internal tests, unit regression tests
	ciBool = Compiler.getDefine("ci") != null;
	final unitBool = Compiler.getDefine("unit") != null;
	final stdBool = Compiler.getDefine("std") != null;
	final goBool = Compiler.getDefine("go") != null;
	final yaegiBool = Compiler.getDefine("yaegi") != null;
	final goByExampleBool = Compiler.getDefine("gobyexample") != null;
	final tinygoBool = Compiler.getDefine("tinygo") != null;
	sortMode = Compiler.getDefine("mode") ?? (Compiler.getDefine("sort") ?? "");
	final countStr = Compiler.getDefine("count");
	count = countStr != null ? Std.parseInt(countStr) : 0;
	final offsetStr = Compiler.getDefine("offset");
	offset = offsetStr != null ? Std.parseInt(offsetStr) : 0;
	run = Compiler.getDefine("run") ?? "";
	dryRun = Compiler.getDefine("dryRun") != null;
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
	if (tinygoBool)
		testTinyGo();
	if (goByExampleBool)
		testGoByExample();
	runTests();
	trace(tests);
	trace(tests.length);
	if (!dryRun) {
		Main.setup(0, Std.parseInt(runnerCount)); // amount of processes to spawn
		Main.onComplete = complete;
		startStamp = haxe.Timer.stamp();
		final timer = new haxe.Timer(100);
		timer.run = update;
	}
}

function runTests() {
	tests.sort((a, b) -> a > b ? 1 : -1); // consistent across os targets
	if (offset > 0) {
		tests = tests.slice(offset > tests.length ? tests.length : offset);
	}
	if (count > 0) {
		tests = tests.slice(0, tests.length < count ? tests.length : count);
	}
	if (run != "") {
		trace(tests);
		tests = tests.filter((v) -> v.indexOf(run) != -1);
	}
}

var runningCount = 0;
var instance:InstanceData = null;
var timeout = 0;
var retryFailedCount = 3;
var failedRegressionTasks:Array<TaskData> = [];

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
		final hxmlName = sanatize(Path.withoutExtension(test));
		final hxml = "golibs/" + type + "_" + hxmlName;
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
	if (tasks.length > 0 && runningCount < Std.parseInt(runnerCount) ) {
		final task = tasks.pop();
		Sys.println("tests: " + tests.length + " tasks: " + tasks.length + " running: " + runningCount + " " + lastTaskLogs);
		final taskString = task.command + " " + task.args.join(" ");
		lastTaskLogs.push(taskString);
		runningCount++;
		final ls = ChildProcess.spawn(task.command, task.args);
		var timeoutTimer = new haxe.Timer((1000 * 60) * 50);
		timeoutTimer.run = () -> {
			runningCount--;
			lastTaskLogs.remove(taskString);
			timeout = 0;
			timeoutTimer.stop();
			trace("TEST TIMEOUT: " + task.command + " " + task.args);
			if (task.runtime) {
				suite.runtimeError(task);
			}else{
				suite.buildError(task);
			}
			ls.removeAllListeners();
			ls.kill();
		};
		ls.stdout.on('data', function(data) {
			log(task.target + "|" + task.path + "|" + task.runtime);
			Sys.print(data);
			task.output += data;
			log(data);
			timeout = 0;
		});
		ls.stderr.on('data', function(data) {
			log(task.target + "|" + task.path + "|" + task.runtime);
			Sys.print(data);
			task.output += data;
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
				if (task.runtime) {
					final wanted = outputMap[type + "_" + task.path];
					if (wanted != null && wanted != "") {
						final output = task.output;
						function sanatize(s:String):String {
							if (s.charAt(s.length - 1) == "\n")
								s = s.substr(0, s.length - 1);
							return StringTools.trim(s);
						}
						final output = sanatize(output);
						final wanted = sanatize(wanted);
						final correct = output == wanted;
						if (correct) {
							suite.correct(task);
						}else{
							Sys.println("output:");
							Sys.println(output);
							Sys.println("wanted:");
							Sys.println(wanted);
							Sys.println("bytes:");
							Sys.println([for (i in 0...output.length) output.charCodeAt(i)]);
							Sys.println([for (i in 0...wanted.length) wanted.charCodeAt(i)]);
							suite.incorrect(task);
						}
					}else{
						suite.success(task);
					}
				}else{
					final cmd = Main.runTarget(task.target,"golibs/" + task.out,[],task.main).split(" ");
					tasks.push({command:cmd[0], args: cmd.slice(1), target: task.target, path: task.path, runtime: true, out: "", main: ""});
				}
			}else{
				if (task.runtime) {
					trace("runtime error: " + task.command + " " + task.args);
					suite.runtimeError(task);
				}else{
					trace("build error: " + task.command + " " + task.args);
					suite.buildError(task);
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
		final hxml = "golibs/" + type + "_" + sanatize(path) + ".hxml";
		for (target in targets) {
			final out = createTargetOutput(target, type, path);
			final outCmd = Main.buildTarget(target, "golibs/" + out).split(" ");
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
	s = Typer.normalizePath(s);
	s = Path.withoutDirectory(s);
	s = Path.withoutExtension(s);
	s = StringTools.replace(s, "/", "_");
	if (Typer.reserved.indexOf(s) != -1) {
		s += "_";
	}
	return s;
}

private function testGo() { // go tests
	type = "go";
	sortDataToTests(Json.parse(File.getContent("tests/sort_go.json")));
}

private function testStd() { // standard library package tests
	type = "std";
	final list:Array<String> = Json.parse(File.getContent("tests.json"));
	Sys.println("STD TESTS: " + list.length);
	for (name in list) {
		switch name {
			case "regexp":
				continue;
		}
		final hxml = "stdgo/" + StringTools.replace(name,"/","_") + ".hxml";
		if (!sys.FileSystem.exists(hxml))
			continue;
		final main = name;
		for (target in targets) {
			final out = createTargetOutput(target, type, name);
			final outCmd = Main.buildTarget(target, "golibs/" + out).split(" ");
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
	final testName = type + (sortMode == "" ? "" : "_" + sortMode);
	var output:Array<String> = FileSystem.exists('tests/$testName.json') ? Json.parse(File.getContent('tests/$testName.json')) : [];
	// remove targets that don't exist
	output = output.filter((v) -> {
		final parts = v.split("|");
		final target = parts[0];
		final path = parts[1];
		if (targets.indexOf(target) == -1)
			return false;
		return true;
	});
	final input:Array<String> = [];
	log('--> $type');
	log('      correct output: ' + calc(suite.correctCount, suite.count));
	log('    incorrect output: ' + calc(suite.incorrectCount, suite.count));
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
		final fullName = data.target + "|" + data.path;
		if (!data.passing) {
			testFailingCount[data.path]++;
			// if in regression list
			if (output.indexOf(fullName) != -1) {
				failedRegressionTasks.push(data.task);
			}
		} else {
			input.push(fullName);
			output.remove(fullName);
		}
		testData[data.path] += "\n    " + (data.passing ? "[x]" : "[ ]") + " " + data.target
			+ (!data.build ? " build error" : "") + (data.correct ? " correct" : (data.incorrect ? " incorrect" : ""));
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
	if (count == 0 && offset == 0 && output.length > 0 && run == "") {
		log('         regression results: ');
		for (obj in output)
			log(obj);
		code = 1;
		// retry failed tests
		if (retryFailedCount-- > 0) {
			tasks = failedRegressionTasks;
			failedRegressionTasks = [];
			dryRun = false;
			runTests();
			return;
		}
	}else if (output.length == 0){
		input.sort((a, b) -> a > b ? 1 : -1);
		
		File.saveContent('tests/$testName.json', Json.stringify(input, null, " "));
	}
	logOutput.close();
	Main.close(code);
}

private function testTinyGo() {
	type = "tinygo";
	final dir = "./tests/tinygo/";
	if (!FileSystem.exists(dir)) {
		Sys.command("git clone https://github.com/tinygo-org/tinygo tests/tinygo");
	} else {
		Sys.setCwd("./tests/tinygo");
		Sys.command("git pull");
		Sys.setCwd("../..");
	}
	sortDataToTests(Json.parse(File.getContent("tests/sort_tinygo.json")));
}

private function sortDataToTests(sortData:SortData) {
	var tempTests:Array<String> = [];
	if (sortMode == "") {
		tempTests = sortData.easy.concat(sortData.medium).concat(sortData.hard);
	}else{
		Sys.println("sort mode: " + sortMode);
		switch sortMode {
			case "easy":
				tempTests = sortData.easy;
				// does not have a main func
				tempTests.remove("tests/yaegi/_test/export0.go\n");
			case "medium":
				tempTests = sortData.medium;
			case "hard":
				tempTests = sortData.hard;
		}
	}
	var index = 0;
	for (data in tempTests) {
		index = data.indexOf("\n");
		if (index == -1)
			throw "invalid sort data";
		final path = data.substr(0, index);
		final output = data.substr(index + 1);
		tests.push(path);
		final outputPath = sortData.name + "_" + Path.withoutExtension(Path.withoutDirectory(path));
		outputMap[outputPath] = output;
	}
}

private function testYaegi() {
	type = "yaegi";
	final dir = path + "/tests/yaegi/_test/";
	if (!FileSystem.exists(dir)) {
		Sys.command("git clone https://github.com/traefik/yaegi tests/yaegi");
	} else {
		Sys.setCwd("./tests/yaegi");
		Sys.command("git pull");
		Sys.setCwd("../..");
	}
	sortDataToTests(Json.parse(File.getContent("tests/sort_yaegi.json")));
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
@:structInit
class TestSuiteData {
	public var path:String = "";
	public var target:String = "";
	public var build:Bool = false;
	public var passing:Bool = false;
	public var correct:Bool = false;
	public var incorrect:Bool = false;
	public var task:TaskData = null;
	public function new(path:String,target:String, passing:Bool,task:TaskData,build:Bool,correct:Bool, incorrect:Bool) {
		this.path = path;
		this.target = target;
		this.passing = passing;
		this.build = build;
		this.correct = correct;
		this.incorrect = incorrect;
		this.task = task;
	}
}

class TestSuite {
	public var excludes:Array<String> = [];
	public var buildErrorCount:Int = 0;
	public var runtimeErrorCount:Int = 0;
	public var successCount:Int = 0;
	public var correctCount:Int = 0;
	public var incorrectCount:Int = 0;
	public var count:Int = 0;
	public var dataList:Array<TestSuiteData> = [];

	public function new() {}

	public function buildError(task:TaskData) {
		dataList.push({path: task.path, target: task.target, build: false, task: task, passing: false, incorrect: false, correct: false});
		buildErrorCount++;
		count++;
	}

	public function runtimeError(task:TaskData) {
		dataList.push({path: task.path, target: task.target, build: true, task: task, passing: false, incorrect: false, correct: false});
		runtimeErrorCount++;
		count++;
	}

	public function success(task:TaskData) { // passess running the test
		dataList.push({path: task.path, target: task.target, build: true, task: task, passing: true, incorrect: false, correct: false});
		successCount++;
		count++;
	}

	public function correct(task:TaskData) { // correct matching output
		dataList.push({path: task.path, target: task.target, build: true, task: task, passing: true, incorrect: false, correct: true});
		correctCount++;
		count++;
	}

	public function incorrect(task:TaskData) { // incorrect matching output
		dataList.push({path: task.path, target: task.target, build: true, task: task, passing: false, incorrect: true, correct: false});
		incorrectCount++;
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
	public var output:String = "";
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

typedef SortData = {
	name:String,
	easy:Array<String>,
	medium:Array<String>,
	hard:Array<String>,
}