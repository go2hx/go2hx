package tests;

using StringTools;
using haxe.io.Path;
using sys.FileSystem;
using sys.io.File;

private function main() {
	yaegi();
	// go();
}

private function yaegi() {
	final dir = "yaegi/_test/";
	var sub = new StringBuf();
	var output = new StringBuf();
	sub.add("[\n");
	output.add("[\n");
	for (path in dir.readDirectory()) {
		var name = path.withoutExtension();
		path = dir + path;
		if (path.isDirectory() || path.extension() != "go")
			continue;

		final input = File.read(path, false);
		var isError = false;
		while (true) {
			try {
				final line = input.readLine();
				if (line == "// Error:") {
					isError = true;
					break;
				}
				if (line == "// Output:")
					break;
			} catch (_) {
				isError = true;
				break;
			}
		}
		if (isError)
			continue;
		var lines = [];
		while (true) {
			try {
				var line = input.readLine();
				line = line.substr(3);
				line = line.replace("<nil>", "null");
				line = line.replace('"', '\\"');
				lines.push('"$line"');
			} catch (e) {
				break;
			}
		}
		sub.add('    "$name",\n');

		output.add('    {name: "$name", output: [');
		output.add(lines.join(","));
		output.add("]},\n");
	}
	sub.add("]");
	output.add("]");
	write(sub.toString() + "\n\n\n\n" + output.toString());
}

private function go() {
	final dir = "go/test/";
	var sub = new StringBuf();
	sub.add("[\n");
	for (path in dir.readDirectory()) {
		var name = path.withoutExtension();
		path = dir + path;
		if (path.isDirectory() || path.extension() != "go")
			continue;
		final input = File.read(path, false);
		final line = input.readLine().substr(3);
		if (!["run", "runoutput"].contains(line))
			continue;
		sub.add('    "$name",\n');
	}
	sub.add("]");
	write(sub.toString());
}

private function write(content:String)
	File.saveContent("gen.txt", content);
