package;

import haxe.macro.Compiler;
import haxe.Timer;
import src.Util;

function main() {
	final testBool = false;
	final hxbBool = Compiler.getDefine("hxb") != null;
	Main.onComplete = (modules, data) -> {
		if (modules.length == 0)
			throw "no exported path";
		final mainPath = mainPath(modules);
		if (Compiler.getDefine("rnd_cpp") != null || Compiler.getDefine("cpp_") != null) {
			final command = 'haxe -cp golibs extraParams.hxml -main $mainPath --cpp bin/cpp -lib hxcpp -lib hxcpp-debug-server' + (hxbBool ? " --hxb-lib go2hx.zip" : "");
			Sys.println(command);
			Sys.command(command);
			final command = './bin/cpp/rnd';
			Sys.println(command);
			Sys.command(command);
		} else if (Compiler.getDefine("rnd_js") != null || Compiler.getDefine("js_") != null) {
			final command = 'haxe -cp golibs extraParams.hxml -main $mainPath --js runrnd.js'  + (hxbBool ? " --hxb-lib go2hx.zip" : "");
			Sys.println(command);
			Sys.command(command);
			final command = "NODE_OPTIONS=--enable-source-maps node --stack-size=65500 runrnd.js";
			Sys.println(command);
			Sys.command(command);
		}else if (Compiler.getDefine("rnd_jvm") != null || Compiler.getDefine("jvm_") != null) {
			final command = 'haxe -cp golibs extraParams.hxml -v -main $mainPath --jvm runrnd.jar'  + (hxbBool ? " --hxb-lib go2hx.zip" : "");
			Sys.println(command);
			Sys.command(command);
			final command = "java -jar runrnd.jar";
			Sys.println(command);
			Sys.command(command);
		}else if (Compiler.getDefine("rnd_interp") != null || Compiler.getDefine("interp_") != null) {
			final command = 'haxe -cp golibs extraParams.hxml -main $mainPath --interp' + (hxbBool ? " --hxb-lib go2hx.zip" : "");
			Sys.println(command);
			Sys.command(command);
		}else{
			final command = 'haxe -cp golibs extraParams.hxml -main $mainPath -hl runrnd.hl'  + (hxbBool ? " --hxb-lib go2hx.zip" : "");
			Sys.println(command);
			Sys.println(command);
			final exitCode = Sys.command(command);
			if (exitCode != 0) {
				Main.close();
				return;	
			}
			final profileBool = Compiler.getDefine("profile") != null;
			final command = profileBool ? "hl --profile 10000 runrnd.hl" : "hl runrnd.hl";
			Sys.println(command);
			Sys.command(command);
			if (profileBool) {
				trace("run profile bool");
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
	final args = ["-norun", "-log", "--verbose", "./rnd", Sys.getCwd()];
	// args.unshift("--extern");
	if (testBool)
		args.unshift("-test");
	Main.run(args);
}
