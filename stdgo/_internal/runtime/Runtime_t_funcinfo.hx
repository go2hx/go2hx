package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_funcinfo_static_extension.T_funcInfo_static_extension) class T_funcInfo {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var _funcInfo(get, never) : () -> stdgo._internal.runtime.Runtime_t_funcinfo.T_funcInfo;
    @:embedded
    @:embeddededffieldsffun
    public function get__funcInfo():() -> stdgo._internal.runtime.Runtime_t_funcinfo.T_funcInfo return @:check32 this.new._funcInfo;
    public var _isInlined(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__isInlined():() -> Bool return @:check32 this.new._isInlined;
    public function __copy__() {
        return new T_funcInfo();
    }
}
