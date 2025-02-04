package stdgo._internal.fmt;
class T_ss_asInterface {
    @:keep
    @:tdfield
    public dynamic function _doScanf(_format:stdgo.GoString, _a:stdgo.Slice<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._doScanf(_format, _a);
    @:keep
    @:tdfield
    public dynamic function _advance(_format:stdgo.GoString):stdgo.GoInt return @:_0 __self__.value._advance(_format);
    @:keep
    @:tdfield
    public dynamic function _doScan(_a:stdgo.Slice<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._doScan(_a);
    @:keep
    @:tdfield
    public dynamic function _scanOne(_verb:stdgo.GoInt32, _arg:stdgo.AnyInterface):Void @:_0 __self__.value._scanOne(_verb, _arg);
    @:keep
    @:tdfield
    public dynamic function _scanPercent():Void @:_0 __self__.value._scanPercent();
    @:keep
    @:tdfield
    public dynamic function _hexString():stdgo.GoString return @:_0 __self__.value._hexString();
    @:keep
    @:tdfield
    public dynamic function _hexByte():{ var _0 : stdgo.GoUInt8; var _1 : Bool; } return @:_0 __self__.value._hexByte();
    @:keep
    @:tdfield
    public dynamic function _quotedString():stdgo.GoString return @:_0 __self__.value._quotedString();
    @:keep
    @:tdfield
    public dynamic function _convertString(_verb:stdgo.GoInt32):stdgo.GoString return @:_0 __self__.value._convertString(_verb);
    @:keep
    @:tdfield
    public dynamic function _scanComplex(_verb:stdgo.GoInt32, _n:stdgo.GoInt):stdgo.GoComplex128 return @:_0 __self__.value._scanComplex(_verb, _n);
    @:keep
    @:tdfield
    public dynamic function _convertFloat(_str:stdgo.GoString, _n:stdgo.GoInt):stdgo.GoFloat64 return @:_0 __self__.value._convertFloat(_str, _n);
    @:keep
    @:tdfield
    public dynamic function _complexTokens():{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return @:_0 __self__.value._complexTokens();
    @:keep
    @:tdfield
    public dynamic function _floatToken():stdgo.GoString return @:_0 __self__.value._floatToken();
    @:keep
    @:tdfield
    public dynamic function _scanUint(_verb:stdgo.GoInt32, _bitSize:stdgo.GoInt):stdgo.GoUInt64 return @:_0 __self__.value._scanUint(_verb, _bitSize);
    @:keep
    @:tdfield
    public dynamic function _scanInt(_verb:stdgo.GoInt32, _bitSize:stdgo.GoInt):stdgo.GoInt64 return @:_0 __self__.value._scanInt(_verb, _bitSize);
    @:keep
    @:tdfield
    public dynamic function _scanBasePrefix():{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } return @:_0 __self__.value._scanBasePrefix();
    @:keep
    @:tdfield
    public dynamic function _scanRune(_bitSize:stdgo.GoInt):stdgo.GoInt64 return @:_0 __self__.value._scanRune(_bitSize);
    @:keep
    @:tdfield
    public dynamic function _scanNumber(_digits:stdgo.GoString, _haveDigits:Bool):stdgo.GoString return @:_0 __self__.value._scanNumber(_digits, _haveDigits);
    @:keep
    @:tdfield
    public dynamic function _getBase(_verb:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; } return @:_0 __self__.value._getBase(_verb);
    @:keep
    @:tdfield
    public dynamic function _scanBool(_verb:stdgo.GoInt32):Bool return @:_0 __self__.value._scanBool(_verb);
    @:keep
    @:tdfield
    public dynamic function _okVerb(_verb:stdgo.GoInt32, _okVerbs:stdgo.GoString, _typ:stdgo.GoString):Bool return @:_0 __self__.value._okVerb(_verb, _okVerbs, _typ);
    @:keep
    @:tdfield
    public dynamic function _accept(_ok:stdgo.GoString):Bool return @:_0 __self__.value._accept(_ok);
    @:keep
    @:tdfield
    public dynamic function _notEOF():Void @:_0 __self__.value._notEOF();
    @:keep
    @:tdfield
    public dynamic function _peek(_ok:stdgo.GoString):Bool return @:_0 __self__.value._peek(_ok);
    @:keep
    @:tdfield
    public dynamic function _consume(_ok:stdgo.GoString, _accept:Bool):Bool return @:_0 __self__.value._consume(_ok, _accept);
    @:keep
    @:tdfield
    public dynamic function _token(_skipSpace:Bool, _f:stdgo.GoInt32 -> Bool):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._token(_skipSpace, _f);
    @:keep
    @:tdfield
    public dynamic function skipSpace():Void @:_0 __self__.value.skipSpace();
    @:keep
    @:tdfield
    public dynamic function _free(_old:stdgo._internal.fmt.Fmt_t_ssave.T_ssave):Void @:_0 __self__.value._free(_old);
    @:keep
    @:tdfield
    public dynamic function token(_skipSpace:Bool, _f:stdgo.GoInt32 -> Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.token(_skipSpace, _f);
    @:keep
    @:tdfield
    public dynamic function _errorString(_err:stdgo.GoString):Void @:_0 __self__.value._errorString(_err);
    @:keep
    @:tdfield
    public dynamic function _error(_err:stdgo.Error):Void @:_0 __self__.value._error(_err);
    @:keep
    @:tdfield
    public dynamic function unreadRune():stdgo.Error return @:_0 __self__.value.unreadRune();
    @:keep
    @:tdfield
    public dynamic function _mustReadRune():stdgo.GoInt32 return @:_0 __self__.value._mustReadRune();
    @:keep
    @:tdfield
    public dynamic function _getRune():stdgo.GoInt32 return @:_0 __self__.value._getRune();
    @:keep
    @:tdfield
    public dynamic function width():{ var _0 : stdgo.GoInt; var _1 : Bool; } return @:_0 __self__.value.width();
    @:keep
    @:tdfield
    public dynamic function readRune():{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_0 __self__.value.readRune();
    @:keep
    @:tdfield
    public dynamic function read(_buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_buf);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.fmt.Fmt_t_sspointer.T_ssPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
