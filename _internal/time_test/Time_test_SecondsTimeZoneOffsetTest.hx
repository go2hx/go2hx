package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
@:structInit class SecondsTimeZoneOffsetTest {
    public var _format : stdgo.GoString = "";
    public var _value : stdgo.GoString = "";
    public var _expectedoffset : stdgo.GoInt = 0;
    public function new(?_format:stdgo.GoString, ?_value:stdgo.GoString, ?_expectedoffset:stdgo.GoInt) {
        if (_format != null) this._format = _format;
        if (_value != null) this._value = _value;
        if (_expectedoffset != null) this._expectedoffset = _expectedoffset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SecondsTimeZoneOffsetTest(_format, _value, _expectedoffset);
    }
}
