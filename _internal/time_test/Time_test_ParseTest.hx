package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
@:structInit class ParseTest {
    public var _name : stdgo.GoString = "";
    public var _format : stdgo.GoString = "";
    public var _value : stdgo.GoString = "";
    public var _hasTZ : Bool = false;
    public var _hasWD : Bool = false;
    public var _yearSign : stdgo.GoInt = 0;
    public var _fracDigits : stdgo.GoInt = 0;
    public function new(?_name:stdgo.GoString, ?_format:stdgo.GoString, ?_value:stdgo.GoString, ?_hasTZ:Bool, ?_hasWD:Bool, ?_yearSign:stdgo.GoInt, ?_fracDigits:stdgo.GoInt) {
        if (_name != null) this._name = _name;
        if (_format != null) this._format = _format;
        if (_value != null) this._value = _value;
        if (_hasTZ != null) this._hasTZ = _hasTZ;
        if (_hasWD != null) this._hasWD = _hasWD;
        if (_yearSign != null) this._yearSign = _yearSign;
        if (_fracDigits != null) this._fracDigits = _fracDigits;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ParseTest(_name, _format, _value, _hasTZ, _hasWD, _yearSign, _fracDigits);
    }
}
