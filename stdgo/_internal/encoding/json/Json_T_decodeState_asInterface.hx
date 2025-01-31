package stdgo._internal.encoding.json;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.Math;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.os.Os;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.math.big.Big;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.testing.Testing;
import stdgo._internal.log.Log;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.net.Net;
import stdgo._internal.net.http.httptest.Httptest;
import stdgo._internal.net.http.Http;
class T_decodeState_asInterface {
    @:keep
    @:tdfield
    public dynamic function _literalInterface():stdgo.AnyInterface return @:_0 __self__.value._literalInterface();
    @:keep
    @:tdfield
    public dynamic function _objectInterface():stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> return @:_0 __self__.value._objectInterface();
    @:keep
    @:tdfield
    public dynamic function _arrayInterface():stdgo.Slice<stdgo.AnyInterface> return @:_0 __self__.value._arrayInterface();
    @:keep
    @:tdfield
    public dynamic function _valueInterface():stdgo.AnyInterface return @:_0 __self__.value._valueInterface();
    @:keep
    @:tdfield
    public dynamic function _literalStore(_item:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo._internal.reflect.Reflect_Value.Value, _fromQuoted:Bool):stdgo.Error return @:_0 __self__.value._literalStore(_item, _v, _fromQuoted);
    @:keep
    @:tdfield
    public dynamic function _convertNumber(_s:stdgo.GoString):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } return @:_0 __self__.value._convertNumber(_s);
    @:keep
    @:tdfield
    public dynamic function _object(_v:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error return @:_0 __self__.value._object(_v);
    @:keep
    @:tdfield
    public dynamic function _array(_v:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error return @:_0 __self__.value._array(_v);
    @:keep
    @:tdfield
    public dynamic function _valueQuoted():stdgo.AnyInterface return @:_0 __self__.value._valueQuoted();
    @:keep
    @:tdfield
    public dynamic function _value(_v:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error return @:_0 __self__.value._value(_v);
    @:keep
    @:tdfield
    public dynamic function _rescanLiteral():Void @:_0 __self__.value._rescanLiteral();
    @:keep
    @:tdfield
    public dynamic function _scanWhile(_op:stdgo.GoInt):Void @:_0 __self__.value._scanWhile(_op);
    @:keep
    @:tdfield
    public dynamic function _scanNext():Void @:_0 __self__.value._scanNext();
    @:keep
    @:tdfield
    public dynamic function _skip():Void @:_0 __self__.value._skip();
    @:keep
    @:tdfield
    public dynamic function _addErrorContext(_err:stdgo.Error):stdgo.Error return @:_0 __self__.value._addErrorContext(_err);
    @:keep
    @:tdfield
    public dynamic function _saveError(_err:stdgo.Error):Void @:_0 __self__.value._saveError(_err);
    @:keep
    @:tdfield
    public dynamic function _init(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState> return @:_0 __self__.value._init(_data);
    @:keep
    @:tdfield
    public dynamic function _readIndex():stdgo.GoInt return @:_0 __self__.value._readIndex();
    @:keep
    @:tdfield
    public dynamic function _unmarshal(_v:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value._unmarshal(_v);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.json.Json_T_decodeStatePointer.T_decodeStatePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
