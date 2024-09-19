package stdgo._internal.fmt;
class T_fmt_asInterface {
    @:keep
    public dynamic function _fmtFloat(_v:stdgo.GoFloat64, _size:stdgo.GoInt, _verb:stdgo.GoInt32, _prec:stdgo.GoInt):Void __self__.value._fmtFloat(_v, _size, _verb, _prec);
    @:keep
    public dynamic function _fmtQc(_c:stdgo.GoUInt64):Void __self__.value._fmtQc(_c);
    @:keep
    public dynamic function _fmtC(_c:stdgo.GoUInt64):Void __self__.value._fmtC(_c);
    @:keep
    public dynamic function _fmtQ(_s:stdgo.GoString):Void __self__.value._fmtQ(_s);
    @:keep
    public dynamic function _fmtBx(_b:stdgo.Slice<stdgo.GoUInt8>, _digits:stdgo.GoString):Void __self__.value._fmtBx(_b, _digits);
    @:keep
    public dynamic function _fmtSx(_s:stdgo.GoString, _digits:stdgo.GoString):Void __self__.value._fmtSx(_s, _digits);
    @:keep
    public dynamic function _fmtSbx(_s:stdgo.GoString, _b:stdgo.Slice<stdgo.GoUInt8>, _digits:stdgo.GoString):Void __self__.value._fmtSbx(_s, _b, _digits);
    @:keep
    public dynamic function _fmtBs(_b:stdgo.Slice<stdgo.GoUInt8>):Void __self__.value._fmtBs(_b);
    @:keep
    public dynamic function _fmtS(_s:stdgo.GoString):Void __self__.value._fmtS(_s);
    @:keep
    public dynamic function _truncate(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.value._truncate(_b);
    @:keep
    public dynamic function _truncateString(_s:stdgo.GoString):stdgo.GoString return __self__.value._truncateString(_s);
    @:keep
    public dynamic function _fmtInteger(_u:stdgo.GoUInt64, _base:stdgo.GoInt, _isSigned:Bool, _verb:stdgo.GoInt32, _digits:stdgo.GoString):Void __self__.value._fmtInteger(_u, _base, _isSigned, _verb, _digits);
    @:keep
    public dynamic function _fmtUnicode(_u:stdgo.GoUInt64):Void __self__.value._fmtUnicode(_u);
    @:keep
    public dynamic function _fmtBoolean(_v:Bool):Void __self__.value._fmtBoolean(_v);
    @:keep
    public dynamic function _padString(_s:stdgo.GoString):Void __self__.value._padString(_s);
    @:keep
    public dynamic function _pad(_b:stdgo.Slice<stdgo.GoUInt8>):Void __self__.value._pad(_b);
    @:keep
    public dynamic function _writePadding(_n:stdgo.GoInt):Void __self__.value._writePadding(_n);
    @:keep
    public dynamic function _init(_buf:stdgo.Ref<stdgo._internal.fmt.Fmt_T_buffer.T_buffer>):Void __self__.value._init(_buf);
    @:keep
    public dynamic function _clearflags():Void __self__.value._clearflags();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.fmt.Fmt_T_fmt.T_fmt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
