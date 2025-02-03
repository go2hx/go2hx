package stdgo.archive.zip;
@:structInit @:using(stdgo.archive.zip.Zip.File_static_extension) abstract File(stdgo._internal.archive.zip.Zip_File.File) from stdgo._internal.archive.zip.Zip_File.File to stdgo._internal.archive.zip.Zip_File.File {
    public var fileHeader(get, set) : FileHeader;
    function get_fileHeader():FileHeader return this.fileHeader;
    function set_fileHeader(v:FileHeader):FileHeader {
        this.fileHeader = v;
        return v;
    }
    public var _zip(get, set) : Reader;
    function get__zip():Reader return this._zip;
    function set__zip(v:Reader):Reader {
        this._zip = (v : stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader>);
        return v;
    }
    public var _zipr(get, set) : stdgo._internal.io.Io_ReaderAt.ReaderAt;
    function get__zipr():stdgo._internal.io.Io_ReaderAt.ReaderAt return this._zipr;
    function set__zipr(v:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo._internal.io.Io_ReaderAt.ReaderAt {
        this._zipr = v;
        return v;
    }
    public var _headerOffset(get, set) : haxe.Int64;
    function get__headerOffset():haxe.Int64 return this._headerOffset;
    function set__headerOffset(v:haxe.Int64):haxe.Int64 {
        this._headerOffset = (v : stdgo.GoInt64);
        return v;
    }
    public var _zip64(get, set) : Bool;
    function get__zip64():Bool return this._zip64;
    function set__zip64(v:Bool):Bool {
        this._zip64 = v;
        return v;
    }
    public function new(?fileHeader:FileHeader, ?_zip:Reader, ?_zipr:stdgo._internal.io.Io_ReaderAt.ReaderAt, ?_headerOffset:haxe.Int64, ?_zip64:Bool) this = new stdgo._internal.archive.zip.Zip_File.File(fileHeader, (_zip : stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader>), _zipr, (_headerOffset : stdgo.GoInt64), _zip64);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
