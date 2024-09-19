package stdgo._internal.mime;
class WordDecoder_asInterface {
    @:keep
    public dynamic function _convert(_buf:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>, _charset:stdgo.GoString, _content:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value._convert(_buf, _charset, _content);
    @:keep
    public dynamic function decodeHeader(_header:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value.decodeHeader(_header);
    @:keep
    public dynamic function decode(_word:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value.decode(_word);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.mime.Mime_WordDecoder.WordDecoder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
