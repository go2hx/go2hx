package stdgo.testing.fstest;
@:structInit @:using(stdgo.testing.fstest.Fstest.T_mapFileInfo_static_extension) abstract T_mapFileInfo(stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo) from stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo to stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _f(get, set) : MapFile;
    function get__f():MapFile return this._f;
    function set__f(v:MapFile):MapFile {
        this._f = (v : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_MapFile.MapFile>);
        return v;
    }
    public function new(?_name:String, ?_f:MapFile) this = new stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo((_name : stdgo.GoString), (_f : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_MapFile.MapFile>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
