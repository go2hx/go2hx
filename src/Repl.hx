import sys.FileSystem;
import sys.io.File;

var pastCode = "";
var waiting = false;

function init() {
	var imports = ["fmt", "reflect"];
	var imports = [for (value in imports) '    "$value"'].join("\n");
	if (!FileSystem.isDirectory("repl")) {
		FileSystem.createDirectory("repl");
	}
	File.saveContent("repl/code.go", "");
	Main.onComplete = (modules, data) -> {
		final length = modules.length;
		if (length > 0) {
			// show the haxe equivlant
			var haxeOutput = File.getContent("golibs/command_line_arguments/T_eval.hx");
			haxeOutput = haxeOutput.substring(haxeOutput.indexOf("{\n") + 2, haxeOutput.lastIndexOf("}"));
			var exprs = haxeOutput.split('"-$-";\n');
			var exprString = exprs.length > 0 ? exprs.pop() : "";
			exprString = StringTools.trim(exprString);
			// Sys.println(exprString);
			Util.infoMsg(exprString);
			// execute since there is an output
			File.saveContent("repl/error", "1");
			final path = Util.modulePath(modules[0]);
			File.saveContent("Repl.hx", 'function main() {$path.main(); sys.io.File.saveContent("repl/error","0");}');
			var command = "haxe -cp golibs -main Repl --interp";
			Sys.command(command);
			FileSystem.deleteFile("Repl.hx");
			final success = File.getContent("repl/error") == "0";
			if (success)
				File.saveContent("repl/code.go", pastCode + code + '_ = "-$-"\n'); // add code to code cache
		} else {
			Util.failMsg("compiler error");
		}
		code = "";
		waiting = false;
	};
	while (true) {
		if (waiting) {
			Main.update();
		} else {
			loop();
		}
	}
}

private final imports = [
	for (value in ["fmt", "reflect", "strconv", "sort", "strings", "math", "math/rand"])
		'    "$value"'
].join("\n");

private var tempString = 'package main\nimport (\n$imports\n)\nfunc main() {\n::code::\n}';
private var code = "";
private var openBracket = 0;

private function loop() {
	if (openBracket == 0)
		Sys.print("> ");
	var line = Sys.stdin().readLine();
	if (line == "clear") {
		File.saveContent("repl/code.go", "");
		code = "";
		openBracket = 0;
		return;
	}
	if (line == "close" || line == "exit") {
		Main.close();
		return;
	}
	if (line == "help") {
		Sys.println("The go2hx REPL takes as input Golang code and outputs + evaluates Haxe code\n supported imports:\n" + imports);
		return;
	}
	line = StringTools.trim(line);
	if (line == "")
		return;
	if (StringTools.endsWith(line, "{"))
		openBracket++;
	if (StringTools.startsWith(line, "}")) {
		openBracket--;
	}

	line += "\n";

	code += line;
	var failed = false;
	if (openBracket == 0) {
		// is an expr/statement can now build
		var template = new haxe.Template(tempString);
		pastCode = File.getContent("repl/code.go");
		File.saveContent("repl/eval.go", template.execute({code: pastCode + code}));
		Main.compile(["./repl/eval.go", Sys.getCwd()]);
		waiting = true;
	}
}
