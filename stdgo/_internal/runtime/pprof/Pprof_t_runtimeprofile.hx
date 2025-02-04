package stdgo._internal.runtime.pprof;
@:structInit @:using(stdgo._internal.runtime.pprof.Pprof_t_runtimeprofile_static_extension.T_runtimeProfile_static_extension) class T_runtimeProfile {
    public var _stk : stdgo.Slice<stdgo._internal.runtime.Runtime_stackrecord.StackRecord> = (null : stdgo.Slice<stdgo._internal.runtime.Runtime_stackrecord.StackRecord>);
    public var _labels : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer> = (null : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>);
    public function new(?_stk:stdgo.Slice<stdgo._internal.runtime.Runtime_stackrecord.StackRecord>, ?_labels:stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>) {
        if (_stk != null) this._stk = _stk;
        if (_labels != null) this._labels = _labels;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_runtimeProfile(_stk, _labels);
    }
}
