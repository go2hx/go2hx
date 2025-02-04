package stdgo._internal.fmt;
class T_fmt_asInterface {
    @:keep
    @:tdfield
    public dynamic function _fmtFloat(_v:stdgo.GoFloat64, _size:stdgo.GoInt, _verb:stdgo.GoInt32, _prec:stdgo.GoInt):Void @:_0 __self__.value._fmtFloat(_v, _size, _verb, _prec);
    @:keep
    @:tdfield
    public dynamic function _fmtQc(_c:stdgo.GoUInt64):Void @:_0 __self__.value._fmtQc(_c);
    @:keep
    @:tdfield
    public dynamic function _fmtC(_c:stdgo.GoUInt64):Void @:_0 __self__.value._fmtC(_c);
    @:keep
    @:tdfield
    public dynamic function _fmtQ(_s:stdgo.GoString):Void @:_0 __self__.value._fmtQ(_s);
    @:keep
    @:tdfield
    public dynamic function _fmtBx(_b:stdgo.Slice<stdgo.GoUInt8>, _digits:stdgo.GoString):Void @:_0 __self__.value._fmtBx(_b, _digits);
    @:keep
    @:tdfield
    public dynamic function _fmtSx(_s:stdgo.GoString, _digits:stdgo.GoString):Void @:_0 __self__.value._fmtSx(_s, _digits);
    @:keep
    @:tdfield
    public dynamic function _fmtSbx(_s:stdgo.GoString, _b:stdgo.Slice<stdgo.GoUInt8>, _digits:stdgo.GoString):Void @:_0 __self__.value._fmtSbx(_s, _b, _digits);
    @:keep
    @:tdfield
    public dynamic function _fmtBs(_b:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._fmtBs(_b);
    @:keep
    @:tdfield
    public dynamic function _fmtS(_s:stdgo.GoString):Void @:_0 __self__.value._fmtS(_s);
    @:keep
    @:tdfield
    public dynamic function _truncate(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._truncate(_b);
    @:keep
    @:tdfield
    public dynamic function _truncateString(_s:stdgo.GoString):stdgo.GoString return @:_0 __self__.value._truncateString(_s);
    @:keep
    @:tdfield
    public dynamic function _fmtInteger(_u:stdgo.GoUInt64, _base:stdgo.GoInt, _isSigned:Bool, _verb:stdgo.GoInt32, _digits:stdgo.GoString):Void @:_0 __self__.value._fmtInteger(_u, _base, _isSigned, _verb, _digits);
    @:keep
    @:tdfield
    public dynamic function _fmtUnicode(_u:stdgo.GoUInt64):Void @:_0 __self__.value._fmtUnicode(_u);
    @:keep
    @:tdfield
    public dynamic function _fmtBoolean(_v:Bool):Void @:_0 __self__.value._fmtBoolean(_v);
    @:keep
    @:tdfield
    public dynamic function _padString(_s:stdgo.GoString):Void @:_0 __self__.value._padString(_s);
    @:keep
    @:tdfield
    public dynamic function _pad(_b:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._pad(_b);
    @:keep
    @:tdfield
    public dynamic function _writePadding(_n:stdgo.GoInt):Void @:_0 __self__.value._writePadding(_n);
    @:keep
    @:tdfield
    public dynamic function _init(_buf:stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer>):Void @:_0 __self__.value._init(_buf);
    @:keep
    @:tdfield
    public dynamic function _clearflags():Void @:_0 __self__.value._clearflags();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.fmt.Fmt_t_fmtpointer.T_fmtPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
