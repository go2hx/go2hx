package stdgo._internal.mime.multipart;
import stdgo._internal.unsafe.Unsafe;
class Reader_asInterface {
    @:keep
    public dynamic function _isBoundaryDelimiterLine(_line:stdgo.Slice<stdgo.GoUInt8>):Bool return __self__.value._isBoundaryDelimiterLine(_line);
    @:keep
    public dynamic function _isFinalBoundary(_line:stdgo.Slice<stdgo.GoUInt8>):Bool return __self__.value._isFinalBoundary(_line);
    @:keep
    public dynamic function _nextPart(_rawPart:Bool, _maxMIMEHeaderSize:stdgo.GoInt64, _maxMIMEHeaders:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>; var _1 : stdgo.Error; } return __self__.value._nextPart(_rawPart, _maxMIMEHeaderSize, _maxMIMEHeaders);
    @:keep
    public dynamic function nextRawPart():{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>; var _1 : stdgo.Error; } return __self__.value.nextRawPart();
    @:keep
    public dynamic function nextPart():{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>; var _1 : stdgo.Error; } return __self__.value.nextPart();
    @:keep
    public dynamic function _readForm(_maxMemory:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } return __self__.value._readForm(_maxMemory);
    @:keep
    public dynamic function readForm(_maxMemory:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } return __self__.value.readForm(_maxMemory);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.mime.multipart.Multipart_Reader.Reader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
