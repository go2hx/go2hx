package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(stdgo._internal.time.Time_Ticker_static_extension.Ticker_static_extension) class Ticker {
    public var c : stdgo.Chan<stdgo._internal.time.Time_Time.Time> = (null : stdgo.Chan<stdgo._internal.time.Time_Time.Time>);
    public var _r : stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer = ({} : stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer);
    public function new(?c:stdgo.Chan<stdgo._internal.time.Time_Time.Time>, ?_r:stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer) {
        if (c != null) this.c = c;
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Ticker(c, _r);
    }
}
