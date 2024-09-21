package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
@:structInit class FormatTest {
    public var _name : stdgo.GoString = "";
    public var _format : stdgo.GoString = "";
    public var _result : stdgo.GoString = "";
    public function new(?_name:stdgo.GoString, ?_format:stdgo.GoString, ?_result:stdgo.GoString) {
        if (_name != null) this._name = _name;
        if (_format != null) this._format = _format;
        if (_result != null) this._result = _result;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FormatTest(_name, _format, _result);
    }
}
