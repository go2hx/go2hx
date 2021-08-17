package;

import haxe.Json;
import sys.FileSystem;
import sys.io.File;

function main() {
	var data = Json.parse(File.getContent(".unittest/results.json"));
	final classes:Array<Cl> = data.classes;
	var results:Array<Result> = [];
	if (FileSystem.exists("./results.json"))
		results = Json.parse(File.getContent("./results.json"));

	var process = new sys.io.Process('git', ['rev-parse', 'HEAD']);
	final commit = process.stdout.readLine();
	process.close();

	var diff:Array<DiffResult> = [];
	var saveDiff:Array<DiffResult> = [];
	if (FileSystem.exists("./diff.json"))
		diff = Json.parse(File.getContent("diff.json"));

	for (cl in classes) {
		var passing = 0;
		for (method in cl.methods) {
			var bool = false;
			if (method.state == "success") {
				passing++;
				bool = true;
			}
			final name = cl.name + "/" + method.name;
			saveDiff.push({name: name, passing: bool});
			for (res in diff) {
				if (name != res.name)
					continue;
				if (bool == res.passing)
					continue;
				final message = bool ? "passing" : "failing";
				Sys.println('$name is now $message');
			}
		}
		final total = cl.methods.length;
		results.push({
			timestamp: Std.int(Date.now().getTime()),
			name: cl.name,
			passing: passing,
			total: total,
			commit: commit,
		});
	}
	File.saveContent("./diff.json", Json.stringify(saveDiff));
	File.saveContent("./results.json", Json.stringify(results));
}

typedef DiffResult = {
	name:String,
	passing:Bool,
}

typedef Result = {
	timestamp:Int,
	name:String,
	passing:Int,
	total:Int,
	commit:String,
}

typedef Cl = {
	name:String,
	methods:Array<Method>,
}

typedef Method = {
	name:String,
	state:String,
}
