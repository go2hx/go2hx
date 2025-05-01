package;

import haxe.Timer;
import shared.Util;
import haxe.macro.Compiler as MacroCompiler;

function main() {
	final testBool = false;
	final hxbBool = MacroCompiler.getDefine("hxb") != null;
	Compiler.onComplete = (modules, data) -> {
		if (modules.length == 0)
			throw "no exported path";
		final mainPath = mainPath(modules);
		if (MacroCompiler.getDefine("testbed_cpp") != null || MacroCompiler.getDefine("cpp_") != null) {
			final command = 'haxe -cp golibs extraParams.hxml -main $mainPath --cpp bin/cpp -lib hxcpp -lib hxcpp-debug-server'
				+ (hxbBool ? " --hxb-lib go2hx.zip" : "");
			Sys.println(command);
			Sys.command(command);
			final command = './bin/cpp/testbed';
			Sys.println(command);
			Sys.command(command);
		} else if (MacroCompiler.getDefine("testbed_js") != null || MacroCompiler.getDefine("js_") != null) {
			final command = 'haxe -cp golibs extraParams.hxml -main $mainPath --js testbed.js' + (hxbBool ? " --hxb-lib go2hx.zip" : "");
			Sys.println(command);
			Sys.command(command);
			final command = "NODE_OPTIONS=--enable-source-maps node --stack-size=65500 testbed.js";
			Sys.println(command);
			Sys.command(command);
		} else if (MacroCompiler.getDefine("testbed_jvm") != null || MacroCompiler.getDefine("jvm_") != null) {
			final command = 'haxe -cp golibs extraParams.hxml -v -main $mainPath --jvm testbed.jar' + (hxbBool ? " --hxb-lib go2hx.zip" : "");
			Sys.println(command);
			Sys.command(command);
			final command = "java -jar testbed.jar";
			Sys.println(command);
			Sys.command(command);
		} else if (MacroCompiler.getDefine("testbed_interp") != null || MacroCompiler.getDefine("interp_") != null) {
			final command = 'haxe -cp golibs extraParams.hxml -main $mainPath --interp' + (hxbBool ? " --hxb-lib go2hx.zip" : "");
			Sys.println(command);
			Sys.command(command);
		} else {
			final command = 'haxe -cp golibs extraParams.hxml -main $mainPath -hl testbed.hl' + (hxbBool ? " --hxb-lib go2hx.zip" : "");
			Sys.println(command);
			Sys.println(command);
			final exitCode = Sys.command(command);
			if (exitCode != 0) {
				Compiler.closeCompiler();
				return;
			}
			final profileBool = MacroCompiler.getDefine("profile") != null;
			final command = profileBool ? "hl --profile 10000 testbed.hl" : "hl testbed.hl";
			Sys.println(command);
			Sys.command(command);
			if (profileBool) {
				trace("run profile bool");
				ProfileGen.run("hlprofile.dump");
				// final command = "hl profiler.hl hlprofile.dump";
				// Sys.println(command);
				// Sys.command(command);
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
			Sys.command('go $command -o testbed.wasm ./testbed && $run go_js_wasm_exec testbed.wasm');
		} else {
			Sys.command('go $command ./testbed');
		}
		Compiler.closeCompiler();
	};
	final args = ["-norun", "-log", "--verbose", "./testbed", Sys.getCwd()];
	// args.unshift("--extern");
	if (testBool)
		args.unshift("-test");
	Compiler.runCompilerFromArgs(args);
}
