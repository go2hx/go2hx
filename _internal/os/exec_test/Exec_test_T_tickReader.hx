package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
@:structInit @:using(_internal.os.exec_test.Exec_test_T_tickReader_static_extension.T_tickReader_static_extension) class T_tickReader {
    public var _interval : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public var _lastTick : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var _s : stdgo.GoString = "";
    public function new(?_interval:stdgo._internal.time.Time_Duration.Duration, ?_lastTick:stdgo._internal.time.Time_Time.Time, ?_s:stdgo.GoString) {
        if (_interval != null) this._interval = _interval;
        if (_lastTick != null) this._lastTick = _lastTick;
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_tickReader(_interval, _lastTick, _s);
    }
}
