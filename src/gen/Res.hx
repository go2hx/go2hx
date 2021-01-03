package gen;

import haxe.Resource;
import haxe.macro.Context;
import sys.FileSystem;
import haxe.io.Bytes;
import sys.io.File;

using haxe.io.Path;

class Res {
	#if macro
	public static function build() {
		Context.onGenerate(_ -> {
			// Sys.command('go build -ldflags "-s -w"');
			Sys.command("go build");
		});
	}
	#end
}
