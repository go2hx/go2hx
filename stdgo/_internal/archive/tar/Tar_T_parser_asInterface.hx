package stdgo._internal.archive.tar;
class T_parser_asInterface {
    @:keep
    public dynamic function _parseOctal(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt64 return __self__.value._parseOctal(_b);
    @:keep
    public dynamic function _parseNumeric(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt64 return __self__.value._parseNumeric(_b);
    @:keep
    public dynamic function _parseString(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString return __self__.value._parseString(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.archive.tar.Tar_T_parser.T_parser>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
