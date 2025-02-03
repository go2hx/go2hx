package stdgo.archive.zip;
@:structInit @:using(stdgo.archive.zip.Zip.Reader_static_extension) abstract Reader(stdgo._internal.archive.zip.Zip_Reader.Reader) from stdgo._internal.archive.zip.Zip_Reader.Reader to stdgo._internal.archive.zip.Zip_Reader.Reader {
    public var _r(get, set) : stdgo._internal.io.Io_ReaderAt.ReaderAt;
    function get__r():stdgo._internal.io.Io_ReaderAt.ReaderAt return this._r;
    function set__r(v:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo._internal.io.Io_ReaderAt.ReaderAt {
        this._r = v;
        return v;
    }
    public var file(get, set) : Array<File>;
    function get_file():Array<File> return [for (i in this.file) i];
    function set_file(v:Array<File>):Array<File> {
        this.file = ([for (i in v) (i : stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>>);
        return v;
    }
    public var comment(get, set) : String;
    function get_comment():String return this.comment;
    function set_comment(v:String):String {
        this.comment = (v : stdgo.GoString);
        return v;
    }
    public var _decompressors(get, set) : stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Decompressor.Decompressor>;
    function get__decompressors():stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Decompressor.Decompressor> return this._decompressors;
    function set__decompressors(v:stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Decompressor.Decompressor>):stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Decompressor.Decompressor> {
        this._decompressors = (v : stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Decompressor.Decompressor>);
        return v;
    }
    public var _baseOffset(get, set) : haxe.Int64;
    function get__baseOffset():haxe.Int64 return this._baseOffset;
    function set__baseOffset(v:haxe.Int64):haxe.Int64 {
        this._baseOffset = (v : stdgo.GoInt64);
        return v;
    }
    public var _fileListOnce(get, set) : stdgo._internal.sync.Sync_Once.Once;
    function get__fileListOnce():stdgo._internal.sync.Sync_Once.Once return this._fileListOnce;
    function set__fileListOnce(v:stdgo._internal.sync.Sync_Once.Once):stdgo._internal.sync.Sync_Once.Once {
        this._fileListOnce = v;
        return v;
    }
    public var _fileList(get, set) : Array<T_fileListEntry>;
    function get__fileList():Array<T_fileListEntry> return [for (i in this._fileList) i];
    function set__fileList(v:Array<T_fileListEntry>):Array<T_fileListEntry> {
        this._fileList = ([for (i in v) i] : stdgo.Slice<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_ReaderAt.ReaderAt, ?file:Array<File>, ?comment:String, ?_decompressors:stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Decompressor.Decompressor>, ?_baseOffset:haxe.Int64, ?_fileListOnce:stdgo._internal.sync.Sync_Once.Once, ?_fileList:Array<T_fileListEntry>) this = new stdgo._internal.archive.zip.Zip_Reader.Reader(_r, ([for (i in file) (i : stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>>), (comment : stdgo.GoString), (_decompressors : stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Decompressor.Decompressor>), (_baseOffset : stdgo.GoInt64), _fileListOnce, ([for (i in _fileList) i] : stdgo.Slice<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
