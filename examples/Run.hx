package;

import haxe.Rest;
import sys.io.File;

var sources:Array<String> = [];
var cwd = Sys.getCwd();
var localPath:String;

function main() {
	Sys.setCwd("./examples");
	localPath = Sys.getCwd();
	var file = File.read("libs.txt");
	while (!file.eof()) {
		var line = file.readLine();
		sources.push(line);
	}
	file.close();
	trace("libs: " + sources);

	Sys.command('lix scope create');

	/*var localBool = false;
		Sys.command("lix install https://github.com/PXshadow/go2hx");
		run(sources,localBool); //use git version */

	var localBool = true;
	run(sources, localBool); // use local version
}

function run(args:Array<String>, localBool:Bool) {
	var args = args.join(" ");
	if (localBool) {
		Sys.setCwd("..");
		Sys.command('neko run.n $args $localPath');
	} else {
		Sys.command('lix run go2hx $args');
	}
}
