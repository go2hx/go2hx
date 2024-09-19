package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
@:structInit class ParseTimeZoneTest {
    public var _value : stdgo.GoString = "";
    public var _length : stdgo.GoInt = 0;
    public var _ok : Bool = false;
    public function new(?_value:stdgo.GoString, ?_length:stdgo.GoInt, ?_ok:Bool) {
        if (_value != null) this._value = _value;
        if (_length != null) this._length = _length;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ParseTimeZoneTest(_value, _length, _ok);
    }
}
