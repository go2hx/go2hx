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
@:structInit class T_roundTest {
    public var _i : stdgo.GoUInt64 = 0;
    public var _nd : stdgo.GoInt = 0;
    public var _down : stdgo.GoString = "";
    public var _round : stdgo.GoString = "";
    public var _up : stdgo.GoString = "";
    public var _int : stdgo.GoUInt64 = 0;
    public function new(?_i:stdgo.GoUInt64, ?_nd:stdgo.GoInt, ?_down:stdgo.GoString, ?_round:stdgo.GoString, ?_up:stdgo.GoString, ?_int:stdgo.GoUInt64) {
        if (_i != null) this._i = _i;
        if (_nd != null) this._nd = _nd;
        if (_down != null) this._down = _down;
        if (_round != null) this._round = _round;
        if (_up != null) this._up = _up;
        if (_int != null) this._int = _int;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_roundTest(_i, _nd, _down, _round, _up, _int);
    }
}
