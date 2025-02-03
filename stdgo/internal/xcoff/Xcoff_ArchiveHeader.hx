package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.ArchiveHeader_static_extension) abstract ArchiveHeader(stdgo._internal.internal.xcoff.Xcoff_ArchiveHeader.ArchiveHeader) from stdgo._internal.internal.xcoff.Xcoff_ArchiveHeader.ArchiveHeader to stdgo._internal.internal.xcoff.Xcoff_ArchiveHeader.ArchiveHeader {
    public var _magic(get, set) : String;
    function get__magic():String return this._magic;
    function set__magic(v:String):String {
        this._magic = (v : stdgo.GoString);
        return v;
    }
    public function new(?_magic:String) this = new stdgo._internal.internal.xcoff.Xcoff_ArchiveHeader.ArchiveHeader((_magic : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
