import haxe.Json;
import sys.io.File;
import sys.io.FileInput;
import sys.io.FileOutput;
import sys.io.Process;
import sys.thread.Lock;

using haxe.io.Path;
using sys.FileSystem;

var tasks:Array<TaskData> = [];
var runsLeft:Int = 0;
var processPool = new ProcessPool(2);
final path = Sys.getCwd();
var failWriter:FileOutput = null;
var successWriter:FileOutput = null;
var ci = false;

function main() {
	final args = Sys.args();
	if (args.length > 0 && args[0] == "ci")
		ci = true;
	processPool.complete = completeProcess;
	Main.setup(0, 4); // 4 processes of go4hx
	Main.onComplete = complete;

	File.saveContent("fail.txt", "");
	File.saveContent("success.txt", "");
	failWriter = File.append("fail.txt", false);
	successWriter = File.append("success.txt", false);

	// final tests = testGoByExample().concat(test883().concat(testStd())).slice(0, 2);
	final tests = testGoByExample();
	final counts:Map<String, Int> = [];
	for (test in tests) { // compute test counts
		if (counts[test.type] == null)
			counts[test.type] = 0;
		counts[test.type]++;
	}
	for (type => count in counts) {
		Sys.println(type + ": " + count);
	}
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
		};
		tasks.push(data);
	}
	tasks = tasks.slice(0, 4);
	runsLeft = tasks.length * targets.length;
	trace(runsLeft);
	// update loop
	while (true)
		update();
}

final targets = ["interp"];

private function update() {
	processPool.update();
	Main.update();
	for (task in tasks) {
		final compiled = Main.compile(Main.compileArgs(task.args), task);
		if (!compiled) // wait delay
			break;
		tasks.remove(task);
	}
}

private function completeProcess(data:{code:Int, command:String}) {
	final s = data.command + "\n";
	if (data.code == 0) {
		successWriter.writeString(s);
		successWriter.flush();
	} else {
		failWriter.writeString(s);
		failWriter.flush();
	}

	if (--runsLeft <= 0)
		close();
	if (runsLeft % targets.length == 0)
		Sys.println(runsLeft);
}

private function complete(modules, obj:TaskData) {
	// spawn targets
	for (target in targets) {
		var command = (ci ? "npx " : "") + "haxe " + obj.hxml + ".hxml";
		final out = createTargetOutput(target, obj.data.type, obj.data.name);
		final args = obj.data.exclude == "" ? [] : ["-excludes"].concat(obj.data.exclude.split(" "));
		if (target != "interp") {
			command += " " + Main.buildTarget(target, out);
			if (target == "hxcpp") {
				command += " -D HXCPP_NONINTERACTIVE";
			}
			command += " && " + Main.runTarget(target, out, obj.data.name, args);
		} else {
			command = (ci ? "npx " : "")
				+ Main.runTarget(target, obj.hxml + ".hxml --run " + obj.data.name.charAt(0).toUpperCase() + obj.data.name.substr(1), obj.data.name, args);
		}
		processPool.run(command);
	}
}

private function createTargetOutput(target:String, type:String, name:String):String {
	return switch target {
		case "interp": type + "_" + sanatize(name) + ".hxml";
		case "hl": type + "_" + sanatize(name) + ".hl";
		case "jvm": type + "_" + sanatize(name) + ".jar";
		case "cpp", "cs": "export/target/" + type + "_" + sanatize(name);
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
	final tests = [];
	for (path in dir.readDirectory()) {
		var name = path.withoutExtension();
		path = dir + path;
		if (path.isDirectory() || path.extension() != "go")
			continue;
		final input = File.read(path, false);
		final line = input.readLine().substr(3);
		if (!["run"].contains(line))
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

private function testStd():Array<TestData> { // standard library package tests
	final list:Array<String> = Json.parse(File.getContent("tests.json")).tests;
	final tests = [];
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

private function close() {
	Sys.println("CLOSE");
	failWriter.close();
	successWriter.close();
	Main.close();
}

private function testYaegi():Array<TestData> {
	final dir = "./tests/yaegi/_test/";
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
		if (path.isDirectory() || path.extension() != "go")
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
			if (path.extension() != "go")
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

typedef TestData = {name:String, type:String, path:String, exclude:String, test:Bool};

@:using(Tests.ToString)
typedef TaskData = {target:String, args:Array<String>, data:TestData, hxml:String};

class ToString {
	public static function toString(d:TaskData):String
		return d.data.type + ":" + d.data.name + "@" + d.target + " cmd: haxelib run go2hx " + d.args.join(" ");
}
