package stdgo._internal.debug.buildinfo;
@:structInit @:using(stdgo._internal.debug.buildinfo.Buildinfo_T_machoExe_static_extension.T_machoExe_static_extension) class T_machoExe {
    public var _f : stdgo.Ref<stdgo._internal.debug.macho.Macho_File.File> = (null : stdgo.Ref<stdgo._internal.debug.macho.Macho_File.File>);
    public function new(?_f:stdgo.Ref<stdgo._internal.debug.macho.Macho_File.File>) {
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_machoExe(_f);
    }
}
