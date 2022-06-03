import haxe.io.Path;
import shared.Util;
import sys.FileSystem;
import sys.io.File;
import sys.io.Process;

function main() {
	final args = Sys.args();

	var process = new Process("go", ["version"]);
	var code = process.exitCode();
	if (code != 0) {
		Sys.println("go command not found");
		return;
	}
	process.close();

	haxelibInstallGit("kevinresol", "bson");

	var rebuild = false;
	process = new Process('git', ['rev-parse', 'HEAD']);
	if (process.exitCode() != 0) {
		var message = process.stderr.readAll().toString();
		trace("Cannot execute `git rev-arse HEAD`. " + message);
		return;
	}
	final version = process.stdout.readLine();
	process.close();
	if (FileSystem.exists("version.txt")) {
		if (!rebuild && version != File.getContent("version.txt")) {
			Sys.println("updating version rebuilding binaries");
			rebuild = true;
		}
	} else {
		rebuild = true; // rebuild if no version present for good measure
	}
	if (!FileSystem.exists("tools")) {
		Sys.command("git clone https://github.com/go2hx/tools --depth=1");
	} else {
		if (rebuild) {
			Sys.setCwd("tools");
			Sys.command("git pull");
			Sys.setCwd("..");
		}
	}
	File.saveContent("version.txt", version);
	if (args.indexOf("-rebuild") != -1 || args.indexOf("--rebuild") != -1) { // used to rebuild the compiler each run
		args.remove("-rebuild");
		args.remove("--rebuild");
		Sys.println("rebuilding...");
		rebuild = true;
	}
	// run go compiler
	if (!FileSystem.exists("go4hx") || rebuild)
		Sys.command("go build .");

	process = new Process("hl", ["--version"]);
	code = process.exitCode();
	process.close();

	if (code == 0) {
		// run hashlink
		if (!FileSystem.exists("build.hl") || rebuild)
			Sys.command("haxe build-hl.hxml");
		args.unshift("build.hl");
	} else {
		Sys.command("haxe build-interp.hxml " + args.join(" "));
		return;
	}
	Sys.command("hl", args);
}
