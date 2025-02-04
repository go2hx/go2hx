package stdgo._internal.debug.buildinfo;
@:structInit @:using(stdgo._internal.debug.buildinfo.Buildinfo_t_peexe_static_extension.T_peExe_static_extension) class T_peExe {
    public var _f : stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File> = (null : stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File>);
    public function new(?_f:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File>) {
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_peExe(_f);
    }
}
