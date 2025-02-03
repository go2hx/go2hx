package stdgo.archive.zip;
@:structInit @:using(stdgo.archive.zip.Zip.T_header_static_extension) abstract T_header(stdgo._internal.archive.zip.Zip_T_header.T_header) from stdgo._internal.archive.zip.Zip_T_header.T_header to stdgo._internal.archive.zip.Zip_T_header.T_header {
    public var fileHeader(get, set) : FileHeader;
    function get_fileHeader():FileHeader return this.fileHeader;
    function set_fileHeader(v:FileHeader):FileHeader {
        this.fileHeader = (v : stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>);
        return v;
    }
    public var _offset(get, set) : haxe.UInt64;
    function get__offset():haxe.UInt64 return this._offset;
    function set__offset(v:haxe.UInt64):haxe.UInt64 {
        this._offset = (v : stdgo.GoUInt64);
        return v;
    }
    public var _raw(get, set) : Bool;
    function get__raw():Bool return this._raw;
    function set__raw(v:Bool):Bool {
        this._raw = v;
        return v;
    }
    public function new(?fileHeader:FileHeader, ?_offset:haxe.UInt64, ?_raw:Bool) this = new stdgo._internal.archive.zip.Zip_T_header.T_header((fileHeader : stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>), (_offset : stdgo.GoUInt64), _raw);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
