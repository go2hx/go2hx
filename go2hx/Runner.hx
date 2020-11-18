package go2hx;

import sys.io.File;
import sys.io.Process;
import haxe.Timer;
import sys.FileSystem;

using haxe.io.Path;

class Runner {
	public static function run(input:String, output:String, deleteMode:Bool = false) {
		var main = input.withoutDirectory().withoutExtension();
		var path = input;
		var stamp = Timer.stamp();
		var command = 'go run $path';
		Sys.println('---GOLANG--- $path -> $command');
		// Sys.command('go run $path');

		var proc = new Process(command);
		var code = proc.exitCode(true);
		if (code != 0)
			throw 'Go execution runtime error code: $code';

		var goOutput = proc.stdout.readAll().toString();
		Sys.println(goOutput);

		// Sys.println('stamp: ${Timer.stamp() - stamp}');
		stamp = Timer.stamp();
		main = main.charAt(0).toUpperCase() + main.substr(1); // cap
		path = Path.join([output, '$main.hx']);
		command = 'haxe -cp $output -main $main --interp';
		Sys.println('---HAXE--- $path -> $command');
		proc = new Process(command);
		code = proc.exitCode(true);
		if (code != 0) {
			if (deleteMode)
				FileSystem.deleteFile(path);
			throw 'Haxe execution runtime error code: $code';
		}
		var haxeOutput = proc.stdout.readAll().toString();
		Sys.println(haxeOutput);
	}
}
