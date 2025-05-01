import sys.io.File;

function main() {
	final lines = File.getContent("remove.txt").split("\n");
	for (target in ["js"]) {
		for (line in lines) {
			final parts = line.split(":");
			final pkg = StringTools.replace(parts[0], "/", "_");
			final func = StringTools.trim(parts[1]);
			final path = 'tests/logs/${pkg}_$target.json';
			final data:{runs:Array<String>, passes:Array<String>, fails:Array<String>} = haxe.Json.parse(File.getContent(path));
			data.passes.remove(func);
			File.saveContent(path, haxe.Json.stringify(data, null, "    "));
		}
	}
}
