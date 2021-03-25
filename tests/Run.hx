package;

import sys.io.FileInput;
import sys.FileSystem;
import haxe.io.Path;
import sys.io.File;

var path:String;

function main() {
	Sys.setCwd("tests");
	path = Path.normalize(Sys.getCwd());
	gen();
}

function gen() {
	var tests = load();
	tests = ["./go/test/atomicload.go"];
	// currently skipping these tests
	tests.remove("./go/test/initialize.go");
	tests.remove("./go/test/method7.go");

	// Error: Class name must start with an uppercase letter
	tests.remove("./go/test/235.go");
	tests.remove("./go/test/64bit.go");
	// trace(tests);
	tests.push(path);
	Main.exportBool = true;
	Main.init(tests);
	tests.pop();
	Sys.setCwd("..");
	File.saveContent("tests.txt", "");
	var output = File.append("tests.txt", false);
	var length = Main.exportPaths.length;
	var passedCount = 0;
	for (i in 0...length) {
		var path = Main.exportPaths[i];
		path = StringTools.replace(path, "/", ".");
		var command = 'haxe -cp tests/golibs -main $path --interp';
		path = path.substr(path.lastIndexOf(".") + 1); // get the final name
		var proc = new sys.io.Process(command);
		var code:Null<Int> = null;
		Sys.println('------ $path ------ $i/$length');
		for (i in 0...60 * 10) {
			code = proc.exitCode(false);
			if (code != null)
				break;
			Sys.sleep(1 / 60);
		}
		if (code == null) {
			Sys.println("timed out...");
			Sys.println('command: $command');
			output.writeString('- [ ] $path (timed out)\n');
		} else {
			if (code <= 0) {
				Sys.println(proc.stdout.readAll().toString());
				passedCount++;
				output.writeString('- [x] $path\n');
			} else {
				var line:String = "";
				try {
					line = getLine(proc.stderr.readLine());
				}catch(e) {
					line = 'unable to read line, error: $e';
				}
				Sys.println('command: $command');
				Sys.println(line + "\n" + proc.stderr.readAll().toString());
				output.writeString('- [ ] $path    - $line \n');
			}
		}
		proc.kill();
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
