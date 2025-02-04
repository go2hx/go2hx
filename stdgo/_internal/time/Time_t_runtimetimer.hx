package stdgo._internal.time;
@:structInit @:using(stdgo._internal.time.Time_t_runtimetimer_static_extension.T_runtimeTimer_static_extension) class T_runtimeTimer {
    public var _pp : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public var _when : stdgo.GoInt64 = 0;
    public var _period : stdgo.GoInt64 = 0;
    public var _f : (stdgo.AnyInterface, stdgo.GoUIntptr) -> Void = null;
    public var _arg : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _seq : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public var _nextwhen : stdgo.GoInt64 = 0;
    public var _status : stdgo.GoUInt32 = 0;
    public function new(?_pp:stdgo.GoUIntptr, ?_when:stdgo.GoInt64, ?_period:stdgo.GoInt64, ?_f:(stdgo.AnyInterface, stdgo.GoUIntptr) -> Void, ?_arg:stdgo.AnyInterface, ?_seq:stdgo.GoUIntptr, ?_nextwhen:stdgo.GoInt64, ?_status:stdgo.GoUInt32) {
        if (_pp != null) this._pp = _pp;
        if (_when != null) this._when = _when;
        if (_period != null) this._period = _period;
        if (_f != null) this._f = _f;
        if (_arg != null) this._arg = _arg;
        if (_seq != null) this._seq = _seq;
        if (_nextwhen != null) this._nextwhen = _nextwhen;
        if (_status != null) this._status = _status;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_runtimeTimer(_pp, _when, _period, _f, _arg, _seq, _nextwhen, _status);
    }
}
