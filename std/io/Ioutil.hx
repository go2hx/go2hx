package io;

class Ioutil {
	public static function readAll(r:io.Reader) {}

	public static function readFile(filename:String) {}

	public static function writeFile(filename:String, data:Array<Byte>, perm:Os.FileMode) {}

	public static function readDir(dirname:String) {}

	public static function close() {}

	public static function nopCloser(r:io.Reader) {}

	public static function write(p:Array<Byte>) {}

	public static function writeString(s:String) {}

	public static function readFrom(r:io.Reader) {}

	public static function tempFile(dir:String) {}

	public static function tempDir(dir:String) {}
}
