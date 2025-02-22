import Main.InstanceData;
import js.node.ChildProcess;
import haxe.macro.Compiler;
import haxe.Json;
import sys.io.File;
import sys.io.FileInput;
import sys.io.FileOutput;
import sys.FileSystem;
using haxe.io.Path;

final path = Sys.getCwd();
var ciBool = false;
var hxbBool = false;
var noDepsBool = false;
var testBool = false;
var globalPath = "";
var logOutput:FileOutput = null;
var startStamp = 0.0;
var tests:Array<String> = [];
var excludeFuncs:Array<Array<String>> = [];
var ranTests:Array<String> = [];
var outputMap:Map<String,String> = [];
var tasks:Array<TaskData> = [];
var type:String = "";
// cpp tests take a long time to compile, so sometimes its not run if quick testing is required
var target = "hl";
var suite = new TestSuite();
var completeBool = false;
var sortMode = "";
var testCount = 0;
var offset = 0;
var run:String = "";
var runOnly:String = "";
var lastTaskLogs = [];
var dryRun = false;
final runnerCount = Compiler.getDefine("runnerCount") ?? "2";
var unitBool = false;
var stdBool = false;
var goBool = false;
var yaegiBool = false;
var tinygoBool = false;
var libsBool = false;
var noLogs = false;

function main() {
	final targetDefine = Compiler.getDefine("target") ?? Compiler.getDefine("targets");
	if (targetDefine != null)
		target = targetDefine;
	File.saveContent("test.log", "");
	logOutput = File.append("test.log", false);
	// logs
	noLogs = Compiler.getDefine("nologs") != null;
	// go by example, stdlib, yaegi, go internal tests, unit regression tests
	ciBool = Compiler.getDefine("ci") != null;
	hxbBool = Compiler.getDefine("hxb") != null;
	unitBool = Compiler.getDefine("unit") != null;
	stdBool = Compiler.getDefine("std") != null;
	libsBool = Compiler.getDefine("libs") != null;
	goBool = Compiler.getDefine("go") != null;
	globalPath = Compiler.getDefine("path") ?? "";
	yaegiBool = Compiler.getDefine("yaegi") != null;
	tinygoBool = Compiler.getDefine("tinygo") != null;
	sortMode = Compiler.getDefine("mode") ?? (Compiler.getDefine("sort") ?? "");
	final reportBool = Compiler.getDefine("report") != null;
	final listAllBool = Compiler.getDefine("listAll") != null;
	final countStr = Compiler.getDefine("count");
	testCount = countStr != null ? Std.parseInt(countStr) : 0;
	final offsetStr = Compiler.getDefine("offset");
	offset = offsetStr != null ? Std.parseInt(offsetStr) : 0;
	run = Compiler.getDefine("run") ?? "";
	runOnly = Compiler.getDefine("runonly") ?? "";
	dryRun = Compiler.getDefine("dryRun") != null;
	startStamp = haxe.Timer.stamp();
	if (listAllBool) {
		createTestLists();
		Sys.exit(0);
	}
	if (!unitBool && !stdBool && !goBool && !yaegiBool && !libsBool) {
		trace("no tests specified");
		close();
		return;
	}
	runTests();
	if (reportBool) {
		runReport();
		Sys.exit(0);
	}
	trace(tests);
	trace(tests.length);
	trace(tasks.length);
	if (!dryRun) {
		Main.setup(new Main.InstanceData(), Std.parseInt(runnerCount)); // amount of processes to spawn
		Main.onComplete = complete;
		Main.onClose = close;
		final timer = new haxe.Timer(100);
		timer.run = update;
	}
}

private function runReport() {
	final testName = type + (sortMode == "" ? "" : "_" + sortMode) + "_" + target;
	final exists = FileSystem.exists('tests/$testName.json');
	final output:Array<String> = exists ? Json.parse(File.getContent('tests/$testName.json')) : [];
	if (!exists)
		throw testName + " not set";
	final testsJson = Json.parse(File.getContent('tests/sort_$type.json'));
	var paths:Array<String> = Reflect.field(testsJson, sortMode).map(s -> s.split("\n")[0]);
	var tests:Array<String> = paths.map(s -> toName(s));
	tests = tests.map(s -> sanatize(s));
	for (i in 0...output.length) {
		final v = output[i];
		final path = paths[i];
		final parts = v.split("|");
		final partTarget = parts[0];
		if (partTarget != target)
			continue;
		final path = sanatize(parts[1]);
		final index = tests.indexOf(path);
		final testValue = tests[index];
		final pathValue = paths[index];
		while (tests.remove(testValue))
			paths.remove(pathValue);
	}
	for (i in 0...tests.length) {
		if (excludeTest(tests[i])) {
			tests.remove(tests[i]);
			paths.remove(paths[i]);
		}
	}
	if (tests.length == 0)
		return;
	Sys.println(tests.join("\n"));
	final mdContent = new StringBuf();
	mdContent.add('# $testName\n');
	for (i in 0...tests.length) {
		mdContent.add('## ${tests[i]}\n');
		mdContent.add('```go\n');
		mdContent.add(File.getContent(paths[i]));
		mdContent.add('\n```\n');
	}

	File.saveContent('tests/$testName.md', mdContent.toString());
}

private function runTests() {
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
	if (libsBool)
		testLibs();
	tests.sort((a, b) -> a > b ? 1 : -1); // consistent across os targets
	if (run != "") {
		tests = tests.filter((v) -> v.indexOf(run) != -1);
		tasks = tasks.filter((v) -> v.path.indexOf(run) != -1);
		trace(tests);
	}
	if (testCount > 0) {
		tests = tests.slice(0, tests.length < testCount ? tests.length : testCount);
	}
	if (offset > 0) {
		tests = tests.slice(offset > tests.length ? tests.length : offset);
	}
	if (runOnly != "") {
		tests = tests.filter(v -> v == runOnly);
		tasks = tasks.filter(v -> v.path == runOnly);
	}
	ranTests = [];
	for (test in tests) {
		final path = Path.withoutDirectory(Path.withoutExtension(test));
		ranTests.push('$target|$path');
	}
}

var runningCount = 0;
var instance:InstanceData = null;
var timeout = 0;
var retryFailedCount = 2;
var failedRegressionTasks:Array<TaskData> = [];

function update() {
	// Sys.println("tests: " + tests.length + " tasks: " + tasks.length + " running: " + runningCount + " " + lastTaskLogs);
	if (completeBool && tests.length == 0 && tasks.length == 0 && runningCount == 0) {
		trace("COMPLETE");
		close();
	}
	if (timeout++ > (10 * 60) * 6) {
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
	final removeTest = [];
	for (i in 0...tests.length) {
		final test = tests[i];
		final hxmlName = sanatize(Path.withoutExtension(test));
		final hxml = "golibs/" + type + "_" + hxmlName;
		final args = [test, '--norun', '--hxml', hxml];
		if (testBool)
			args.push("--test");
		if (noDepsBool)
			args.push("-nodeps");
		if (globalPath == "") {
			args.push(path);
		}else{
			args.push(globalPath);
		}
		instance = Main.compileArgs(args);
		instance.data = {excludes: excludeFuncs[i]};
		final compiled = Main.compile(instance);
		timeout = 0;
		if (!compiled) {
			break;
		}
		removeTests.push(test);
	}
	for (test in removeTests) {
		tests.remove(test);
	}
	if (tasks.length > 0 && runningCount < Std.parseInt(runnerCount) ) {
		final task = tasks.pop();
		if (!noLogs) {
			Sys.println("tests: " + tests.length + " tasks: " + tasks.length + " running: " + runningCount + " " + lastTaskLogs);
		}
		if (hxbBool) {
			Sys.println("Enable hxb");
			task.args.push("--hxb-lib");
			task.args.push("go2hx.zip");
		}
		final taskString = task.command + " " + task.args.join(" ");
		lastTaskLogs.push(taskString);
		runningCount++;
		final ls = ChildProcess.spawn(task.command, task.args);
		var timeoutTimer = new haxe.Timer((1000 * 60) * 8);
		timeoutTimer.run = () -> {
			runningCount--;
			trace("TEST TIMEOUT: " + task.command + " " + task.args.join(" "));
			if (task.runtime) {
				suite.runtimeError(task);
			}else{
				suite.buildError(task);
			}
			ls.removeAllListeners();
			ls.kill();
		};
		ls.stdout.on('data', function(data) {
			if (!noLogs) {
				log(task.target + "|" + task.path + "|" + task.runtime + "|" + task.stamp());
				Sys.print(data);
				task.output += data;
				log(data);
			}
			timeout = 0;
		});
		ls.stderr.on('data', function(data) {
			log(task.target + "|" + task.path + "|" + task.runtime + "|" + task.stamp());
			Sys.print(data);
			task.output += data;
			log(data);
			timeout = 0;
		});
		ls.on('close', function(code) {
			final output = task.output;
			// if good close
			if (code == 0) {
				if (task.runtime || task.target == "interp") {
					final wanted = outputMap[type + "_" + task.path];
					if (wanted != null && wanted != "") {
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
				}else {
					final cmd = Main.runTarget(task.target,"golibs/" + task.out, task.excludeArgs,task.main).split(" ");
					tasks.push({command:cmd[0], args: cmd.slice(1), target: task.target, path: task.path, runtime: true, out: "", main: ""});
				}
			}else{
				if (task.runtime || task.target == "interp") {
					trace("runtime error: " + task.command + " " + task.args.join(" "));
					// runtime error
					trace("CLOSE: " + code);
					// stdlogs output
					if (!FileSystem.exists("tests/stdlogs")) {
						FileSystem.createDirectory("tests/stdlogs");
					}
					if (type == "std") {
						final name = StringTools.replace(task.path, "/", "_") + "_" + task.target;
						final analyzeDataFileName = "tests/stdlogs/"  + name + ".json";
						final data = analyzeStdLog(output);
						File.saveContent("tests/stdlogs/" + name + ".log", output);
						var failed = false;
						if (FileSystem.exists(analyzeDataFileName)) {
							final previousData:{passes:Array<String>, runs:Array<String>, fails:Array<String>} = Json.parse(File.getContent(analyzeDataFileName));
							for (pass in previousData.passes) {
								if (data.passes.indexOf(pass) == -1) {
									trace("REGRESSION");
									suite.regressionTestError(task, pass);
									failed = true;
								}
							}
						}
						if (!failed)
							File.saveContent(analyzeDataFileName, Json.stringify(data, null, "    "));
					
					}
					suite.runtimeError(task);
				}else{
					trace("build error: " + task.command + " " + task.args.join(" "));
					suite.buildError(task);
					if (type == "std") {
						final name = StringTools.replace(task.path, "/", "_") + "_" + task.target;
						File.saveContent("tests/stdlogs/" + name + ".log", output);
					}
				}
			}
			runningCount--;
			timeout = 0;
			timeoutTimer.stop();
			lastTaskLogs.remove(taskString);
			completeBool = true;
		});
	}
}

private function analyzeStdLog(content:String):{runs:Array<String>, passes:Array<String>, fails:Array<String>} {
	final lines = content.split("\n");
	final runPrefix = "=== RUN  ";
	final passPrefix = "-- PASS: ";
	final skipPrefix = "-- SKIP: ";
	final failPrefix = "-- FAIL: ";
	final runs:Array<String> = [];
	final passes:Array<String> = [];
	final fails:Array<String> = [];
	for (line in lines) {
		if (StringTools.startsWith(line, passPrefix) || StringTools.startsWith(line, skipPrefix)) {
			final s = line.substr(passPrefix.length).split(" ")[0];
			if (!passes.contains(s))
				passes.push(s);
		}else if (StringTools.startsWith(line, runPrefix)){
			final s = line.substr(runPrefix.length).split(" ")[0];
			if (!runs.contains(s))
				runs.push(s);
		}else if (StringTools.startsWith(line, failPrefix)) {
			final s = line.substr(failPrefix.length).split(" ")[0];
			if (!fails.contains(s))
				fails.push(s);
		}
	}
	return {passes: passes, fails: fails, runs: runs};
}

private function complete(modules:Array<Typer.Module>, data:{excludes:Array<String>}) {
	timeout = 0;
	completeBool = true;
	// spawn targets
	final paths = Main.mainPaths(modules);
	for (path in paths) {
		final main = path;
		path = path.charAt(0).toLowerCase() + path.substr(1);
		final hxml = "golibs/" + type + "_" + sanatize(path) + ".hxml";
		final out = createTargetOutput(target, type, path);
		final outCmd = Main.buildTarget(target, "golibs/" + out).split(" ");
		final args = [hxml].concat(outCmd);
		if (ciBool)
			args.unshift("haxe");
		tasks.push({command: ciBool ? "npx" : "haxe", args: args, path: path, runtime: false, target: target, out: out, main: main});
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
	final testStr = "_test.";
	final index = s.indexOf(testStr);
	if (index != -1) {
		s = s.substr(index + testStr.length);
	}
	s = Typer.normalizePath(s);
	s = Path.withoutDirectory(s);
	s = Path.withoutExtension(s);
	s = StringTools.replace(s, "/", "_");
	if (Typer.reserved.indexOf(s) != -1) {
		s += "_";
	}
	if (Typer.reservedClassNames.indexOf(s.charAt(0).toUpperCase() + s.substr(1)) != -1)
		s += "_";
	return s;
}

private function testGo() { // go tests
	type = "go";
	sortDataToTests(Json.parse(File.getContent("tests/sort_go.json")));
}

private function testStd() { // standard library package tests
	type = "std";
	final list:Array<String> = Json.parse(File.getContent("data/tests.json"));
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
		final out = createTargetOutput(target, type, name);
		final targetLibs = Main.targetLibs(target);
		final outCmd = (Main.buildTarget(target, "golibs/" + out) + (targetLibs == "" ? "" : " " + targetLibs)).split(" ");
		final args = [hxml].concat(outCmd);
		// remove ANSI escape codes for colours
		args.push("-D");
		args.push("message.no-color");
		if (ciBool)
			args.unshift("haxe");
		tasks.push({command: ciBool ? "npx" : "haxe", args: args, path: name, runtime: false, target: target, out: out, main: main});
		Sys.println(args.join(" "));
	}
	Sys.println("______________________");
	// haxe stdgo/unicode.hxml --interp
}

private function log(v) {
	Sys.println(v);
	logOutput.writeString('$v\n');
	logOutput.flush();
}

final input:Array<String> = [];

private function close() {
	log("======= TIME =======");
	log(Date.now().toString());
	log("elapsed: " + (haxe.Timer.stamp() - startStamp));
	log("======= SUMMARY RESULTS ======");
	function calc(count:Int, total:Int):String {
		if (count == 0)
			return "0 0%";
		return count + " " + (Std.int(count / total * 10000) / 100) + "%";
	}
	if (type == "")
		return;
	final testName = type + (sortMode == "" ? "" : "_" + sortMode) + "_" + target;
	var output:Array<String> = FileSystem.exists('tests/$testName.json') ? Json.parse(File.getContent('tests/$testName.json')) : [];
	// remove targets that don't exist
	output = output.filter(o -> ranTests.indexOf(o) == -1);
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
	var regressionTestLines = [];
	for (data in suite.dataList) {
		if (data.regressionTestName != "") {
			regressionTestLines.push(data.path + ":" + data.regressionTestName);
			continue;
		}
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
			if (input.indexOf(fullName) == -1)
				input.push(fullName);
			while (output.remove(fullName)) {}
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
	if (failedRegressionTasks.length > 0 || regressionTestLines.length > 0) {
		if (failedRegressionTasks.length > 0) {
			log('         regression results: ');
			for (obj in output)
				log(obj);
		}
		if (regressionTestLines.length > 0) {
			log("regression test funcs:");
			log("    " + regressionTestLines.join("    \n"));
		}
		code = 1;
		// retry failed tests
		if (retryFailedCount-- > 0) {
			tasks = failedRegressionTasks;
			//suite.dataList = [];
			log('retrying failed tasks: ' + tasks.length);
			failedRegressionTasks = [];
			dryRun = false;
			return;
		}
	}else{
		input.sort((a, b) -> a > b ? 1 : -1);
		final filePath = 'tests/$testName.json';
		var outputFile:Array<String> = FileSystem.exists(filePath) ? Json.parse(File.getContent(filePath)) : [];
		for (path in input) {
			if (outputFile.indexOf(path) == -1)
				outputFile.push(path);
		}
		final fileContent = Json.stringify(outputFile , null, " ");
		Sys.println(' Saving file: $filePath:\n\n$fileContent');
		File.saveContent(filePath, fileContent);
		trace(testCount == 0, offset == 0, output.length > 0, run == "");
	}
	logOutput.close();
	Main.close(code);
}

private function testTinyGo() {
	type = "tinygo";
	sortDataToTests(Json.parse(File.getContent("tests/sort_tinygo.json")));
}

private function testLibs() {
	type = "libs";
	testBool = true;
	final libs:Array<{module:String, excludes:Array<String>}> = Json.parse(File.getContent("data/testLibs.json"));
	for (lib in libs) {
		tests.push(lib.module);
		trace(lib.module);
		excludeFuncs.push(lib.excludes);
	}
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
		final name = toName(path);
		
		if (excludeTest(name))
			continue;
		tests.push(path);
		final outputPath = sortData.name + "_" + name;
		outputMap[outputPath] = output;
	}
}

private function excludeTest(name:String) {
	// exclude certain go tests
	switch name {
		case "more_intstar_input": // go-easy build compiler flag excludes wasm
		case "issue32288": // go-easy inf loop uintptr stack and recover
		case "index0": // go-easy no main func
		case "issue16760": // go-easy stack panic for interp, 1000 -> 100 stack as unit test
		case "issue47227": // go-easy cgo
		case "issue7550": // go-easy creates a slice with too large of len: 2147483647
		case "bug113": // go-easy p1 type conversion is int64 target depedent
		case "issue47928": // go-easy fails for golang too
		case "zerosize": // go-easy uses obsecure &runtime.zerobase
		case "export0": // yaegi-easy no main func
		case "sieve": // yaegi-easy SIGNAL 15 Channel buffer pop
		case "issue29624", "issue29312": // yaegi-medium 100d array breaks Haxe's printer
		case "type9", "method16", "struct28": // yaegi-medium not the same as go compiler output
		case "issue26094": // go-medium relies on exact same error messages for null access
		default:
			return false;
	}
	return true;
}

private function testYaegi() {
	type = "yaegi";
	sortDataToTests(Json.parse(File.getContent("tests/sort_yaegi.json")));
}

private function testUnit() {
	type = "unit";
	final dir = "./tests/unit/";
	for (path in FileSystem.readDirectory(dir)) {
		path = dir + path;
		if (FileSystem.isDirectory(path) || path.extension() != "go")
			continue;
		tests.push(path);
	}
	// go run ./tests/unit/append0.go
}

private function createTestLists() {
	trace("create test lists");
	final modes = ["easy","medium", "hard"];
	final testNames = ["go", "yaegi"];
	for (testName in testNames) {
		for (mode in modes) {
			sortMode = mode;
			sortDataToTests(Json.parse(File.getContent('tests/sort_$testName.json')));
			tests = tests.map(path -> toName(path));
			final path = 'tests/${testName}_$mode.json';
			trace("create file: " + path);
			File.saveContent(path, Json.stringify(tests, null, "    "));
			tests = [];
		}
	}
}

function toName(path:String):String {
	return Path.withoutExtension(Path.withoutDirectory(path));
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
	public var regressionTestName = "";
	public function new(path:String,target:String, passing:Bool,task:TaskData,build:Bool,correct:Bool, incorrect:Bool, regressionTestName:String="") {
		this.path = path;
		this.target = target;
		this.passing = passing;
		this.build = build;
		this.correct = correct;
		this.incorrect = incorrect;
		this.task = task;
		this.regressionTestName = regressionTestName;
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
		addData({path: task.path, target: task.target, build: false, task: task, passing: false, incorrect: false, correct: false});
		buildErrorCount++;
		count++;
	}

	public function regressionTestError(task:TaskData, testName:String) {
		addData({path: task.path, target: task.target, build: true, task: task, passing: false, incorrect: false, correct: false, regressionTestName: testName});
	}

	public function runtimeError(task:TaskData) {
		addData({path: task.path, target: task.target, build: true, task: task, passing: false, incorrect: false, correct: false});
		runtimeErrorCount++;
		count++;
	}

	public function success(task:TaskData) { // passess running the test
		addData({path: task.path, target: task.target, build: true, task: task, passing: true, incorrect: false, correct: false});
		successCount++;
		count++;
	}

	public function correct(task:TaskData) { // correct matching output
		addData({path: task.path, target: task.target, build: true, task: task, passing: true, incorrect: false, correct: true});
		correctCount++;
		count++;
	}

	public function incorrect(task:TaskData) { // incorrect matching output
		addData({path: task.path, target: task.target, build: true, task: task, passing: false, incorrect: true, correct: false});
		incorrectCount++;
		count++;
	}

	private function addData(data:TestSuiteData) {
		for (i in 0...dataList.length) {
			if (dataList[i].target == data.target && dataList[i].path == data.path) {
				if (dataList[i].regressionTestName == data.regressionTestName) {
					dataList[i] = data;
					return;
				}
			}
		}
		dataList.push(data);
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
	public var excludeArgs:Array<String> = [];
	public var output:String = "";
	var _stamp:Float = 0;
	public function new(path:String, command:String,args:Array<String>,target:String,runtime:Bool, out:String, main:String) {
		this.path = path;
		this.target = target;
		this.runtime = runtime;
		this.command = command;
		this.args = args;
		this.out = out;
		this.main = main;
		this._stamp = haxe.Timer.stamp();
	}
	public function stamp():Float {
		final oldStamp = this._stamp;
		this._stamp = haxe.Timer.stamp();
		return this._stamp - oldStamp;
	}
}

typedef SortData = {
	name:String,
	easy:Array<String>,
	medium:Array<String>,
	hard:Array<String>,
}