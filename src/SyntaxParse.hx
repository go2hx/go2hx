import sys.io.File;
import haxe.io.Bytes;
import byte.ByteData;
import haxeparser.HaxeParser;

using haxe.io.Path;

import sys.FileSystem;

function read(path:String) {
	path = path.addTrailingSlash();
	if (FileSystem.exists(path) && FileSystem.isDirectory(path)) {
		var dir = FileSystem.readDirectory(path);
		for (name in dir) {
			if (name.substring(0, 1) == ".")
				continue; // skip git

			if (FileSystem.isDirectory(path + name)) {
				read(path + name); // folder
			} else {
				// file
				if (name.extension() != "hx")
					continue;
				parse(path + name);
			}
		}
	}
	trace('Parsed $numFiles files');
	trace('has Error(s) $hasError');
}

var hasError = false;
var numFiles = 0;

function parse(path:String) {
	var content = sys.io.File.getContent(path);
	var input = byte.ByteData.ofString(content);
	try {
		hxparse.Utils.catchErrors(input, function() {
			var parser = new haxeparser.HaxeParser(input, path);
			parser.define("cross");
			parser.define("scriptable");
			parser.define("unsafe");
			try {
				numFiles++;
				parser.parse();
			} catch (e:haxeparser.HaxeParser.ParserError) {
				switch (e.msg) {
					case SharpError(_):
					case _:
						var pMsg = new hxparse.Position(e.pos.file, e.pos.min, e.pos.max).format(input);
						throw('$pMsg: ${e.msg}\n');
				}
			}
		});
	} catch (e:Dynamic) {
		hasError = true;
		trace(e);
	}
}
