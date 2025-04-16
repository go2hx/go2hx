package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_funcinfo_static_extension.T_funcInfo_static_extension) class T_funcInfo {
    @:embedded
    public var __func : stdgo.Ref<stdgo._internal.runtime.Runtime_t__func.T__func> = (null : stdgo.Ref<stdgo._internal.runtime.Runtime_t__func.T__func>);
    public function new(?__func:stdgo.Ref<stdgo._internal.runtime.Runtime_t__func.T__func>) {
        if (__func != null) this.__func = __func;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var _funcInfo(get, never) : () -> stdgo._internal.runtime.Runtime_t_funcinfo.T_funcInfo;
    @:embedded
    @:embeddededffieldsffun
    public function get__funcInfo():() -> stdgo._internal.runtime.Runtime_t_funcinfo.T_funcInfo return @:check32 this.__func._funcInfo;
    public var _isInlined(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__isInlined():() -> Bool return @:check32 this.__func._isInlined;
    public function __copy__() {
        return new T_funcInfo(__func);
    }
}
