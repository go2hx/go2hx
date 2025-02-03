package stdgo.math.big;
class Float__static_extension {
    static public function _sqrtInverse(_z:Float_, _x:Float_):Void {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension._sqrtInverse(_z, _x);
    }
    static public function sqrt(_z:Float_, _x:Float_):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.sqrt(_z, _x);
    }
    static public function format(_x:Float_, _s:stdgo._internal.fmt.Fmt_State.State, _format:StdTypes.Int):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _format = (_format : stdgo.GoInt32);
        stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.format(_x, _s, _format);
    }
    static public function _fmtP(_x:Float_, _buf:Array<std.UInt>):Array<std.UInt> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension._fmtP(_x, _buf)) i];
    }
    static public function _fmtX(_x:Float_, _buf:Array<std.UInt>, _prec:StdTypes.Int):Array<std.UInt> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _prec = (_prec : stdgo.GoInt);
        return [for (i in stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension._fmtX(_x, _buf, _prec)) i];
    }
    static public function _fmtB(_x:Float_, _buf:Array<std.UInt>):Array<std.UInt> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension._fmtB(_x, _buf)) i];
    }
    static public function append(_x:Float_, _buf:Array<std.UInt>, _fmt:std.UInt, _prec:StdTypes.Int):Array<std.UInt> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _fmt = (_fmt : stdgo.GoUInt8);
        final _prec = (_prec : stdgo.GoInt);
        return [for (i in stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.append(_x, _buf, _fmt, _prec)) i];
    }
    static public function string(_x:Float_):String {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.string(_x);
    }
    static public function text(_x:Float_, _format:std.UInt, _prec:StdTypes.Int):String {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _format = (_format : stdgo.GoUInt8);
        final _prec = (_prec : stdgo.GoInt);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.text(_x, _format, _prec);
    }
    static public function unmarshalText(_z:Float_, _text:Array<std.UInt>):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _text = ([for (i in _text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.unmarshalText(_z, _text);
    }
    static public function marshalText(_x:Float_):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return {
            final obj = stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.marshalText(_x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function gobDecode(_z:Float_, _buf:Array<std.UInt>):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.gobDecode(_z, _buf);
    }
    static public function gobEncode(_x:Float_):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return {
            final obj = stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.gobEncode(_x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function scan(_z:Float_, _s:stdgo._internal.fmt.Fmt_ScanState.ScanState, _ch:StdTypes.Int):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _ch = (_ch : stdgo.GoInt32);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.scan(_z, _s, _ch);
    }
    static public function parse(_z:Float_, _s:String, _base:StdTypes.Int):stdgo.Tuple.Tuple3<Float_, StdTypes.Int, stdgo.Error> {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _s = (_s : stdgo.GoString);
        final _base = (_base : stdgo.GoInt);
        return {
            final obj = stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.parse(_z, _s, _base);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _pow5(_z:Float_, _n:haxe.UInt64):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _n = (_n : stdgo.GoUInt64);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension._pow5(_z, _n);
    }
    static public function _scan(_z:Float_, _r:stdgo._internal.io.Io_ByteScanner.ByteScanner, _base:StdTypes.Int):stdgo.Tuple.Tuple3<Float_, StdTypes.Int, stdgo.Error> {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _base = (_base : stdgo.GoInt);
        return {
            final obj = stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension._scan(_z, _r, _base);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function setString(_z:Float_, _s:String):stdgo.Tuple<Float_, Bool> {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.setString(_z, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _int64(_x:Float_):haxe.Int64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension._int64(_x);
    }
    static public function _uint64(_x:Float_):haxe.UInt64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension._uint64(_x);
    }
    static public function _ord(_x:Float_):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension._ord(_x);
    }
    static public function cmp(_x:Float_, _y:Float_):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.cmp(_x, _y);
    }
    static public function quo(_z:Float_, _x:Float_, _y:Float_):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.quo(_z, _x, _y);
    }
    static public function mul(_z:Float_, _x:Float_, _y:Float_):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.mul(_z, _x, _y);
    }
    static public function sub(_z:Float_, _x:Float_, _y:Float_):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.sub(_z, _x, _y);
    }
    static public function add(_z:Float_, _x:Float_, _y:Float_):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.add(_z, _x, _y);
    }
    static public function _ucmp(_x:Float_, _y:Float_):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension._ucmp(_x, _y);
    }
    static public function _uquo(_z:Float_, _x:Float_, _y:Float_):Void {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension._uquo(_z, _x, _y);
    }
    static public function _umul(_z:Float_, _x:Float_, _y:Float_):Void {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension._umul(_z, _x, _y);
    }
    static public function _usub(_z:Float_, _x:Float_, _y:Float_):Void {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension._usub(_z, _x, _y);
    }
    static public function _uadd(_z:Float_, _x:Float_, _y:Float_):Void {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension._uadd(_z, _x, _y);
    }
    static public function neg(_z:Float_, _x:Float_):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.neg(_z, _x);
    }
    static public function abs(_z:Float_, _x:Float_):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.abs(_z, _x);
    }
    static public function rat(_x:Float_, _z:Rat):stdgo.Tuple<Rat, Accuracy> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        return {
            final obj = stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.rat(_x, _z);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function int_(_x:Float_, _z:Int_):stdgo.Tuple<Int_, Accuracy> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return {
            final obj = stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.int_(_x, _z);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function float64(_x:Float_):stdgo.Tuple<StdTypes.Float, Accuracy> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return {
            final obj = stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.float64(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function float32(_x:Float_):stdgo.Tuple<StdTypes.Float, Accuracy> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return {
            final obj = stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.float32(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function int64(_x:Float_):stdgo.Tuple<haxe.Int64, Accuracy> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return {
            final obj = stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.int64(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function uint64(_x:Float_):stdgo.Tuple<haxe.UInt64, Accuracy> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return {
            final obj = stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.uint64(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function copy(_z:Float_, _x:Float_):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.copy(_z, _x);
    }
    static public function set(_z:Float_, _x:Float_):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.set(_z, _x);
    }
    static public function setInf(_z:Float_, _signbit:Bool):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.setInf(_z, _signbit);
    }
    static public function setRat(_z:Float_, _x:Rat):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.setRat(_z, _x);
    }
    static public function setInt(_z:Float_, _x:Int_):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.setInt(_z, _x);
    }
    static public function setFloat64(_z:Float_, _x:StdTypes.Float):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _x = (_x : stdgo.GoFloat64);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.setFloat64(_z, _x);
    }
    static public function setInt64(_z:Float_, _x:haxe.Int64):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _x = (_x : stdgo.GoInt64);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.setInt64(_z, _x);
    }
    static public function setUint64(_z:Float_, _x:haxe.UInt64):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _x = (_x : stdgo.GoUInt64);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.setUint64(_z, _x);
    }
    static public function _setBits64(_z:Float_, _neg:Bool, _x:haxe.UInt64):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _x = (_x : stdgo.GoUInt64);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension._setBits64(_z, _neg, _x);
    }
    static public function _round(_z:Float_, _sbit:std.UInt):Void {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _sbit = (_sbit : stdgo.GoUInt);
        stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension._round(_z, _sbit);
    }
    static public function _validate0(_x:Float_):String {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension._validate0(_x);
    }
    static public function _validate(_x:Float_):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension._validate(_x);
    }
    static public function isInt(_x:Float_):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.isInt(_x);
    }
    static public function isInf(_x:Float_):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.isInf(_x);
    }
    static public function signbit(_x:Float_):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.signbit(_x);
    }
    static public function setMantExp(_z:Float_, _mant:Float_, _exp:StdTypes.Int):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _mant = (_mant : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _exp = (_exp : stdgo.GoInt);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.setMantExp(_z, _mant, _exp);
    }
    static public function _setExpAndRound(_z:Float_, _exp:haxe.Int64, _sbit:std.UInt):Void {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _exp = (_exp : stdgo.GoInt64);
        final _sbit = (_sbit : stdgo.GoUInt);
        stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension._setExpAndRound(_z, _exp, _sbit);
    }
    static public function mantExp(_x:Float_, _mant:Float_):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _mant = (_mant : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.mantExp(_x, _mant);
    }
    static public function sign(_x:Float_):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.sign(_x);
    }
    static public function acc(_x:Float_):Accuracy {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.acc(_x);
    }
    static public function mode(_x:Float_):RoundingMode {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.mode(_x);
    }
    static public function minPrec(_x:Float_):std.UInt {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.minPrec(_x);
    }
    static public function prec(_x:Float_):std.UInt {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.prec(_x);
    }
    static public function setMode(_z:Float_, _mode:RoundingMode):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.setMode(_z, _mode);
    }
    static public function setPrec(_z:Float_, _prec:std.UInt):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        final _prec = (_prec : stdgo.GoUInt);
        return stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension.setPrec(_z, _prec);
    }
}
