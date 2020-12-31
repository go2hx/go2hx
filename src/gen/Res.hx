package gen;

import haxe.Resource;
import haxe.macro.Context;
import sys.FileSystem;
import haxe.io.Bytes;
import sys.io.File;

using haxe.io.Path;

class Res {
	public static final ext = Sys.systemName() == "Windows" ? ".exe" : "";
	#if macro
	public static function build() {
        Context.onGenerate(_ -> {
			Context.addResource(".haxerc",File.getBytes(".haxerc"));
			Sys.println("Building go4hx (go code for haxe :D)");
			Sys.command('go build -ldflags "-s -w"');
			var go4hxBinary = haxe.zip.Compress.run(File.getBytes("go4hx" + ext),1);
			Sys.println("Packaging go4hx size: " + go4hxBinary.length + " into go2hx");
			Context.addResource("go4hx",go4hxBinary);
			FileSystem.deleteFile("go4hx" + ext);
		});
	}
	#end
}