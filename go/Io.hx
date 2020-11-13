package go;

class Io {
    public static function WriteString(w:Writer, s:String) {}

	public static function ReadAtLeast(r:Reader, buf:Array<Byte>, min:Int) {}

	public static function ReadFull(r:Reader, buf:Array<Byte>) {}

	public static function CopyN(dst:Writer, src:Reader, n:Int64) {}

	public static function Copy(dst:Writer, src:Reader) {}

	public static function CopyBuffer(dst:Writer, src:Reader, buf:Array<Byte>) {}

	public static function LimitReader(r:Reader, n:Int64) {}

	public static function Read(p:Array<Byte>) {}

	public static function NewSectionReader(r:ReaderAt, off:Int64, n:Int64) {}

	public static function Read(p:Array<Byte>) {}

	public static function Seek(offset:Int64, whence:Int) {}

	public static function ReadAt(p:Array<Byte>, off:Int64) {}

	public static function Size() {}

	public static function TeeReader(r:Reader, w:Writer) {}

	public static function Read(p:Array<Byte>) {}

	public static function Read(Array<Byte>) {}

	public static function Read(p:Array<Byte>) {}

	public static function MultiReader(readers:Any) {}

	public static function Write(p:Array<Byte>) {}

	public static function WriteString(s:String) {}

	public static function MultiWriter(writers:Any) {}

	public static function Store(err:haxe.Exception) {}

	public static function Load() {}

	public static function Read(b:Array<Byte>) {}

	public static function CloseRead(err:haxe.Exception) {}

	public static function Write(b:Array<Byte>) {}

	public static function CloseWrite(err:haxe.Exception) {}

	public static function Read(data:Array<Byte>) {}

	public static function Close() {}

	public static function CloseWithError(err:haxe.Exception) {}

	public static function Write(data:Array<Byte>) {}

	public static function Close() {}

	public static function CloseWithError(err:haxe.Exception) {}

	public static function Pipe() {}
}