package stdgo.testing.fstest;
@:structInit @:using(stdgo.testing.fstest.Fstest.T_mapDir_static_extension) abstract T_mapDir(stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir) from stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir to stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir {
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
    public var _entry(get, set) : Array<T_mapFileInfo>;
    function get__entry():Array<T_mapFileInfo> return [for (i in this._entry) i];
    function set__entry(v:Array<T_mapFileInfo>):Array<T_mapFileInfo> {
        this._entry = ([for (i in v) i] : stdgo.Slice<stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo>);
        return v;
    }
    public var _offset(get, set) : StdTypes.Int;
    function get__offset():StdTypes.Int return this._offset;
    function set__offset(v:StdTypes.Int):StdTypes.Int {
        this._offset = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_path:String, ?_mapFileInfo:T_mapFileInfo, ?_entry:Array<T_mapFileInfo>, ?_offset:StdTypes.Int) this = new stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir((_path : stdgo.GoString), _mapFileInfo, ([for (i in _entry) i] : stdgo.Slice<stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo>), (_offset : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
