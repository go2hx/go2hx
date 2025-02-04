package stdgo._internal.debug.buildinfo;
@:structInit @:using(stdgo._internal.debug.buildinfo.Buildinfo_t_xcoffexe_static_extension.T_xcoffExe_static_extension) class T_xcoffExe {
    public var _f : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>);
    public function new(?_f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>) {
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_xcoffExe(_f);
    }
}
