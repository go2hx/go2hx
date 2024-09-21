package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
@:structInit class T_afterResult {
    public var _slot : stdgo.GoInt = 0;
    public var _t : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public function new(?_slot:stdgo.GoInt, ?_t:stdgo._internal.time.Time_Time.Time) {
        if (_slot != null) this._slot = _slot;
        if (_t != null) this._t = _t;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_afterResult(_slot, _t);
    }
}
