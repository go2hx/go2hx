package stdgo._internal.net.http.fcgi;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.os.Os;
import stdgo._internal.net.http.Http;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.http.cgi.Cgi;
import stdgo._internal.context.Context;
@:structInit @:using(stdgo._internal.net.http.fcgi.Fcgi_T_request_static_extension.T_request_static_extension) class T_request {
    public var _pw : stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter> = (null : stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter>);
    public var _reqId : stdgo.GoUInt16 = 0;
    public var _params : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1024, 1024).__setNumber32__();
    public var _rawParams : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _keepConn : Bool = false;
    public function new(?_pw:stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter>, ?_reqId:stdgo.GoUInt16, ?_params:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_rawParams:stdgo.Slice<stdgo.GoUInt8>, ?_keepConn:Bool) {
        if (_pw != null) this._pw = _pw;
        if (_reqId != null) this._reqId = _reqId;
        if (_params != null) this._params = _params;
        if (_buf != null) this._buf = _buf;
        if (_rawParams != null) this._rawParams = _rawParams;
        if (_keepConn != null) this._keepConn = _keepConn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_request(_pw, _reqId, _params, _buf, _rawParams, _keepConn);
    }
}
