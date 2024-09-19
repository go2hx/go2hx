package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
@:structInit class ParseErrorTest {
    public var _format : stdgo.GoString = "";
    public var _value : stdgo.GoString = "";
    public var _expect : stdgo.GoString = "";
    public function new(?_format:stdgo.GoString, ?_value:stdgo.GoString, ?_expect:stdgo.GoString) {
        if (_format != null) this._format = _format;
        if (_value != null) this._value = _value;
        if (_expect != null) this._expect = _expect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ParseErrorTest(_format, _value, _expect);
    }
}
