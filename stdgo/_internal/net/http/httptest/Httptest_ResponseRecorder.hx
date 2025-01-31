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
@:structInit @:using(stdgo._internal.net.http.httptest.Httptest_ResponseRecorder_static_extension.ResponseRecorder_static_extension) class ResponseRecorder {
    public var code : stdgo.GoInt = 0;
    public var headerMap : stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
    public var body : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = (null : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
    public var flushed : Bool = false;
    public var _result : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>);
    public var _snapHeader : stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
    public var _wroteHeader : Bool = false;
    public function new(?code:stdgo.GoInt, ?headerMap:stdgo._internal.net.http.Http_Header.Header, ?body:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, ?flushed:Bool, ?_result:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>, ?_snapHeader:stdgo._internal.net.http.Http_Header.Header, ?_wroteHeader:Bool) {
        if (code != null) this.code = code;
        if (headerMap != null) this.headerMap = headerMap;
        if (body != null) this.body = body;
        if (flushed != null) this.flushed = flushed;
        if (_result != null) this._result = _result;
        if (_snapHeader != null) this._snapHeader = _snapHeader;
        if (_wroteHeader != null) this._wroteHeader = _wroteHeader;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ResponseRecorder(code, headerMap, body, flushed, _result, _snapHeader, _wroteHeader);
    }
}
