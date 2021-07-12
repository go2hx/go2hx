package;

import sys.io.FileOutput;
import sys.io.FileInput;
import sys.FileSystem;
import haxe.io.Path;
import sys.io.File;

var path:String;
var port:Int = 4004;

function main() {
	Sys.setCwd("tests");
	path = Path.normalize(Sys.getCwd());
	initOutput();

	tinygo();
	// gotests();
	// completion.close();
	output.close();
}

var pathto:String = "";

function tinygo() {
	var tests:Array<String> = [];
	if (!FileSystem.isDirectory("tinygo"))
		Sys.command("git clone https://github.com/tinygo-org/tinygo");
	var repo = "tinygo/testdata";
	for (path in FileSystem.readDirectory(repo)) {
		var p = '$repo/$path';
		if (FileSystem.isDirectory(p) || Path.extension(path) != "go")
			continue;
		tests.push('./$p');
	}

	pathto = "/tinygo/testdata/";
	for (test in [
		"atomic",
		"env", // needs test runner to set enviorment variables and sys args before program execution
		"channel", // uses time pkg not supported yet
		"interface", // uses time pkg not supported yet
		"float", // uses fmt formatter for numbers not supported yet
		"print", // uses fmt formatter for numbers not supported yet
		"math",  // uses fmt formatter for numbers not supported yet
		"gc", // timed to closely to go's runtime gc
		"ldflags",
	])
		tests.remove('.$pathto$test.go');
	tests = ['.$pathto' + "reflect.go"];
	total += tests.length;
	for (test in tests) {
		compile([test], true);
		passed += run(true);
	}
}

function gotests() {
	var tests = loadGoTests();
	// currently skipping these tests
	pathto = "/go/test/";
	for (test in [
		"goprint",
		"locklinear",
		"mallocfin",
		"gcgort",
		"channel", // using gosched
		"stackobj", // gc attempts to collect from the heap
		"named", // very strange argument as typename function arguments, really obscure only test if real code runs into it.
		"mergemul", // prints close to the same, times out though with no exit code
		"initialize", // not sure
		"method7", // not sure
		"chancap",
		"closedchan",
		"cmp",
		"method",
		"method5",
		"nil",
		"nilptr2",
		"nilptr_aix",
		"recover",
		"recover2",
		"recover3",
		"zerodivide", // requires recover to properly function.
		"235",
		"64bit", // Class name must start with an uppercase letter
		"peano", // breaks testing system causes all other tests to timeout after
		"stack", // passes but is super flakey with the completion server, potential error on the Haxe side
		// "rename", //messed up the typed AST, can be ran on its own in the future TODO
		"closure", // to integrated with go's runtime
	])
		tests.remove('.$pathto$test.go');
	tests = ['.$pathto' + "append.go"];
	total += tests.length;
	for (test in tests) {
		compile([test], false);
		passed += run(false);
	}
}

var total:Int = 0;
var passed:Int = 0;

function compile(tests:Array<String>, compareOutput:Bool) {
	tests.push(path);
	Main.exportBool = true;
	Main.init(tests);
	tests.pop();
	Sys.setCwd("..");
}

var output:FileOutput = null;

function initOutput() {
	File.saveContent("tests.txt", "");
	if (!FileSystem.exists("tests/results"))
		FileSystem.createDirectory("tests/results");
	output = File.append("tests.txt", false);
}

function run(compareOutput:Bool):Int {
	var completion = null;
	if (!compareOutput)
		completion = new sys.io.Process('haxe --wait $port', null, true);
	var length = Main.exportPaths.length;
	var passedCount = 0;
	for (i in 0...length) {
		var path = Main.exportPaths[i];
		path = StringTools.replace(path, "/", ".");
		var name = path.substr(path.lastIndexOf(".") + 1); // get the final name
		var command = '-cp tests/golibs -main $path --interp';
		var textFile = 'tests/results/$name.txt';
		if (compareOutput) {
			command += ' > $textFile';
		} else {
			command = ' --connect $port $command';
		}
		command = 'haxe $command';
		var proc = new sys.io.Process(command);
		var code:Null<Int> = null;
		Sys.println('------ $path ------');
		for (i in 0...10 * 10) {
			code = proc.exitCode(false);
			if (code != null)
				break;
			Sys.sleep(1 / 20);
		}
		if (code == null) {
			Sys.println("timed out...");
			command = cleanCommand(command);
			Sys.println('command: $command');
			output.writeString('- [ ] $name (timed out)\n');
		} else {
			if (code <= 0) {
				var outputText = proc.stdout.readAll().toString();
				if (compareOutput) {
					var content = File.getContent(textFile);
					var name = name.toLowerCase();
					switch name {
						case "math_":
							name = "math";
						case "reflect_":
							name = "reflect";
						case "slice_":
							name = "slice";
					}
					var compareFile = name + ".txt";
					var compare = File.getContent('./tests$pathto$compareFile');
					Sys.println("================");
					if (content != compare) {
						Sys.println("NOT EQUAL");
						var lines = content.split("\n");
						var lines2 = compare.split("\n");
						for (i in 0...lines.length) {
							if (lines[i] != lines2[i]) {
								lines[i] += " != " + lines2[i];
							}
						}
						Sys.println(lines.join("\n"));
					} else {
						Sys.println("EQUAL");
					}
				} else {
					Sys.println(outputText);
				}
				passedCount++;
				output.writeString('- [x] $name\n');
			} else {
				var line:String = "";
				try {
					line = getLine(proc.stderr.readLine());
				} catch (e) {
					line = 'unable to read line, error: $e';
				}
				command = cleanCommand(command);
				Sys.println('command: $command');
				Sys.println(line + "\n" + proc.stderr.readAll().toString());
				output.writeString('- [ ] $name    - $line \n');
			}
		}
		proc.close();
		output.flush();
	}
	if (!compareOutput)
		completion.close();
	return passedCount;
}

function getLine(line:String):String {
	var sub = "/";
	var index2 = line.indexOf(".hx:");
	var index = line.substr(0, index2).lastIndexOf(sub);
	index = index == -1 ? 0 : index + sub.length;
	return line.substr(index);
}

function cleanCommand(command:String):String
	return StringTools.replace(command, '--connect $port', "");

function loadGoTests():Array<String> {
	var tests:Array<String> = [];
	if (!FileSystem.isDirectory("go"))
		Sys.command("git clone https://github.com/golang/go");

	function readLine(file:FileInput):Bool {
		try {
			var line = file.readLine();
			line = line.substr(3);
			if (["run", "runoutput"].indexOf(line) != -1)
				return true;
		} catch (e) {
			trace(e);
		}
		file.close();
		return false;
	}
	var repo = "go/test";
	for (path in FileSystem.readDirectory(repo)) {
		var p = '$repo/$path';
		if (FileSystem.isDirectory(p) || Path.extension(path) != "go")
			continue;
		if (readLine(File.read(p, false)))
			tests.push('./$p');
	}
	return tests;
}
