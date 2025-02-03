package stdgo.math.big;
class Int__static_extension {
    static public function _scaleDenom(_z:Int_, _x:Int_, _f:T_nat):Void {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension._scaleDenom(_z, _x, _f);
    }
    static public function probablyPrime(_x:Int_, _n:StdTypes.Int):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.probablyPrime(_x, _n);
    }
    static public function unmarshalJSON(_z:Int_, _text:Array<std.UInt>):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _text = ([for (i in _text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.unmarshalJSON(_z, _text);
    }
    static public function marshalJSON(_x:Int_):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return {
            final obj = stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.marshalJSON(_x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function unmarshalText(_z:Int_, _text:Array<std.UInt>):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _text = ([for (i in _text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.unmarshalText(_z, _text);
    }
    static public function marshalText(_x:Int_):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return {
            final obj = stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.marshalText(_x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function gobDecode(_z:Int_, _buf:Array<std.UInt>):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.gobDecode(_z, _buf);
    }
    static public function gobEncode(_x:Int_):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return {
            final obj = stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.gobEncode(_x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function scan(_z:Int_, _s:stdgo._internal.fmt.Fmt_ScanState.ScanState, _ch:StdTypes.Int):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _ch = (_ch : stdgo.GoInt32);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.scan(_z, _s, _ch);
    }
    static public function _scan(_z:Int_, _r:stdgo._internal.io.Io_ByteScanner.ByteScanner, _base:StdTypes.Int):stdgo.Tuple.Tuple3<Int_, StdTypes.Int, stdgo.Error> {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _base = (_base : stdgo.GoInt);
        return {
            final obj = stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension._scan(_z, _r, _base);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function format(_x:Int_, _s:stdgo._internal.fmt.Fmt_State.State, _ch:StdTypes.Int):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _ch = (_ch : stdgo.GoInt32);
        stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.format(_x, _s, _ch);
    }
    static public function string(_x:Int_):String {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.string(_x);
    }
    static public function append(_x:Int_, _buf:Array<std.UInt>, _base:StdTypes.Int):Array<std.UInt> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _base = (_base : stdgo.GoInt);
        return [for (i in stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.append(_x, _buf, _base)) i];
    }
    static public function text(_x:Int_, _base:StdTypes.Int):String {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _base = (_base : stdgo.GoInt);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.text(_x, _base);
    }
    static public function sqrt(_z:Int_, _x:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.sqrt(_z, _x);
    }
    static public function not(_z:Int_, _x:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.not(_z, _x);
    }
    static public function xor(_z:Int_, _x:Int_, _y:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.xor(_z, _x, _y);
    }
    static public function or(_z:Int_, _x:Int_, _y:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.or(_z, _x, _y);
    }
    static public function andNot(_z:Int_, _x:Int_, _y:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.andNot(_z, _x, _y);
    }
    static public function and(_z:Int_, _x:Int_, _y:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.and(_z, _x, _y);
    }
    static public function setBit(_z:Int_, _x:Int_, _i:StdTypes.Int, _b:std.UInt):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _i = (_i : stdgo.GoInt);
        final _b = (_b : stdgo.GoUInt);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.setBit(_z, _x, _i, _b);
    }
    static public function bit(_x:Int_, _i:StdTypes.Int):std.UInt {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.bit(_x, _i);
    }
    static public function rsh(_z:Int_, _x:Int_, _n:std.UInt):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _n = (_n : stdgo.GoUInt);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.rsh(_z, _x, _n);
    }
    static public function lsh(_z:Int_, _x:Int_, _n:std.UInt):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _n = (_n : stdgo.GoUInt);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.lsh(_z, _x, _n);
    }
    static public function modSqrt(_z:Int_, _x:Int_, _p:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _p = (_p : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.modSqrt(_z, _x, _p);
    }
    static public function _modSqrtTonelliShanks(_z:Int_, _x:Int_, _p:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _p = (_p : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension._modSqrtTonelliShanks(_z, _x, _p);
    }
    static public function _modSqrt5Mod8Prime(_z:Int_, _x:Int_, _p:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _p = (_p : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension._modSqrt5Mod8Prime(_z, _x, _p);
    }
    static public function _modSqrt3Mod4Prime(_z:Int_, _x:Int_, _p:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _p = (_p : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension._modSqrt3Mod4Prime(_z, _x, _p);
    }
    static public function modInverse(_z:Int_, _g:Int_, _n:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _g = (_g : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _n = (_n : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.modInverse(_z, _g, _n);
    }
    static public function rand(_z:Int_, _rnd:stdgo._internal.math.rand.Rand_Rand.Rand, _n:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _rnd = (_rnd : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
        final _n = (_n : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.rand(_z, _rnd, _n);
    }
    static public function _lehmerGCD(_z:Int_, _x:Int_, _y:Int_, _a:Int_, _b:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _a = (_a : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _b = (_b : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension._lehmerGCD(_z, _x, _y, _a, _b);
    }
    static public function gCD(_z:Int_, _x:Int_, _y:Int_, _a:Int_, _b:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _a = (_a : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _b = (_b : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.gCD(_z, _x, _y, _a, _b);
    }
    static public function _exp(_z:Int_, _x:Int_, _y:Int_, _m:Int_, _slow:Bool):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _m = (_m : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension._exp(_z, _x, _y, _m, _slow);
    }
    static public function _expSlow(_z:Int_, _x:Int_, _y:Int_, _m:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _m = (_m : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension._expSlow(_z, _x, _y, _m);
    }
    static public function exp(_z:Int_, _x:Int_, _y:Int_, _m:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _m = (_m : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.exp(_z, _x, _y, _m);
    }
    static public function trailingZeroBits(_x:Int_):std.UInt {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.trailingZeroBits(_x);
    }
    static public function bitLen(_x:Int_):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.bitLen(_x);
    }
    static public function fillBytes(_x:Int_, _buf:Array<std.UInt>):Array<std.UInt> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.fillBytes(_x, _buf)) i];
    }
    static public function bytes(_x:Int_):Array<std.UInt> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return [for (i in stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.bytes(_x)) i];
    }
    static public function setBytes(_z:Int_, _buf:Array<std.UInt>):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.setBytes(_z, _buf);
    }
    static public function _setFromScanner(_z:Int_, _r:stdgo._internal.io.Io_ByteScanner.ByteScanner, _base:StdTypes.Int):stdgo.Tuple<Int_, Bool> {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _base = (_base : stdgo.GoInt);
        return {
            final obj = stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension._setFromScanner(_z, _r, _base);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setString(_z:Int_, _s:String, _base:StdTypes.Int):stdgo.Tuple<Int_, Bool> {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _s = (_s : stdgo.GoString);
        final _base = (_base : stdgo.GoInt);
        return {
            final obj = stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.setString(_z, _s, _base);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function float64(_x:Int_):stdgo.Tuple<StdTypes.Float, Accuracy> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return {
            final obj = stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.float64(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function isUint64(_x:Int_):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.isUint64(_x);
    }
    static public function isInt64(_x:Int_):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.isInt64(_x);
    }
    static public function uint64(_x:Int_):haxe.UInt64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.uint64(_x);
    }
    static public function int64(_x:Int_):haxe.Int64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.int64(_x);
    }
    static public function cmpAbs(_x:Int_, _y:Int_):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.cmpAbs(_x, _y);
    }
    static public function cmp(_x:Int_, _y:Int_):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.cmp(_x, _y);
    }
    static public function divMod(_z:Int_, _x:Int_, _y:Int_, _m:Int_):stdgo.Tuple<Int_, Int_> {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _m = (_m : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return {
            final obj = stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.divMod(_z, _x, _y, _m);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function mod(_z:Int_, _x:Int_, _y:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.mod(_z, _x, _y);
    }
    static public function div(_z:Int_, _x:Int_, _y:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.div(_z, _x, _y);
    }
    static public function quoRem(_z:Int_, _x:Int_, _y:Int_, _r:Int_):stdgo.Tuple<Int_, Int_> {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _r = (_r : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return {
            final obj = stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.quoRem(_z, _x, _y, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function rem(_z:Int_, _x:Int_, _y:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.rem(_z, _x, _y);
    }
    static public function quo(_z:Int_, _x:Int_, _y:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.quo(_z, _x, _y);
    }
    static public function binomial(_z:Int_, _n:haxe.Int64, _k:haxe.Int64):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _n = (_n : stdgo.GoInt64);
        final _k = (_k : stdgo.GoInt64);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.binomial(_z, _n, _k);
    }
    static public function mulRange(_z:Int_, _a:haxe.Int64, _b:haxe.Int64):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _a = (_a : stdgo.GoInt64);
        final _b = (_b : stdgo.GoInt64);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.mulRange(_z, _a, _b);
    }
    static public function mul(_z:Int_, _x:Int_, _y:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.mul(_z, _x, _y);
    }
    static public function sub(_z:Int_, _x:Int_, _y:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.sub(_z, _x, _y);
    }
    static public function add(_z:Int_, _x:Int_, _y:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.add(_z, _x, _y);
    }
    static public function neg(_z:Int_, _x:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.neg(_z, _x);
    }
    static public function abs(_z:Int_, _x:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.abs(_z, _x);
    }
    static public function setBits(_z:Int_, _abs:Array<Word>):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _abs = ([for (i in _abs) i] : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.setBits(_z, _abs);
    }
    static public function bits(_x:Int_):Array<Word> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return [for (i in stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.bits(_x)) i];
    }
    static public function set(_z:Int_, _x:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.set(_z, _x);
    }
    static public function setUint64(_z:Int_, _x:haxe.UInt64):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.GoUInt64);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.setUint64(_z, _x);
    }
    static public function setInt64(_z:Int_, _x:haxe.Int64):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x = (_x : stdgo.GoInt64);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.setInt64(_z, _x);
    }
    static public function sign(_x:Int_):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Int__static_extension.Int__static_extension.sign(_x);
    }
}
