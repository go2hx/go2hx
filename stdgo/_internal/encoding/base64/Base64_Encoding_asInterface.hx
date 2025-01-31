package stdgo._internal.encoding.base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.strconv.Strconv;
class Encoding_asInterface {
    @:keep
    @:tdfield
    public dynamic function decodedLen(_n:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value.decodedLen(_n);
    @:keep
    @:tdfield
    public dynamic function decode(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.decode(_dst, _src);
    @:keep
    @:tdfield
    public dynamic function decodeString(_s:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.decodeString(_s);
    @:keep
    @:tdfield
    public dynamic function _decodeQuantum(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _si:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_0 __self__.value._decodeQuantum(_dst, _src, _si);
    @:keep
    @:tdfield
    public dynamic function encodedLen(_n:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value.encodedLen(_n);
    @:keep
    @:tdfield
    public dynamic function encodeToString(_src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString return @:_0 __self__.value.encodeToString(_src);
    @:keep
    @:tdfield
    public dynamic function encode(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value.encode(_dst, _src);
    @:keep
    @:tdfield
    public dynamic function strict():stdgo.Ref<stdgo._internal.encoding.base64.Base64_Encoding.Encoding> return @:_0 __self__.value.strict();
    @:keep
    @:tdfield
    public dynamic function withPadding(_padding:stdgo.GoInt32):stdgo.Ref<stdgo._internal.encoding.base64.Base64_Encoding.Encoding> return @:_0 __self__.value.withPadding(_padding);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.base64.Base64_EncodingPointer.EncodingPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
