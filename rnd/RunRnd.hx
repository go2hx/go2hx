package;

import haxe.Timer;

function main() {
	Main.setup(0, 1, () -> {
		Main.onComplete = (modules, data) -> {
			if (modules.length == 0)
				throw "no exported path";
			final path = Util.modulePath(modules[0]);
			final command = 'haxe -cp golibs -main $path --interp';
			Sys.println(command);
			Sys.command(command);
			Sys.println("\n~~~~~~~~~~~~expected~~~~~~~~~~~~");
			Sys.command("go run ./rnd");
			Main.close();
		};
		Sys.println("compile: " + Main.compile(["./rnd", Sys.getCwd()]));
	});
	while (true)
		Main.update();
}
