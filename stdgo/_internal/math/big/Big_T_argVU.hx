package stdgo._internal.math.big;
@:structInit class T_argVU {
    public var _d : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word> = (null : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>);
    public var _l : stdgo.GoUInt = 0;
    public var _xp : stdgo.GoUInt = 0;
    public var _zp : stdgo.GoUInt = 0;
    public var _s : stdgo.GoUInt = 0;
    public var _r : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word> = (null : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>);
    public var _c : stdgo._internal.math.big.Big_Word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_Word.Word);
    public var _m : stdgo.GoString = "";
    public function new(?_d:stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>, ?_l:stdgo.GoUInt, ?_xp:stdgo.GoUInt, ?_zp:stdgo.GoUInt, ?_s:stdgo.GoUInt, ?_r:stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>, ?_c:stdgo._internal.math.big.Big_Word.Word, ?_m:stdgo.GoString) {
        if (_d != null) this._d = _d;
        if (_l != null) this._l = _l;
        if (_xp != null) this._xp = _xp;
        if (_zp != null) this._zp = _zp;
        if (_s != null) this._s = _s;
        if (_r != null) this._r = _r;
        if (_c != null) this._c = _c;
        if (_m != null) this._m = _m;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_argVU(_d, _l, _xp, _zp, _s, _r, _c, _m);
    }
}
