package tests;

import haxe.Json;
import sys.FileSystem;
import sys.io.File;

function main() {
	final diff:Array<{name:String, passing:Bool}> = Json.parse(File.getContent("diff.json"));
	var res:Array<{name:String, size:Int}> = [];
	for (obj in diff) {
		if (!obj.passing) {
			var size:Int = 0;
			final index = obj.name.indexOf("/");
			final start = switch obj.name.substr(0, index) {
				case "go":
					"./tests/go/test/";
				case "yaegi":
					"./tests/yaegi/_test/";
				default:
					throw "unknown name";
			}
			size = FileSystem.stat(start + obj.name.substr(index + 1) + ".go").size;
			res.push({name: obj.name, size: size});
		}
	}
	res.sort((a, b) -> {
		return a.size - b.size;
	});
	res = res.slice(0, 10);
	for (obj in res) {
		Sys.println(obj.name);
	}
}
