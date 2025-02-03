package stdgo.math.big;
class T_nat_static_extension {
    static public function _probablyPrimeLucas(_n:T_nat):Bool {
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._probablyPrimeLucas(_n);
    }
    static public function _probablyPrimeMillerRabin(_n:T_nat, _reps:StdTypes.Int, _force2:Bool):Bool {
        final _reps = (_reps : stdgo.GoInt);
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._probablyPrimeMillerRabin(_n, _reps, _force2);
    }
    static public function _divRecursiveStep(_z:T_nat, _u:T_nat, _v:T_nat, _depth:StdTypes.Int, _tmp:T_nat, _temps:Array<T_nat>):Void {
        final _depth = (_depth : stdgo.GoInt);
        final _tmp = (_tmp : stdgo.Ref<stdgo._internal.math.big.Big_T_nat.T_nat>);
        final _temps = ([for (i in _temps) (i : stdgo.Ref<stdgo._internal.math.big.Big_T_nat.T_nat>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_T_nat.T_nat>>);
        stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._divRecursiveStep(_z, _u, _v, _depth, _tmp, _temps);
    }
    static public function _divRecursive(_z:T_nat, _u:T_nat, _v:T_nat):Void {
        stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._divRecursive(_z, _u, _v);
    }
    static public function _divBasic(_q:T_nat, _u:T_nat, _v:T_nat):Void {
        stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._divBasic(_q, _u, _v);
    }
    static public function _divLarge(_z:T_nat, _u:T_nat, _uIn:T_nat, _vIn:T_nat):stdgo.Tuple<T_nat, T_nat> {
        return {
            final obj = stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._divLarge(_z, _u, _uIn, _vIn);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _modW(_x:T_nat, _d:Word):Word {
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._modW(_x, _d);
    }
    static public function _divW(_z:T_nat, _x:T_nat, _y:Word):stdgo.Tuple<T_nat, Word> {
        return {
            final obj = stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._divW(_z, _x, _y);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _div(_z:T_nat, _z2:T_nat, _u:T_nat, _v:T_nat):stdgo.Tuple<T_nat, T_nat> {
        return {
            final obj = stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._div(_z, _z2, _u, _v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _rem(_z:T_nat, _u:T_nat, _v:T_nat):T_nat {
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._rem(_z, _u, _v);
    }
    static public function _expWW(_z:T_nat, _x:Word, _y:Word):T_nat {
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._expWW(_z, _x, _y);
    }
    static public function _convertWords(_q:T_nat, _s:Array<std.UInt>, _b:Word, _ndigits:StdTypes.Int, _bb:Word, _table:Array<T_divisor>):Void {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _ndigits = (_ndigits : stdgo.GoInt);
        final _table = ([for (i in _table) i] : stdgo.Slice<stdgo._internal.math.big.Big_T_divisor.T_divisor>);
        stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._convertWords(_q, _s, _b, _ndigits, _bb, _table);
    }
    static public function _itoa(_x:T_nat, _neg:Bool, _base:StdTypes.Int):Array<std.UInt> {
        final _base = (_base : stdgo.GoInt);
        return [for (i in stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._itoa(_x, _neg, _base)) i];
    }
    static public function _utoa(_x:T_nat, _base:StdTypes.Int):Array<std.UInt> {
        final _base = (_base : stdgo.GoInt);
        return [for (i in stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._utoa(_x, _base)) i];
    }
    static public function _scan(_z:T_nat, _r:stdgo._internal.io.Io_ByteScanner.ByteScanner, _base:StdTypes.Int, _fracOk:Bool):stdgo.Tuple.Tuple4<T_nat, StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _base = (_base : stdgo.GoInt);
        return {
            final obj = stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._scan(_z, _r, _base, _fracOk);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function _subMod2N(_z:T_nat, _x:T_nat, _y:T_nat, _n:std.UInt):T_nat {
        final _n = (_n : stdgo.GoUInt);
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._subMod2N(_z, _x, _y, _n);
    }
    static public function _sqrt(_z:T_nat, _x:T_nat):T_nat {
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._sqrt(_z, _x);
    }
    static public function _setBytes(_z:T_nat, _buf:Array<std.UInt>):T_nat {
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._setBytes(_z, _buf);
    }
    static public function _bytes(_z:T_nat, _buf:Array<std.UInt>):StdTypes.Int {
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._bytes(_z, _buf);
    }
    static public function _expNNMontgomery(_z:T_nat, _x:T_nat, _y:T_nat, _m:T_nat):T_nat {
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._expNNMontgomery(_z, _x, _y, _m);
    }
    static public function _expNNWindowed(_z:T_nat, _x:T_nat, _y:T_nat, _logM:std.UInt):T_nat {
        final _logM = (_logM : stdgo.GoUInt);
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._expNNWindowed(_z, _x, _y, _logM);
    }
    static public function _expNNMontgomeryEven(_z:T_nat, _x:T_nat, _y:T_nat, _m:T_nat):T_nat {
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._expNNMontgomeryEven(_z, _x, _y, _m);
    }
    static public function _expNN(_z:T_nat, _x:T_nat, _y:T_nat, _m:T_nat, _slow:Bool):T_nat {
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._expNN(_z, _x, _y, _m, _slow);
    }
    static public function _random(_z:T_nat, _rand:stdgo._internal.math.rand.Rand_Rand.Rand, _limit:T_nat, _n:StdTypes.Int):T_nat {
        final _rand = (_rand : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._random(_z, _rand, _limit, _n);
    }
    static public function _xor(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._xor(_z, _x, _y);
    }
    static public function _or(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._or(_z, _x, _y);
    }
    static public function _andNot(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._andNot(_z, _x, _y);
    }
    static public function _trunc(_z:T_nat, _x:T_nat, _n:std.UInt):T_nat {
        final _n = (_n : stdgo.GoUInt);
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._trunc(_z, _x, _n);
    }
    static public function _and(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._and(_z, _x, _y);
    }
    static public function _sticky(_x:T_nat, _i:std.UInt):std.UInt {
        final _i = (_i : stdgo.GoUInt);
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._sticky(_x, _i);
    }
    static public function _bit(_x:T_nat, _i:std.UInt):std.UInt {
        final _i = (_i : stdgo.GoUInt);
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._bit(_x, _i);
    }
    static public function _setBit(_z:T_nat, _x:T_nat, _i:std.UInt, _b:std.UInt):T_nat {
        final _i = (_i : stdgo.GoUInt);
        final _b = (_b : stdgo.GoUInt);
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._setBit(_z, _x, _i, _b);
    }
    static public function _shr(_z:T_nat, _x:T_nat, _s:std.UInt):T_nat {
        final _s = (_s : stdgo.GoUInt);
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._shr(_z, _x, _s);
    }
    static public function _shl(_z:T_nat, _x:T_nat, _s:std.UInt):T_nat {
        final _s = (_s : stdgo.GoUInt);
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._shl(_z, _x, _s);
    }
    static public function _isPow2(_x:T_nat):stdgo.Tuple<std.UInt, Bool> {
        return {
            final obj = stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._isPow2(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _trailingZeroBits(_x:T_nat):std.UInt {
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._trailingZeroBits(_x);
    }
    static public function _bitLen(_x:T_nat):StdTypes.Int {
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._bitLen(_x);
    }
    static public function _mulRange(_z:T_nat, _a:haxe.UInt64, _b:haxe.UInt64):T_nat {
        final _a = (_a : stdgo.GoUInt64);
        final _b = (_b : stdgo.GoUInt64);
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._mulRange(_z, _a, _b);
    }
    static public function _sqr(_z:T_nat, _x:T_nat):T_nat {
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._sqr(_z, _x);
    }
    static public function _mul(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._mul(_z, _x, _y);
    }
    static public function _montgomery(_z:T_nat, _x:T_nat, _y:T_nat, _m:T_nat, _k:Word, _n:StdTypes.Int):T_nat {
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._montgomery(_z, _x, _y, _m, _k, _n);
    }
    static public function _mulAddWW(_z:T_nat, _x:T_nat, _y:Word, _r:Word):T_nat {
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._mulAddWW(_z, _x, _y, _r);
    }
    static public function _cmp(_x:T_nat, _y:T_nat):StdTypes.Int {
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._cmp(_x, _y);
    }
    static public function _sub(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._sub(_z, _x, _y);
    }
    static public function _add(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._add(_z, _x, _y);
    }
    static public function _set(_z:T_nat, _x:T_nat):T_nat {
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._set(_z, _x);
    }
    static public function _setUint64(_z:T_nat, _x:haxe.UInt64):T_nat {
        final _x = (_x : stdgo.GoUInt64);
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._setUint64(_z, _x);
    }
    static public function _setWord(_z:T_nat, _x:Word):T_nat {
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._setWord(_z, _x);
    }
    static public function _make(_z:T_nat, _n:StdTypes.Int):T_nat {
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._make(_z, _n);
    }
    static public function _norm(_z:T_nat):T_nat {
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._norm(_z);
    }
    static public function _clear(_z:T_nat):Void {
        stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._clear(_z);
    }
    static public function string(_z:T_nat):String {
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension.string(_z);
    }
    static public function _modInverse(_z:T_nat, _g:T_nat, _n:T_nat):T_nat {
        return stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._modInverse(_z, _g, _n);
    }
}
