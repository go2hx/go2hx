package std.io;

class Ioutil {
	public static function ReadAll(r:Io.reader) {}

	public static function ReadFile(filename:String) {}

	public static function WriteFile(filename:String, data:Array<Byte>, perm:Os.fileMode) {}

	public static function ReadDir(dirname:String) {}

	public static function Close() {}

	public static function NopCloser(r:Io.reader) {}

	public static function Write(p:Array<Byte>) {}

	public static function WriteString(s:String) {}

	public static function ReadFrom(r:Io.reader) {}

	public static function TempFile(dir:Stringpattern:String) {}

	public static function TempDir(dir:Stringpattern:String) {}
}
