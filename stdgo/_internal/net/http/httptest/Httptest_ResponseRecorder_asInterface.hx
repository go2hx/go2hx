package stdgo._internal.net.http.httptest;
import stdgo._internal.net.http.Http;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.net.Net;
import stdgo._internal.os.Os;
import stdgo._internal.flag.Flag;
import stdgo._internal.bytes.Bytes;
import _internal.golang_dot_org.x.net.http.httpguts.Httpguts;
import stdgo._internal.crypto.tls.Tls;
import stdgo._internal.net.http.internal.testcert.Testcert;
import stdgo._internal.crypto.x509.X509;
import stdgo._internal.time.Time;
import stdgo._internal.log.Log;
class ResponseRecorder_asInterface {
    @:keep
    @:tdfield
    public dynamic function result():stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> return @:_0 __self__.value.result();
    @:keep
    @:tdfield
    public dynamic function flush():Void @:_0 __self__.value.flush();
    @:keep
    @:tdfield
    public dynamic function writeHeader(_code:stdgo.GoInt):Void @:_0 __self__.value.writeHeader(_code);
    @:keep
    @:tdfield
    public dynamic function writeString(_str:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.writeString(_str);
    @:keep
    @:tdfield
    public dynamic function write(_buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_buf);
    @:keep
    @:tdfield
    public dynamic function _writeHeader(_b:stdgo.Slice<stdgo.GoUInt8>, _str:stdgo.GoString):Void @:_0 __self__.value._writeHeader(_b, _str);
    @:keep
    @:tdfield
    public dynamic function header():stdgo._internal.net.http.Http_Header.Header return @:_0 __self__.value.header();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.httptest.Httptest_ResponseRecorderPointer.ResponseRecorderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
