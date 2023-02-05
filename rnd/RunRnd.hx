package;

import haxe.Timer;
import shared.Util;

function main() {
	final testBool = false;
	Main.onComplete = (modules, data) -> {
		if (modules.length == 0)
			throw "no exported path";
		final mainPath = mainPath(modules);
		final command = 'haxe -cp golibs extraParams.hxml -main $mainPath --interp';
		Sys.println(command);
		Sys.command(command);
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
	final args = ["-norun", "-log", "./rnd", Sys.getCwd()];
	// args.unshift("--extern");
	if (testBool)
		args.unshift("-test");
	Main.run(args);
}
