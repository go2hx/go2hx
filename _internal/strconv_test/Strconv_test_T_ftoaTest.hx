package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
@:structInit class T_ftoaTest {
    public var _f : stdgo.GoFloat64 = 0;
    public var _fmt : stdgo.GoUInt8 = 0;
    public var _prec : stdgo.GoInt = 0;
    public var _s : stdgo.GoString = "";
    public function new(?_f:stdgo.GoFloat64, ?_fmt:stdgo.GoUInt8, ?_prec:stdgo.GoInt, ?_s:stdgo.GoString) {
        if (_f != null) this._f = _f;
        if (_fmt != null) this._fmt = _fmt;
        if (_prec != null) this._prec = _prec;
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ftoaTest(_f, _fmt, _prec, _s);
    }
}
