package stdgo.testing.fstest;
@:structInit @:using(stdgo.testing.fstest.Fstest.T_openMapFile_static_extension) abstract T_openMapFile(stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile) from stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile to stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile {
    public var _path(get, set) : String;
    function get__path():String return this._path;
    function set__path(v:String):String {
        this._path = (v : stdgo.GoString);
        return v;
    }
    public var _mapFileInfo(get, set) : T_mapFileInfo;
    function get__mapFileInfo():T_mapFileInfo return this._mapFileInfo;
    function set__mapFileInfo(v:T_mapFileInfo):T_mapFileInfo {
        this._mapFileInfo = v;
        return v;
    }
    public var _offset(get, set) : haxe.Int64;
    function get__offset():haxe.Int64 return this._offset;
    function set__offset(v:haxe.Int64):haxe.Int64 {
        this._offset = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_path:String, ?_mapFileInfo:T_mapFileInfo, ?_offset:haxe.Int64) this = new stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile((_path : stdgo.GoString), _mapFileInfo, (_offset : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
