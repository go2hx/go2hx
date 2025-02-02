package stdgo._internal.debug.buildinfo;
@:structInit @:using(stdgo._internal.debug.buildinfo.Buildinfo_T_plan9objExe_static_extension.T_plan9objExe_static_extension) class T_plan9objExe {
    public var _f : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_File.File> = (null : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_File.File>);
    public function new(?_f:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_File.File>) {
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_plan9objExe(_f);
    }
}
