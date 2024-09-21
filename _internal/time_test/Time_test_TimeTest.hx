package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
@:structInit class TimeTest {
    public var _seconds : stdgo.GoInt64 = 0;
    public var _golden : _internal.time_test.Time_test_T_parsedTime.T_parsedTime = ({} : _internal.time_test.Time_test_T_parsedTime.T_parsedTime);
    public function new(?_seconds:stdgo.GoInt64, ?_golden:_internal.time_test.Time_test_T_parsedTime.T_parsedTime) {
        if (_seconds != null) this._seconds = _seconds;
        if (_golden != null) this._golden = _golden;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TimeTest(_seconds, _golden);
    }
}
