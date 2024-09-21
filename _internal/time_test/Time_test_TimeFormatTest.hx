package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
@:structInit class TimeFormatTest {
    public var _time : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var _formattedValue : stdgo.GoString = "";
    public function new(?_time:stdgo._internal.time.Time_Time.Time, ?_formattedValue:stdgo.GoString) {
        if (_time != null) this._time = _time;
        if (_formattedValue != null) this._formattedValue = _formattedValue;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TimeFormatTest(_time, _formattedValue);
    }
}
