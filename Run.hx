import haxe.io.Path;
import sys.FileSystem;

function main() {
	final args = Sys.args();
	var process = new sys.io.Process("hl --version");
	final hlExists = process.exitCode() == 0;
	var nodeExists = false;
	if (!hlExists) {
		process = new sys.io.Process("node", ["-v"]);
		nodeExists = process.exitCode() == 0;
	}
	if (Sys.getEnv("HAXELIB_RUN") == "1") {
		if (args.length > 0) {
			args.push("-localpath");
		}
	}
	var rebuild = false;
	if (args.indexOf("-rebuild") != -1) { // used to rebuild the compiler each run
		args.remove("-rebuild");
		Sys.println("rebuilding...");
		rebuild = true;
	}
	// run go compiler
	if (!FileSystem.exists("go4hx"))
		Sys.command("go build .");
	if (hlExists) {
		if (!FileSystem.exists("build.hl") || rebuild)
			Sys.command("haxe buildHashlink.hxml");
		args.unshift("build.hl");
		Sys.command("hl", args);
	} else if (nodeExists) {
		if (!FileSystem.exists("build.js") || rebuild) {
			Util.haxelibInstall("hxnodejs");
			Sys.command("haxe buildNode.hxml");
		}
		args.unshift("build.js");
		Sys.command("node", args);
	} else {
		if (!FileSystem.exists("build.n") || rebuild)
			Sys.command("haxe buildNeko.hxml");
		args.unshift("build.n");
		Sys.command("neko", args);
	}
}
