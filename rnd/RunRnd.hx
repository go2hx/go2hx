package;

import haxe.macro.Compiler;
import haxe.Timer;
import src.Util;

function main() {
	final testBool = false;
	Main.onComplete = (modules, data) -> {
		if (modules.length == 0)
			throw "no exported path";
		final mainPath = mainPath(modules);
		if (Compiler.getDefine("rnd_cpp") != null) {
			final command = 'haxe -cp golibs extraParams.hxml -main $mainPath --cpp bin/cpp -lib hxcpp -lib hxcpp-debug-server';
			Sys.println(command);
			Sys.command(command);
			final command = './bin/cpp/rnd';
			Sys.println(command);
			Sys.command(command);
		} else if (Compiler.getDefine("rnd_interp") != null) {
			final command = 'haxe -cp golibs extraParams.hxml -main $mainPath --interp';
			Sys.println(command);
			Sys.command(command);
		}else{
			final command = 'haxe -cp golibs extraParams.hxml -main $mainPath -hl runrnd.hl';
			Sys.println(command);
			Sys.command(command);
			final profileBool = Compiler.getDefine("profile") != null;
			final command = profileBool ? "hl --profile 10000 runrnd.hl" : "hl runrnd.hl";
			Sys.println(command);
			Sys.command(command);
			if (profileBool) {
				ProfileGen.run("hlprofile.dump");
				//final command = "hl profiler.hl hlprofile.dump";
				//Sys.println(command);
				//Sys.command(command);

			}
		}
		Sys.println("\n~~~~~~~~~~~~expected~~~~~~~~~~~~");
		var command = testBool ? "test" : "run";
		final wasm = false;
		if (wasm) {
			Sys.putEnv("GOOS", "js");
			Sys.putEnv("GOARCH", "wasm");
			final run = systemName == "Windows" ? "bash" : "sh";
			if (command == "run")
				command = "build";
			Sys.command('go $command -o rnd.wasm ./rnd && $run go_js_wasm_exec rnd.wasm');
		} else {
			Sys.command('go $command ./rnd');
		}
		Main.close();
	};
	final args = ["-norun", "-log", "-stack", "./rnd", Sys.getCwd()];
	// args.unshift("--extern");
	if (testBool)
		args.unshift("-test");
	Main.run(args);
}
