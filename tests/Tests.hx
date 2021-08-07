package;

import haxe.io.Path;
import sys.FileSystem;
import sys.io.File;
import sys.io.FileInput;
import sys.io.FileOutput;

var path:String;
var port:Int = 4004;

function main() {
	Sys.setCwd("tests");
	if (!FileSystem.exists("results"))
		FileSystem.createDirectory("results");
	var completion = new sys.io.Process('haxe --wait $port --verbose', null, true);
	path = Path.normalize(Sys.getCwd());
	initOutput();
	yaegi();
	// tinygo();
	// gotests();
	completion.close();
	output.writeString("PASSING: " + passed + "/" + total);
	output.close();
}

var pathto:String = "";

function replaceBuiltinPrint(pathto:String) {
	for (path in FileSystem.readDirectory(pathto)) {
		var p = '$pathto$path';
		if (FileSystem.isDirectory(p) || Path.extension(path) != "go")
			continue;
		var content = File.getContent(p);
		content = StringTools.replace(content, "println(", "fmt.Println(");
		content = StringTools.replace(content, "print(", "fmt.Print(");
		// add import
		final pack = "package main ";
		var index = content.indexOf(pack) + pack.length;
		content = content.substr(0, index) + '\n\nimport "fmt"\n' + content.substr(index);
		File.saveContent(p, content);
	}
}

function yaegi() {
	var tests:Array<String> = [];
	if (!FileSystem.isDirectory("yaegi"))
		Sys.command("git clone https://github.com/traefik/yaegi");
	pathto = "yaegi/_test/";
	for (path in FileSystem.readDirectory(pathto)) {
		var p = '$pathto$path';
		if (FileSystem.isDirectory(p) || Path.extension(path) != "go")
			continue;
		tests.push('./$p');
	}

	for (test in [])
		tests.remove('.$pathto$test.go');

	// tests = ['./$pathto' + "addr0.go"];
	total += tests.length;
	for (test in tests) {
		compile([test], true);
	}
}

function tinygo() {
	var tests:Array<String> = [];
	pathto = "tinygo/testdata/";
	if (!FileSystem.isDirectory("tinygo")) {
		Sys.command("git clone https://github.com/tinygo-org/tinygo");
		replaceBuiltinPrint(pathto);
	}
	for (path in FileSystem.readDirectory(pathto)) {
		var p = '$pathto$path';
		if (FileSystem.isDirectory(p) || Path.extension(path) != "go")
			continue;
		tests.push('./$p');
	}

	pathto = "/tinygo/testdata/";
	for (test in [
		"atomic",
		"env", // needs test runner to set enviorment variables and sys args before program execution
		"gc", // relies on gc runtime
		"ldflags",
		"filesystem", // uses test data
		"stdlib", // runs but still doesn't pass
	])
		tests.remove('.$pathto$test.go');
	// tests = ['.$pathto' + "interface.go"];
	total += tests.length;
	for (test in tests) {
		compile([test], false);
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
		compile([test], true);
	}
}

var total:Int = 0;
var passed:Int = 0;

function compile(tests:Array<String>, server:Bool) {
	server = true;
	tests.push(path);
	Main.exportBool = true;
	Main.init(tests);
	tests.pop();
	Sys.setCwd("..");

	var path = ""; // TODO
	path = StringTools.replace(path, "/", ".");
	Sys.println('------ $path ------');
	var name = path.substr(path.lastIndexOf(".") + 1); // get the final name
	var command = '-cp tests/golibs -main $path --interp';

	inline function getTextFile(name:String)
		return 'tests/results/$name.txt';
	final textFile = getTextFile(name);

	if (server)
		command += ' --connect $port';
	command += ' > $textFile';
	command = 'haxe $command';

	var runner = run(command);
	command = cleanCommand(command);
	final str = File.getContent(textFile);
	output.writeString('- [' + (runner ? "x" : " ") + '] $name \n${!runner ? '    $command\n    $str\n' : ''}');
	if (!runner) {
		Sys.println(str);
		return;
	}

	var program = tests[0];
	program = "./tests" + program.substr(1);
	final textFile2 = getTextFile(name + "2");
	final go = run('go run $program > $textFile2');
	if (!go) {
		trace('go error running: $program');
	}
	Sys.println("PASSED");
	passed++;
}

var output:FileOutput = null;

function initOutput() {
	File.saveContent("tests.md", "");
	if (!FileSystem.exists("tests/results"))
		FileSystem.createDirectory("tests/results");
	output = File.append("tests.md", false);
}

typedef Runner = {str:String, error:Bool};

function run(command:String):Bool {
	final proc = new sys.io.Process(command);
	var code:Null<Int> = null;
	Sys.println(cleanCommand(command));
	for (i in 0...10 * 10) {
		code = proc.exitCode(false);
		if (code != null)
			break;
		Sys.sleep(1 / 20);
	}

	if (code == null) {
		proc.close();
		return false;
	} else {
		if (code <= 0) {
			final str = proc.stdout.readAll().toString();
			proc.close();
			return true;
		} else {
			final str = proc.stderr.readAll().toString();
			Sys.println(str);
			proc.close();
			return false;
		}
	}
}

function cleanCommand(command:String):String {
	command = StringTools.replace(command, '--connect $port', "");
	final index = command.lastIndexOf(">");
	if (index > -1)
		command = command.substr(0, index);
	return command;
}

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
	var repo = "/go/test";
	for (path in FileSystem.readDirectory(repo)) {
		var p = '$repo/$path';
		if (FileSystem.isDirectory(p) || Path.extension(path) != "go")
			continue;
		if (readLine(File.read(p, false)))
			tests.push('.$p');
	}
	return tests;
}
