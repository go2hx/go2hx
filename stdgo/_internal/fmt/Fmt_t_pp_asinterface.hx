package stdgo._internal.fmt;
class T_pp_asInterface {
    @:keep
    @:tdfield
    public dynamic function _doPrintln(_a:stdgo.Slice<stdgo.AnyInterface>):Void @:_0 __self__.value._doPrintln(_a);
    @:keep
    @:tdfield
    public dynamic function _doPrint(_a:stdgo.Slice<stdgo.AnyInterface>):Void @:_0 __self__.value._doPrint(_a);
    @:keep
    @:tdfield
    public dynamic function _doPrintf(_format:stdgo.GoString, _a:stdgo.Slice<stdgo.AnyInterface>):Void @:_0 __self__.value._doPrintf(_format, _a);
    @:keep
    @:tdfield
    public dynamic function _missingArg(_verb:stdgo.GoInt32):Void @:_0 __self__.value._missingArg(_verb);
    @:keep
    @:tdfield
    public dynamic function _badArgNum(_verb:stdgo.GoInt32):Void @:_0 __self__.value._badArgNum(_verb);
    @:keep
    @:tdfield
    public dynamic function _argNumber(_argNum:stdgo.GoInt, _format:stdgo.GoString, _i:stdgo.GoInt, _numArgs:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } return @:_0 __self__.value._argNumber(_argNum, _format, _i, _numArgs);
    @:keep
    @:tdfield
    public dynamic function _printValue(_value:stdgo._internal.reflect.Reflect_value.Value, _verb:stdgo.GoInt32, _depth:stdgo.GoInt):Void @:_0 __self__.value._printValue(_value, _verb, _depth);
    @:keep
    @:tdfield
    public dynamic function _printArg(_arg:stdgo.AnyInterface, _verb:stdgo.GoInt32):Void @:_0 __self__.value._printArg(_arg, _verb);
    @:keep
    @:tdfield
    public dynamic function _handleMethods(_verb:stdgo.GoInt32):Bool return @:_0 __self__.value._handleMethods(_verb);
    @:keep
    @:tdfield
    public dynamic function _catchPanic(_arg:stdgo.AnyInterface, _verb:stdgo.GoInt32, _method:stdgo.GoString):Void @:_0 __self__.value._catchPanic(_arg, _verb, _method);
    @:keep
    @:tdfield
    public dynamic function _fmtPointer(_value:stdgo._internal.reflect.Reflect_value.Value, _verb:stdgo.GoInt32):Void @:_0 __self__.value._fmtPointer(_value, _verb);
    @:keep
    @:tdfield
    public dynamic function _fmtBytes(_v:stdgo.Slice<stdgo.GoUInt8>, _verb:stdgo.GoInt32, _typeString:stdgo.GoString):Void @:_0 __self__.value._fmtBytes(_v, _verb, _typeString);
    @:keep
    @:tdfield
    public dynamic function _fmtString(_v:stdgo.GoString, _verb:stdgo.GoInt32):Void @:_0 __self__.value._fmtString(_v, _verb);
    @:keep
    @:tdfield
    public dynamic function _fmtComplex(_v:stdgo.GoComplex128, _size:stdgo.GoInt, _verb:stdgo.GoInt32):Void @:_0 __self__.value._fmtComplex(_v, _size, _verb);
    @:keep
    @:tdfield
    public dynamic function _fmtFloat(_v:stdgo.GoFloat64, _size:stdgo.GoInt, _verb:stdgo.GoInt32):Void @:_0 __self__.value._fmtFloat(_v, _size, _verb);
    @:keep
    @:tdfield
    public dynamic function _fmtInteger(_v:stdgo.GoUInt64, _isSigned:Bool, _verb:stdgo.GoInt32):Void @:_0 __self__.value._fmtInteger(_v, _isSigned, _verb);
    @:keep
    @:tdfield
    public dynamic function _fmt0x64(_v:stdgo.GoUInt64, _leading0x:Bool):Void @:_0 __self__.value._fmt0x64(_v, _leading0x);
    @:keep
    @:tdfield
    public dynamic function _fmtBool(_v:Bool, _verb:stdgo.GoInt32):Void @:_0 __self__.value._fmtBool(_v, _verb);
    @:keep
    @:tdfield
    public dynamic function _badVerb(_verb:stdgo.GoInt32):Void @:_0 __self__.value._badVerb(_verb);
    @:keep
    @:tdfield
    public dynamic function _unknownType(_v:stdgo._internal.reflect.Reflect_value.Value):Void @:_0 __self__.value._unknownType(_v);
    @:keep
    @:tdfield
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.writeString(_s);
    @:keep
    @:tdfield
    public dynamic function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_b);
    @:keep
    @:tdfield
    public dynamic function flag(_b:stdgo.GoInt):Bool return @:_0 __self__.value.flag(_b);
    @:keep
    @:tdfield
    public dynamic function precision():{ var _0 : stdgo.GoInt; var _1 : Bool; } return @:_0 __self__.value.precision();
    @:keep
    @:tdfield
    public dynamic function width():{ var _0 : stdgo.GoInt; var _1 : Bool; } return @:_0 __self__.value.width();
    @:keep
    @:tdfield
    public dynamic function _free():Void @:_0 __self__.value._free();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.fmt.Fmt_t_pppointer.T_ppPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
