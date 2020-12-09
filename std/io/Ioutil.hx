package std.io;

class Ioutil {
	public static function readAll(r:Io.reader) {}

	public static function readFile(filename:String) {}

	public static function writeFile(filename:String, data:Array<Byte>, perm:Os.fileMode) {}

	public static function readDir(dirname:String) {}

	public static function close() {}

	public static function nopCloser(r:Io.reader) {}

	public static function write(p:Array<Byte>) {}

	public static function writeString(s:String) {}

	public static function readFrom(r:Io.reader) {}

	public static function tempFile(dir:Stringpattern:String) {}

	public static function tempDir(dir:Stringpattern:String) {}
}
