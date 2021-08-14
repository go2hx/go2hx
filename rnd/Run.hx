package;

import haxe.Timer;

function main() {
	Main.setup(0, 1, () -> {
		Main.onComplete = (modules, data) -> {
			if (modules.length == 0)
				throw "no exported path";
			var path = Util.modulePath(modules[0]);
			var command = 'haxe -cp golibs -main $path --interp';
			Sys.command(command);
			Sys.println("\n~~~~~~~~~~~~expected~~~~~~~~~~~~");
			Sys.command("go run ./rnd");
			Main.close();
		};
		trace("compile");
		Sys.println("compile: " + Main.compile(["./rnd", Sys.getCwd()]));
		trace("done");
	});
	while (true)
		Main.update();
}
