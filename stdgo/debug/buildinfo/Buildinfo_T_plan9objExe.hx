package stdgo.debug.buildinfo;
@:structInit @:using(stdgo.debug.buildinfo.Buildinfo.T_plan9objExe_static_extension) abstract T_plan9objExe(stdgo._internal.debug.buildinfo.Buildinfo_T_plan9objExe.T_plan9objExe) from stdgo._internal.debug.buildinfo.Buildinfo_T_plan9objExe.T_plan9objExe to stdgo._internal.debug.buildinfo.Buildinfo_T_plan9objExe.T_plan9objExe {
    public var _f(get, set) : stdgo._internal.debug.plan9obj.Plan9obj_File.File;
    function get__f():stdgo._internal.debug.plan9obj.Plan9obj_File.File return this._f;
    function set__f(v:stdgo._internal.debug.plan9obj.Plan9obj_File.File):stdgo._internal.debug.plan9obj.Plan9obj_File.File {
        this._f = (v : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_File.File>);
        return v;
    }
    public function new(?_f:stdgo._internal.debug.plan9obj.Plan9obj_File.File) this = new stdgo._internal.debug.buildinfo.Buildinfo_T_plan9objExe.T_plan9objExe((_f : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_File.File>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
