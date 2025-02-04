package stdgo._internal.testing.fstest;
@:structInit @:using(stdgo._internal.testing.fstest.Fstest_t_mapfileinfo_static_extension.T_mapFileInfo_static_extension) class T_mapFileInfo {
    public var _name : stdgo.GoString = "";
    public var _f : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile> = (null : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile>);
    public function new(?_name:stdgo.GoString, ?_f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile>) {
        if (_name != null) this._name = _name;
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_mapFileInfo(_name, _f);
    }
}
