import haxe.io.Path;
import sys.FileSystem;
import sys.io.File;
import sys.io.Process;

function main() {
	final args = Sys.args();

	var process = new Process("go", ["version"]);
	var code = process.exitCode();
	if (code != 0) {
		Sys.println("hl command not found, setup golang to run compiler");
	}
	if (Sys.getEnv("HAXELIB_RUN") == "1") {
		if (args.length > 0) {}
	}
	var rebuild = false;
	var process = new Process('git', ['rev-parse', 'HEAD']);
	if (process.exitCode() != 0) {
		var message = process.stderr.readAll().toString();
		trace("Cannot execute `git rev-arse HEAD`. " + message);
		return;
	}
	final version = process.stdout.readLine();
	if (FileSystem.exists("version.txt")) {
		if (version != File.getContent("version.txt")) {
			Sys.println("updating version rebuilding binaries");
			rebuild = true;
		}
	} else {
		rebuild = true; // rebuild if no version present for good measure
	}
	File.saveContent("version.txt", version);
	if (args.indexOf("-rebuild") != -1 || args.indexOf("--rebuild") != -1) { // used to rebuild the compiler each run
		args.remove("-rebuild");
		args.remove("--rebuild");
		Sys.println("rebuilding...");
		rebuild = true;
	}
	var forceEval = false;
	if (args.indexOf("-eval") != -1 || args.indexOf("--eval") != -1) {
		forceEval = true;
	}
	// run go compiler
	if (!FileSystem.exists("go4hx") || rebuild)
		Sys.command("go build .");

	process = new Process("hl", ["--version"]);
	code = process.exitCode();
	process.close();
	if (code == 0 && !forceEval) {
		// run hashlink
		if (!FileSystem.exists("build.hl") || rebuild)
			Sys.command("haxe build.hxml");
		args.unshift("build.hl");
	} else {
		Sys.println("eval not supported (libuv bindings are to weak at the moment), setup hashlink instead");
		return;
	}
	if (rebuild)
		trace("running...");
	Sys.command("hl", args);
}
