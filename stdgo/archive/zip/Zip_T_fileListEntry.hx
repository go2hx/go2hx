package stdgo.archive.zip;
@:structInit @:using(stdgo.archive.zip.Zip.T_fileListEntry_static_extension) abstract T_fileListEntry(stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry) from stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry to stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _file(get, set) : File;
    function get__file():File return this._file;
    function set__file(v:File):File {
        this._file = (v : stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>);
        return v;
    }
    public var _isDir(get, set) : Bool;
    function get__isDir():Bool return this._isDir;
    function set__isDir(v:Bool):Bool {
        this._isDir = v;
        return v;
    }
    public var _isDup(get, set) : Bool;
    function get__isDup():Bool return this._isDup;
    function set__isDup(v:Bool):Bool {
        this._isDup = v;
        return v;
    }
    public function new(?_name:String, ?_file:File, ?_isDir:Bool, ?_isDup:Bool) this = new stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry((_name : stdgo.GoString), (_file : stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>), _isDir, _isDup);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
