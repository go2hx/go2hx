package stdgo._internal.regexp;
class T_inputs_asInterface {
    @:keep
    public dynamic function _init(_r:stdgo._internal.io.Io_RuneReader.RuneReader, _b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):{ var _0 : stdgo._internal.regexp.Regexp_T_input.T_input; var _1 : stdgo.GoInt; } return __self__.value._init(_r, _b, _s);
    @:keep
    public dynamic function _clear():Void __self__.value._clear();
    @:keep
    public dynamic function _newReader(_r:stdgo._internal.io.Io_RuneReader.RuneReader):stdgo._internal.regexp.Regexp_T_input.T_input return __self__.value._newReader(_r);
    @:keep
    public dynamic function _newString(_s:stdgo.GoString):stdgo._internal.regexp.Regexp_T_input.T_input return __self__.value._newString(_s);
    @:keep
    public dynamic function _newBytes(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.regexp.Regexp_T_input.T_input return __self__.value._newBytes(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.regexp.Regexp_T_inputs.T_inputs>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
