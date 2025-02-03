package stdgo.runtime.pprof;
@:structInit @:using(stdgo.runtime.pprof.Pprof.T_runtimeProfile_static_extension) abstract T_runtimeProfile(stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile.T_runtimeProfile) from stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile.T_runtimeProfile to stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile.T_runtimeProfile {
    public var _stk(get, set) : Array<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>;
    function get__stk():Array<stdgo._internal.runtime.Runtime_StackRecord.StackRecord> return [for (i in this._stk) i];
    function set__stk(v:Array<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>):Array<stdgo._internal.runtime.Runtime_StackRecord.StackRecord> {
        this._stk = ([for (i in v) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>);
        return v;
    }
    public var _labels(get, set) : Array<stdgo._internal.unsafe.Unsafe.UnsafePointer>;
    function get__labels():Array<stdgo._internal.unsafe.Unsafe.UnsafePointer> return [for (i in this._labels) i];
    function set__labels(v:Array<stdgo._internal.unsafe.Unsafe.UnsafePointer>):Array<stdgo._internal.unsafe.Unsafe.UnsafePointer> {
        this._labels = ([for (i in v) i] : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>);
        return v;
    }
    public function new(?_stk:Array<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>, ?_labels:Array<stdgo._internal.unsafe.Unsafe.UnsafePointer>) this = new stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile.T_runtimeProfile(([for (i in _stk) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>), ([for (i in _labels) i] : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
