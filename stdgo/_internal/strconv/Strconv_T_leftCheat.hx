package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
@:structInit @:using(stdgo._internal.strconv.Strconv_T_leftCheat_static_extension.T_leftCheat_static_extension) class T_leftCheat {
    public var _delta : stdgo.GoInt = 0;
    public var _cutoff : stdgo.GoString = "";
    public function new(?_delta:stdgo.GoInt, ?_cutoff:stdgo.GoString) {
        if (_delta != null) this._delta = _delta;
        if (_cutoff != null) this._cutoff = _cutoff;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_leftCheat(_delta, _cutoff);
    }
}
