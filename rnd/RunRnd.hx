package;

import haxe.Timer;

function main() {
	final testBool = false;
	Main.setup(0, 1, () -> {
		Main.onComplete = (modules, data) -> {
			if (modules.length == 0)
				throw "no exported path";
			final path = Util.modulePath(modules);
			final command = 'haxe -cp golibs extraParams.hxml -main $path --interp';
			Sys.println(command);
			Sys.command(command);
			Sys.println("\n~~~~~~~~~~~~expected~~~~~~~~~~~~");
			final command = testBool ? "test" : "run";
			Sys.command('go $command ./rnd');
			Main.close();
		};
		final args = ["./rnd", Sys.getCwd()];
		if (testBool)
			args.unshift("-test");
		Sys.println("compile: " + Main.compile(args));
	});
	while (true)
		Main.update();
}
