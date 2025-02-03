package stdgo.debug.buildinfo;
@:structInit @:using(stdgo.debug.buildinfo.Buildinfo.T_xcoffExe_static_extension) abstract T_xcoffExe(stdgo._internal.debug.buildinfo.Buildinfo_T_xcoffExe.T_xcoffExe) from stdgo._internal.debug.buildinfo.Buildinfo_T_xcoffExe.T_xcoffExe to stdgo._internal.debug.buildinfo.Buildinfo_T_xcoffExe.T_xcoffExe {
    public var _f(get, set) : stdgo._internal.internal.xcoff.Xcoff_File.File;
    function get__f():stdgo._internal.internal.xcoff.Xcoff_File.File return this._f;
    function set__f(v:stdgo._internal.internal.xcoff.Xcoff_File.File):stdgo._internal.internal.xcoff.Xcoff_File.File {
        this._f = (v : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>);
        return v;
    }
    public function new(?_f:stdgo._internal.internal.xcoff.Xcoff_File.File) this = new stdgo._internal.debug.buildinfo.Buildinfo_T_xcoffExe.T_xcoffExe((_f : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
