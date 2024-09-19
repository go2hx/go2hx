package stdgo._internal.math.big;
class Float__asInterface {
    @:keep
    public dynamic function _sqrtInverse(_x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):Void __self__.value._sqrtInverse(_x);
    @:keep
    public dynamic function sqrt(_x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> return __self__.value.sqrt(_x);
    @:keep
    public dynamic function format(_s:stdgo._internal.fmt.Fmt_State.State, _format:stdgo.GoInt32):Void __self__.value.format(_s, _format);
    @:keep
    public dynamic function _fmtP(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.value._fmtP(_buf);
    @:keep
    public dynamic function _fmtX(_buf:stdgo.Slice<stdgo.GoUInt8>, _prec:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return __self__.value._fmtX(_buf, _prec);
    @:keep
    public dynamic function _fmtB(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.value._fmtB(_buf);
    @:keep
    public dynamic function append(_buf:stdgo.Slice<stdgo.GoUInt8>, _fmt:stdgo.GoUInt8, _prec:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return __self__.value.append(_buf, _fmt, _prec);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function text(_format:stdgo.GoUInt8, _prec:stdgo.GoInt):stdgo.GoString return __self__.value.text(_format, _prec);
    @:keep
    public dynamic function unmarshalText(_text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.unmarshalText(_text);
    @:keep
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.marshalText();
    @:keep
    public dynamic function gobDecode(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.gobDecode(_buf);
    @:keep
    public dynamic function gobEncode():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.gobEncode();
    @:keep
    public dynamic function scan(_s:stdgo._internal.fmt.Fmt_ScanState.ScanState, _ch:stdgo.GoInt32):stdgo.Error return __self__.value.scan(_s, _ch);
    @:keep
    public dynamic function parse(_s:stdgo.GoString, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value.parse(_s, _base);
    @:keep
    public dynamic function _pow5(_n:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> return __self__.value._pow5(_n);
    @:keep
    public dynamic function _scan(_r:stdgo._internal.io.Io_ByteScanner.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value._scan(_r, _base);
    @:keep
    public dynamic function setString(_s:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>; var _1 : Bool; } return __self__.value.setString(_s);
    @:keep
    public dynamic function _int64():stdgo.GoInt64 return __self__.value._int64();
    @:keep
    public dynamic function _uint64():stdgo.GoUInt64 return __self__.value._uint64();
    @:keep
    public dynamic function _ord():stdgo.GoInt return __self__.value._ord();
    @:keep
    public dynamic function cmp(_y:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.GoInt return __self__.value.cmp(_y);
    @:keep
    public dynamic function quo(_x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> return __self__.value.quo(_x, _y);
    @:keep
    public dynamic function mul(_x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> return __self__.value.mul(_x, _y);
    @:keep
    public dynamic function sub(_x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> return __self__.value.sub(_x, _y);
    @:keep
    public dynamic function add(_x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> return __self__.value.add(_x, _y);
    @:keep
    public dynamic function _ucmp(_y:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.GoInt return __self__.value._ucmp(_y);
    @:keep
    public dynamic function _uquo(_x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):Void __self__.value._uquo(_x, _y);
    @:keep
    public dynamic function _umul(_x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):Void __self__.value._umul(_x, _y);
    @:keep
    public dynamic function _usub(_x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):Void __self__.value._usub(_x, _y);
    @:keep
    public dynamic function _uadd(_x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):Void __self__.value._uadd(_x, _y);
    @:keep
    public dynamic function neg(_x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> return __self__.value.neg(_x);
    @:keep
    public dynamic function abs(_x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> return __self__.value.abs(_x);
    @:keep
    public dynamic function rat(_z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>; var _1 : stdgo._internal.math.big.Big_Accuracy.Accuracy; } return __self__.value.rat(_z);
    @:keep
    public dynamic function int_(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo._internal.math.big.Big_Accuracy.Accuracy; } return __self__.value.int_(_z);
    @:keep
    public dynamic function float64():{ var _0 : stdgo.GoFloat64; var _1 : stdgo._internal.math.big.Big_Accuracy.Accuracy; } return __self__.value.float64();
    @:keep
    public dynamic function float32():{ var _0 : stdgo.GoFloat32; var _1 : stdgo._internal.math.big.Big_Accuracy.Accuracy; } return __self__.value.float32();
    @:keep
    public dynamic function int64():{ var _0 : stdgo.GoInt64; var _1 : stdgo._internal.math.big.Big_Accuracy.Accuracy; } return __self__.value.int64();
    @:keep
    public dynamic function uint64():{ var _0 : stdgo.GoUInt64; var _1 : stdgo._internal.math.big.Big_Accuracy.Accuracy; } return __self__.value.uint64();
    @:keep
    public dynamic function copy(_x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> return __self__.value.copy(_x);
    @:keep
    public dynamic function set(_x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> return __self__.value.set(_x);
    @:keep
    public dynamic function setInf(_signbit:Bool):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> return __self__.value.setInf(_signbit);
    @:keep
    public dynamic function setRat(_x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> return __self__.value.setRat(_x);
    @:keep
    public dynamic function setInt(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> return __self__.value.setInt(_x);
    @:keep
    public dynamic function setFloat64(_x:stdgo.GoFloat64):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> return __self__.value.setFloat64(_x);
    @:keep
    public dynamic function setInt64(_x:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> return __self__.value.setInt64(_x);
    @:keep
    public dynamic function setUint64(_x:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> return __self__.value.setUint64(_x);
    @:keep
    public dynamic function _setBits64(_neg:Bool, _x:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> return __self__.value._setBits64(_neg, _x);
    @:keep
    public dynamic function _round(_sbit:stdgo.GoUInt):Void __self__.value._round(_sbit);
    @:keep
    public dynamic function _validate0():stdgo.GoString return __self__.value._validate0();
    @:keep
    public dynamic function _validate():Void __self__.value._validate();
    @:keep
    public dynamic function isInt():Bool return __self__.value.isInt();
    @:keep
    public dynamic function isInf():Bool return __self__.value.isInf();
    @:keep
    public dynamic function signbit():Bool return __self__.value.signbit();
    @:keep
    public dynamic function setMantExp(_mant:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _exp:stdgo.GoInt):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> return __self__.value.setMantExp(_mant, _exp);
    @:keep
    public dynamic function _setExpAndRound(_exp:stdgo.GoInt64, _sbit:stdgo.GoUInt):Void __self__.value._setExpAndRound(_exp, _sbit);
    @:keep
    public dynamic function mantExp(_mant:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.GoInt return __self__.value.mantExp(_mant);
    @:keep
    public dynamic function sign():stdgo.GoInt return __self__.value.sign();
    @:keep
    public dynamic function acc():stdgo._internal.math.big.Big_Accuracy.Accuracy return __self__.value.acc();
    @:keep
    public dynamic function mode():stdgo._internal.math.big.Big_RoundingMode.RoundingMode return __self__.value.mode();
    @:keep
    public dynamic function minPrec():stdgo.GoUInt return __self__.value.minPrec();
    @:keep
    public dynamic function prec():stdgo.GoUInt return __self__.value.prec();
    @:keep
    public dynamic function setMode(_mode:stdgo._internal.math.big.Big_RoundingMode.RoundingMode):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> return __self__.value.setMode(_mode);
    @:keep
    public dynamic function setPrec(_prec:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> return __self__.value.setPrec(_prec);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.math.big.Big_Float_.Float_>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
