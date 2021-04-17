package;

import sys.io.FileInput;
import sys.FileSystem;
import haxe.io.Path;
import sys.io.File;

var path:String;
var port:Int = 4004;

function main() {
	Sys.setCwd("tests");
	path = Path.normalize(Sys.getCwd());
	var completion = new sys.io.Process('haxe --wait $port',null,true);
	//tinygo();
	gen();
	completion.close();
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
	for (test in ["atomic",])
		tests.remove('.$pathto$test.go');
	//tests = ['.$pathto' + "float.go"];
	compile(tests, true);
}

function gen() {
	var tests = load();
	// currently skipping these tests
	pathto = "/go/test/";
	for (test in [
		"goprint", "locklinear", "mallocfin", "gcgort", "channel", // using gosched
		"stackobj", // gc attempts to collect from the heap
		"named", // very strange argument as typename function arguments, really obscure only test if real code runs into it.
		"mergemul", // prints close to the same, times out though with no exit code
		"initialize", // not sure
		"method7", // not sure
		"chancap", "closedchan",
		"cmp", "method", "method5", "nil", "nilptr2", "nilptr_aix", "recover", "recover2", "recover3", "zerodivide", // requires recover to properly function.
		"235", "64bit", // Class name must start with an uppercase letter
		"peano", //breaks testing system causes all other tests to timeout after
		"stack", //passes but is super flakey with the completion server, potential error on the Haxe side

	])
		tests.remove('.$pathto$test.go');
	//tests = ['.$pathto' + "iota.go"];
	compile(tests, false);
}

function compile(tests:Array<String>, compareOutput:Bool) {
	tests.push(path);
	Main.exportBool = true;
	Main.init(tests);
	tests.pop();
	Sys.setCwd("..");
	run(compareOutput);
}

function run(compareOutput:Bool) {
	File.saveContent("tests.txt", "");
	var output = File.append("tests.txt", false);
	var length = Main.exportPaths.length;
	var passedCount = 0;
	for (i in 0...length) {
		var path = Main.exportPaths[i];
		path = StringTools.replace(path, "/", ".");
		var command = 'haxe ' + (compareOutput ? "" : '--connect $port ') + '-cp tests/golibs -main $path --interp';
		var name = path.substr(path.lastIndexOf(".") + 1); // get the final name
		var proc = new sys.io.Process(command);
		var code:Null<Int> = null;
		Sys.println('------ $path ------ $i/$length');
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
					var compareFile = name.toLowerCase() + ".txt";
					var compare = File.getContent('./tests$pathto$compareFile');
					var b = outputText != compare;
					if (b) {
						output.writeString('- [ ] $name failed compare');
						command = cleanCommand(command);
						Sys.println('command: $command');
						var lines1 = outputText.split("\n");
						var lines2 = compare.split("\n");
						for (i in 0...lines1.length) {
							lines1[i] = lines1[i] + " = " + (lines1[i] == lines2[i] ? "yes" : "no") + " " + i;
						}
						Sys.println(lines1.join("\n"));
						continue;
					}
				}
				Sys.println(outputText);
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
	output.writeString('\n\n\nPASSING: $passedCount/$length');
	output.close();
}

function getLine(line:String):String {
	var sub = "/";
	var index2 = line.indexOf(".hx:");
	var index = line.substr(0, index2).lastIndexOf(sub);
	index = index == -1 ? 0 : index + sub.length;
	return line.substr(index);
}
function cleanCommand(command:String):String
	return StringTools.replace(command,'--connect $port',"");

function load():Array<String> {
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
	/*for (path in FileSystem.readDirectory('$repo/interface')) {
		var p = '$repo/interface/$path';
		if (FileSystem.isDirectory(p) || Path.extension(path) != "go")
			continue;
		if (readLine(File.read(p,false)))
			tests.push('./$p');
	}*/
	return tests;
}
