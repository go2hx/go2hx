package stdgo.net.http.httputil;
var errLineTooLong(get, set) : stdgo.Error;
private function get_errLineTooLong():stdgo.Error return stdgo._internal.net.http.httputil.Httputil_errLineTooLong.errLineTooLong;
private function set_errLineTooLong(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.httputil.Httputil_errLineTooLong.errLineTooLong = v;
        return v;
    }
var errPersistEOF(get, set) : stdgo._internal.net.http.Http_ProtocolError.ProtocolError;
private function get_errPersistEOF():stdgo._internal.net.http.Http_ProtocolError.ProtocolError return stdgo._internal.net.http.httputil.Httputil_errPersistEOF.errPersistEOF;
private function set_errPersistEOF(v:stdgo._internal.net.http.Http_ProtocolError.ProtocolError):stdgo._internal.net.http.Http_ProtocolError.ProtocolError {
        stdgo._internal.net.http.httputil.Httputil_errPersistEOF.errPersistEOF = v;
        return v;
    }
var errClosed(get, set) : stdgo._internal.net.http.Http_ProtocolError.ProtocolError;
private function get_errClosed():stdgo._internal.net.http.Http_ProtocolError.ProtocolError return stdgo._internal.net.http.httputil.Httputil_errClosed.errClosed;
private function set_errClosed(v:stdgo._internal.net.http.Http_ProtocolError.ProtocolError):stdgo._internal.net.http.Http_ProtocolError.ProtocolError {
        stdgo._internal.net.http.httputil.Httputil_errClosed.errClosed = v;
        return v;
    }
var errPipeline(get, set) : stdgo._internal.net.http.Http_ProtocolError.ProtocolError;
private function get_errPipeline():stdgo._internal.net.http.Http_ProtocolError.ProtocolError return stdgo._internal.net.http.httputil.Httputil_errPipeline.errPipeline;
private function set_errPipeline(v:stdgo._internal.net.http.Http_ProtocolError.ProtocolError):stdgo._internal.net.http.Http_ProtocolError.ProtocolError {
        stdgo._internal.net.http.httputil.Httputil_errPipeline.errPipeline = v;
        return v;
    }
class BufferPool_static_extension {
    static public function put(t:stdgo._internal.net.http.httputil.Httputil_BufferPool.BufferPool, _0:Array<std.UInt>):Void {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.net.http.httputil.Httputil_BufferPool_static_extension.BufferPool_static_extension.put(t, _0);
    }
    static public function get(t:stdgo._internal.net.http.httputil.Httputil_BufferPool.BufferPool):Array<std.UInt> {
        return [for (i in stdgo._internal.net.http.httputil.Httputil_BufferPool_static_extension.BufferPool_static_extension.get(t)) i];
    }
}
typedef BufferPool = stdgo._internal.net.http.httputil.Httputil_BufferPool.BufferPool;
@:structInit @:using(stdgo.net.http.httputil.Httputil.T_dumpConn_static_extension) abstract T_dumpConn(stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn) from stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn to stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn {
    public var writer(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get_writer():stdgo._internal.io.Io_Writer.Writer return this.writer;
    function set_writer(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this.writer = v;
        return v;
    }
    public var reader(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get_reader():stdgo._internal.io.Io_Reader.Reader return this.reader;
    function set_reader(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this.reader = v;
        return v;
    }
    public function new(?writer:stdgo._internal.io.Io_Writer.Writer, ?reader:stdgo._internal.io.Io_Reader.Reader) this = new stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn(writer, reader);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.httputil.Httputil.T_delegateReader_static_extension) abstract T_delegateReader(stdgo._internal.net.http.httputil.Httputil_T_delegateReader.T_delegateReader) from stdgo._internal.net.http.httputil.Httputil_T_delegateReader.T_delegateReader to stdgo._internal.net.http.httputil.Httputil_T_delegateReader.T_delegateReader {
    public var _c(get, set) : stdgo.Chan<stdgo._internal.io.Io_Reader.Reader>;
    function get__c():stdgo.Chan<stdgo._internal.io.Io_Reader.Reader> return this._c;
    function set__c(v:stdgo.Chan<stdgo._internal.io.Io_Reader.Reader>):stdgo.Chan<stdgo._internal.io.Io_Reader.Reader> {
        this._c = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._r = v;
        return v;
    }
    public function new(?_c:stdgo.Chan<stdgo._internal.io.Io_Reader.Reader>, ?_err:stdgo.Error, ?_r:stdgo._internal.io.Io_Reader.Reader) this = new stdgo._internal.net.http.httputil.Httputil_T_delegateReader.T_delegateReader(_c, _err, _r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.httputil.Httputil.T_failureToReadBody_static_extension) abstract T_failureToReadBody(stdgo._internal.net.http.httputil.Httputil_T_failureToReadBody.T_failureToReadBody) from stdgo._internal.net.http.httputil.Httputil_T_failureToReadBody.T_failureToReadBody to stdgo._internal.net.http.httputil.Httputil_T_failureToReadBody.T_failureToReadBody {
    public function new() this = new stdgo._internal.net.http.httputil.Httputil_T_failureToReadBody.T_failureToReadBody();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.httputil.Httputil.ServerConn_static_extension) abstract ServerConn(stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn) from stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn to stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn {
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _c(get, set) : stdgo._internal.net.Net_Conn.Conn;
    function get__c():stdgo._internal.net.Net_Conn.Conn return this._c;
    function set__c(v:stdgo._internal.net.Net_Conn.Conn):stdgo._internal.net.Net_Conn.Conn {
        this._c = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.bufio.Bufio_Reader.Reader;
    function get__r():stdgo._internal.bufio.Bufio_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.bufio.Bufio_Reader.Reader):stdgo._internal.bufio.Bufio_Reader.Reader {
        this._r = v;
        return v;
    }
    public var _re(get, set) : stdgo.Error;
    function get__re():stdgo.Error return this._re;
    function set__re(v:stdgo.Error):stdgo.Error {
        this._re = v;
        return v;
    }
    public var _we(get, set) : stdgo.Error;
    function get__we():stdgo.Error return this._we;
    function set__we(v:stdgo.Error):stdgo.Error {
        this._we = v;
        return v;
    }
    public var _lastbody(get, set) : stdgo._internal.io.Io_ReadCloser.ReadCloser;
    function get__lastbody():stdgo._internal.io.Io_ReadCloser.ReadCloser return this._lastbody;
    function set__lastbody(v:stdgo._internal.io.Io_ReadCloser.ReadCloser):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        this._lastbody = v;
        return v;
    }
    public var _nread(get, set) : StdTypes.Int;
    function get__nread():StdTypes.Int return this._nread;
    function set__nread(v:StdTypes.Int):StdTypes.Int {
        this._nread = v;
        return v;
    }
    public var _nwritten(get, set) : StdTypes.Int;
    function get__nwritten():StdTypes.Int return this._nwritten;
    function set__nwritten(v:StdTypes.Int):StdTypes.Int {
        this._nwritten = v;
        return v;
    }
    public var _pipereq(get, set) : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.GoUInt>;
    function get__pipereq():stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.GoUInt> return this._pipereq;
    function set__pipereq(v:stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.GoUInt>):stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.GoUInt> {
        this._pipereq = v;
        return v;
    }
    public var _pipe(get, set) : stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline;
    function get__pipe():stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline return this._pipe;
    function set__pipe(v:stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline):stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline {
        this._pipe = v;
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_c:stdgo._internal.net.Net_Conn.Conn, ?_r:stdgo._internal.bufio.Bufio_Reader.Reader, ?_re:stdgo.Error, ?_we:stdgo.Error, ?_lastbody:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?_nread:StdTypes.Int, ?_nwritten:StdTypes.Int, ?_pipereq:stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.GoUInt>, ?_pipe:stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline) this = new stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn(_mu, _c, _r, _re, _we, _lastbody, _nread, _nwritten, _pipereq, _pipe);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.httputil.Httputil.ClientConn_static_extension) abstract ClientConn(stdgo._internal.net.http.httputil.Httputil_ClientConn.ClientConn) from stdgo._internal.net.http.httputil.Httputil_ClientConn.ClientConn to stdgo._internal.net.http.httputil.Httputil_ClientConn.ClientConn {
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _c(get, set) : stdgo._internal.net.Net_Conn.Conn;
    function get__c():stdgo._internal.net.Net_Conn.Conn return this._c;
    function set__c(v:stdgo._internal.net.Net_Conn.Conn):stdgo._internal.net.Net_Conn.Conn {
        this._c = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.bufio.Bufio_Reader.Reader;
    function get__r():stdgo._internal.bufio.Bufio_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.bufio.Bufio_Reader.Reader):stdgo._internal.bufio.Bufio_Reader.Reader {
        this._r = v;
        return v;
    }
    public var _re(get, set) : stdgo.Error;
    function get__re():stdgo.Error return this._re;
    function set__re(v:stdgo.Error):stdgo.Error {
        this._re = v;
        return v;
    }
    public var _we(get, set) : stdgo.Error;
    function get__we():stdgo.Error return this._we;
    function set__we(v:stdgo.Error):stdgo.Error {
        this._we = v;
        return v;
    }
    public var _lastbody(get, set) : stdgo._internal.io.Io_ReadCloser.ReadCloser;
    function get__lastbody():stdgo._internal.io.Io_ReadCloser.ReadCloser return this._lastbody;
    function set__lastbody(v:stdgo._internal.io.Io_ReadCloser.ReadCloser):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        this._lastbody = v;
        return v;
    }
    public var _nread(get, set) : StdTypes.Int;
    function get__nread():StdTypes.Int return this._nread;
    function set__nread(v:StdTypes.Int):StdTypes.Int {
        this._nread = v;
        return v;
    }
    public var _nwritten(get, set) : StdTypes.Int;
    function get__nwritten():StdTypes.Int return this._nwritten;
    function set__nwritten(v:StdTypes.Int):StdTypes.Int {
        this._nwritten = v;
        return v;
    }
    public var _pipereq(get, set) : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.GoUInt>;
    function get__pipereq():stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.GoUInt> return this._pipereq;
    function set__pipereq(v:stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.GoUInt>):stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.GoUInt> {
        this._pipereq = v;
        return v;
    }
    public var _pipe(get, set) : stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline;
    function get__pipe():stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline return this._pipe;
    function set__pipe(v:stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline):stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline {
        this._pipe = v;
        return v;
    }
    public var _writeReq(get, set) : (stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo._internal.io.Io_Writer.Writer) -> stdgo.Error;
    function get__writeReq():(stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo._internal.io.Io_Writer.Writer) -> stdgo.Error return (_0, _1) -> this._writeReq(_0, _1);
    function set__writeReq(v:(stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo._internal.io.Io_Writer.Writer) -> stdgo.Error):(stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo._internal.io.Io_Writer.Writer) -> stdgo.Error {
        this._writeReq = v;
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_c:stdgo._internal.net.Net_Conn.Conn, ?_r:stdgo._internal.bufio.Bufio_Reader.Reader, ?_re:stdgo.Error, ?_we:stdgo.Error, ?_lastbody:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?_nread:StdTypes.Int, ?_nwritten:StdTypes.Int, ?_pipereq:stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.GoUInt>, ?_pipe:stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline, ?_writeReq:(stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo._internal.io.Io_Writer.Writer) -> stdgo.Error) this = new stdgo._internal.net.http.httputil.Httputil_ClientConn.ClientConn(
_mu,
_c,
_r,
_re,
_we,
_lastbody,
_nread,
_nwritten,
_pipereq,
_pipe,
_writeReq);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.httputil.Httputil.ProxyRequest_static_extension) abstract ProxyRequest(stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest) from stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest to stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest {
    public var in_(get, set) : stdgo._internal.net.http.Http_Request.Request;
    function get_in_():stdgo._internal.net.http.Http_Request.Request return this.in_;
    function set_in_(v:stdgo._internal.net.http.Http_Request.Request):stdgo._internal.net.http.Http_Request.Request {
        this.in_ = v;
        return v;
    }
    public var out(get, set) : stdgo._internal.net.http.Http_Request.Request;
    function get_out():stdgo._internal.net.http.Http_Request.Request return this.out;
    function set_out(v:stdgo._internal.net.http.Http_Request.Request):stdgo._internal.net.http.Http_Request.Request {
        this.out = v;
        return v;
    }
    public function new(?in_:stdgo._internal.net.http.Http_Request.Request, ?out:stdgo._internal.net.http.Http_Request.Request) this = new stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest(in_, out);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.httputil.Httputil.ReverseProxy_static_extension) abstract ReverseProxy(stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy) from stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy to stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy {
    public var rewrite(get, set) : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest> -> Void;
    function get_rewrite():stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest> -> Void return _0 -> this.rewrite(_0);
    function set_rewrite(v:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest> -> Void):stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest> -> Void {
        this.rewrite = v;
        return v;
    }
    public var director(get, set) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> -> Void;
    function get_director():stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> -> Void return _0 -> this.director(_0);
    function set_director(v:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> -> Void):stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> -> Void {
        this.director = v;
        return v;
    }
    public var transport(get, set) : stdgo._internal.net.http.Http_RoundTripper.RoundTripper;
    function get_transport():stdgo._internal.net.http.Http_RoundTripper.RoundTripper return this.transport;
    function set_transport(v:stdgo._internal.net.http.Http_RoundTripper.RoundTripper):stdgo._internal.net.http.Http_RoundTripper.RoundTripper {
        this.transport = v;
        return v;
    }
    public var flushInterval(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_flushInterval():stdgo._internal.time.Time_Duration.Duration return this.flushInterval;
    function set_flushInterval(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.flushInterval = v;
        return v;
    }
    public var errorLog(get, set) : stdgo._internal.log.Log_Logger.Logger;
    function get_errorLog():stdgo._internal.log.Log_Logger.Logger return this.errorLog;
    function set_errorLog(v:stdgo._internal.log.Log_Logger.Logger):stdgo._internal.log.Log_Logger.Logger {
        this.errorLog = v;
        return v;
    }
    public var bufferPool(get, set) : BufferPool;
    function get_bufferPool():BufferPool return this.bufferPool;
    function set_bufferPool(v:BufferPool):BufferPool {
        this.bufferPool = v;
        return v;
    }
    public var modifyResponse(get, set) : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> -> stdgo.Error;
    function get_modifyResponse():stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> -> stdgo.Error return _0 -> this.modifyResponse(_0);
    function set_modifyResponse(v:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> -> stdgo.Error):stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> -> stdgo.Error {
        this.modifyResponse = v;
        return v;
    }
    public var errorHandler(get, set) : (stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Error) -> Void;
    function get_errorHandler():(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Error) -> Void return (_0, _1, _2) -> this.errorHandler(_0, _1, _2);
    function set_errorHandler(v:(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Error) -> Void):(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Error) -> Void {
        this.errorHandler = v;
        return v;
    }
    public function new(?rewrite:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest> -> Void, ?director:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> -> Void, ?transport:stdgo._internal.net.http.Http_RoundTripper.RoundTripper, ?flushInterval:stdgo._internal.time.Time_Duration.Duration, ?errorLog:stdgo._internal.log.Log_Logger.Logger, ?bufferPool:BufferPool, ?modifyResponse:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> -> stdgo.Error, ?errorHandler:(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Error) -> Void) this = new stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy(rewrite, director, transport, flushInterval, errorLog, bufferPool, modifyResponse, errorHandler);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.httputil.Httputil.T_maxLatencyWriter_static_extension) abstract T_maxLatencyWriter(stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter.T_maxLatencyWriter) from stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter.T_maxLatencyWriter to stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter.T_maxLatencyWriter {
    public var _dst(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__dst():stdgo._internal.io.Io_Writer.Writer return this._dst;
    function set__dst(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._dst = v;
        return v;
    }
    public var _flush(get, set) : () -> stdgo.Error;
    function get__flush():() -> stdgo.Error return () -> this._flush();
    function set__flush(v:() -> stdgo.Error):() -> stdgo.Error {
        this._flush = v;
        return v;
    }
    public var _latency(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get__latency():stdgo._internal.time.Time_Duration.Duration return this._latency;
    function set__latency(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this._latency = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _t(get, set) : stdgo._internal.time.Time_Timer.Timer;
    function get__t():stdgo._internal.time.Time_Timer.Timer return this._t;
    function set__t(v:stdgo._internal.time.Time_Timer.Timer):stdgo._internal.time.Time_Timer.Timer {
        this._t = v;
        return v;
    }
    public var _flushPending(get, set) : Bool;
    function get__flushPending():Bool return this._flushPending;
    function set__flushPending(v:Bool):Bool {
        this._flushPending = v;
        return v;
    }
    public function new(?_dst:stdgo._internal.io.Io_Writer.Writer, ?_flush:() -> stdgo.Error, ?_latency:stdgo._internal.time.Time_Duration.Duration, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_t:stdgo._internal.time.Time_Timer.Timer, ?_flushPending:Bool) this = new stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter.T_maxLatencyWriter(_dst, _flush, _latency, _mu, _t, _flushPending);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.httputil.Httputil.T_switchProtocolCopier_static_extension) abstract T_switchProtocolCopier(stdgo._internal.net.http.httputil.Httputil_T_switchProtocolCopier.T_switchProtocolCopier) from stdgo._internal.net.http.httputil.Httputil_T_switchProtocolCopier.T_switchProtocolCopier to stdgo._internal.net.http.httputil.Httputil_T_switchProtocolCopier.T_switchProtocolCopier {
    public var _user(get, set) : stdgo._internal.io.Io_ReadWriter.ReadWriter;
    function get__user():stdgo._internal.io.Io_ReadWriter.ReadWriter return this._user;
    function set__user(v:stdgo._internal.io.Io_ReadWriter.ReadWriter):stdgo._internal.io.Io_ReadWriter.ReadWriter {
        this._user = v;
        return v;
    }
    public var _backend(get, set) : stdgo._internal.io.Io_ReadWriter.ReadWriter;
    function get__backend():stdgo._internal.io.Io_ReadWriter.ReadWriter return this._backend;
    function set__backend(v:stdgo._internal.io.Io_ReadWriter.ReadWriter):stdgo._internal.io.Io_ReadWriter.ReadWriter {
        this._backend = v;
        return v;
    }
    public function new(?_user:stdgo._internal.io.Io_ReadWriter.ReadWriter, ?_backend:stdgo._internal.io.Io_ReadWriter.ReadWriter) this = new stdgo._internal.net.http.httputil.Httputil_T_switchProtocolCopier.T_switchProtocolCopier(_user, _backend);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T__struct_0Pointer = stdgo._internal.net.http.httputil.Httputil_T__struct_0Pointer.T__struct_0Pointer;
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.net.http.httputil.Httputil_T__struct_0.T__struct_0;
typedef T_neverEnding = stdgo._internal.net.http.httputil.Httputil_T_neverEnding.T_neverEnding;
typedef T_dumpConnPointer = stdgo._internal.net.http.httputil.Httputil_T_dumpConnPointer.T_dumpConnPointer;
class T_dumpConn_static_extension {
    static public function setWriteDeadline(_c:T_dumpConn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.http.httputil.Httputil_T_dumpConn_static_extension.T_dumpConn_static_extension.setWriteDeadline(_c, _t);
    }
    static public function setReadDeadline(_c:T_dumpConn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.http.httputil.Httputil_T_dumpConn_static_extension.T_dumpConn_static_extension.setReadDeadline(_c, _t);
    }
    static public function setDeadline(_c:T_dumpConn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.http.httputil.Httputil_T_dumpConn_static_extension.T_dumpConn_static_extension.setDeadline(_c, _t);
    }
    static public function remoteAddr(_c:T_dumpConn):stdgo._internal.net.Net_Addr.Addr {
        return stdgo._internal.net.http.httputil.Httputil_T_dumpConn_static_extension.T_dumpConn_static_extension.remoteAddr(_c);
    }
    static public function localAddr(_c:T_dumpConn):stdgo._internal.net.Net_Addr.Addr {
        return stdgo._internal.net.http.httputil.Httputil_T_dumpConn_static_extension.T_dumpConn_static_extension.localAddr(_c);
    }
    static public function close(_c:T_dumpConn):stdgo.Error {
        return stdgo._internal.net.http.httputil.Httputil_T_dumpConn_static_extension.T_dumpConn_static_extension.close(_c);
    }
    public static function write(__self__:stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_T_dumpConn_static_extension.T_dumpConn_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function read(__self__:stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_T_dumpConn_static_extension.T_dumpConn_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_delegateReaderPointer = stdgo._internal.net.http.httputil.Httputil_T_delegateReaderPointer.T_delegateReaderPointer;
class T_delegateReader_static_extension {
    static public function read(_r:T_delegateReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_T_delegateReader_static_extension.T_delegateReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_failureToReadBodyPointer = stdgo._internal.net.http.httputil.Httputil_T_failureToReadBodyPointer.T_failureToReadBodyPointer;
class T_failureToReadBody_static_extension {
    static public function close(_:T_failureToReadBody):stdgo.Error {
        return stdgo._internal.net.http.httputil.Httputil_T_failureToReadBody_static_extension.T_failureToReadBody_static_extension.close(_);
    }
    static public function read(_:T_failureToReadBody, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_T_failureToReadBody_static_extension.T_failureToReadBody_static_extension.read(_, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef ServerConnPointer = stdgo._internal.net.http.httputil.Httputil_ServerConnPointer.ServerConnPointer;
class ServerConn_static_extension {
    static public function write(_sc:ServerConn, _req:stdgo._internal.net.http.Http_Request.Request, _resp:stdgo._internal.net.http.Http_Response.Response):stdgo.Error {
        return stdgo._internal.net.http.httputil.Httputil_ServerConn_static_extension.ServerConn_static_extension.write(_sc, _req, _resp);
    }
    static public function pending(_sc:ServerConn):StdTypes.Int {
        return stdgo._internal.net.http.httputil.Httputil_ServerConn_static_extension.ServerConn_static_extension.pending(_sc);
    }
    static public function read(_sc:ServerConn):stdgo.Tuple<stdgo._internal.net.http.Http_Request.Request, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_ServerConn_static_extension.ServerConn_static_extension.read(_sc);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_sc:ServerConn):stdgo.Error {
        return stdgo._internal.net.http.httputil.Httputil_ServerConn_static_extension.ServerConn_static_extension.close(_sc);
    }
    static public function hijack(_sc:ServerConn):stdgo.Tuple<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.bufio.Bufio_Reader.Reader> {
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_ServerConn_static_extension.ServerConn_static_extension.hijack(_sc);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef ClientConnPointer = stdgo._internal.net.http.httputil.Httputil_ClientConnPointer.ClientConnPointer;
class ClientConn_static_extension {
    static public function do_(_cc:ClientConn, _req:stdgo._internal.net.http.Http_Request.Request):stdgo.Tuple<stdgo._internal.net.http.Http_Response.Response, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_ClientConn_static_extension.ClientConn_static_extension.do_(_cc, _req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_cc:ClientConn, _req:stdgo._internal.net.http.Http_Request.Request):stdgo.Tuple<stdgo._internal.net.http.Http_Response.Response, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_ClientConn_static_extension.ClientConn_static_extension.read(_cc, _req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pending(_cc:ClientConn):StdTypes.Int {
        return stdgo._internal.net.http.httputil.Httputil_ClientConn_static_extension.ClientConn_static_extension.pending(_cc);
    }
    static public function write(_cc:ClientConn, _req:stdgo._internal.net.http.Http_Request.Request):stdgo.Error {
        return stdgo._internal.net.http.httputil.Httputil_ClientConn_static_extension.ClientConn_static_extension.write(_cc, _req);
    }
    static public function close(_cc:ClientConn):stdgo.Error {
        return stdgo._internal.net.http.httputil.Httputil_ClientConn_static_extension.ClientConn_static_extension.close(_cc);
    }
    static public function hijack(_cc:ClientConn):stdgo.Tuple<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.bufio.Bufio_Reader.Reader> {
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_ClientConn_static_extension.ClientConn_static_extension.hijack(_cc);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef ProxyRequestPointer = stdgo._internal.net.http.httputil.Httputil_ProxyRequestPointer.ProxyRequestPointer;
class ProxyRequest_static_extension {
    static public function setXForwarded(_r:ProxyRequest):Void {
        stdgo._internal.net.http.httputil.Httputil_ProxyRequest_static_extension.ProxyRequest_static_extension.setXForwarded(_r);
    }
    static public function setURL(_r:ProxyRequest, _target:stdgo._internal.net.url.Url_URL.URL):Void {
        stdgo._internal.net.http.httputil.Httputil_ProxyRequest_static_extension.ProxyRequest_static_extension.setURL(_r, _target);
    }
}
typedef ReverseProxyPointer = stdgo._internal.net.http.httputil.Httputil_ReverseProxyPointer.ReverseProxyPointer;
class ReverseProxy_static_extension {
    static public function _handleUpgradeResponse(_p:ReverseProxy, _rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo._internal.net.http.Http_Request.Request, _res:stdgo._internal.net.http.Http_Response.Response):Void {
        stdgo._internal.net.http.httputil.Httputil_ReverseProxy_static_extension.ReverseProxy_static_extension._handleUpgradeResponse(_p, _rw, _req, _res);
    }
    static public function _logf(_p:ReverseProxy, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.net.http.httputil.Httputil_ReverseProxy_static_extension.ReverseProxy_static_extension._logf(_p, _format, ...[for (i in _args) i]);
    }
    static public function _copyBuffer(_p:ReverseProxy, _dst:stdgo._internal.io.Io_Writer.Writer, _src:stdgo._internal.io.Io_Reader.Reader, _buf:Array<std.UInt>):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_ReverseProxy_static_extension.ReverseProxy_static_extension._copyBuffer(_p, _dst, _src, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _copyResponse(_p:ReverseProxy, _dst:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _src:stdgo._internal.io.Io_Reader.Reader, _flushInterval:stdgo._internal.time.Time_Duration.Duration):stdgo.Error {
        return stdgo._internal.net.http.httputil.Httputil_ReverseProxy_static_extension.ReverseProxy_static_extension._copyResponse(_p, _dst, _src, _flushInterval);
    }
    static public function _flushInterval(_p:ReverseProxy, _res:stdgo._internal.net.http.Http_Response.Response):stdgo._internal.time.Time_Duration.Duration {
        return stdgo._internal.net.http.httputil.Httputil_ReverseProxy_static_extension.ReverseProxy_static_extension._flushInterval(_p, _res);
    }
    static public function serveHTTP(_p:ReverseProxy, _rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo._internal.net.http.Http_Request.Request):Void {
        stdgo._internal.net.http.httputil.Httputil_ReverseProxy_static_extension.ReverseProxy_static_extension.serveHTTP(_p, _rw, _req);
    }
    static public function _modifyResponse(_p:ReverseProxy, _rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _res:stdgo._internal.net.http.Http_Response.Response, _req:stdgo._internal.net.http.Http_Request.Request):Bool {
        return stdgo._internal.net.http.httputil.Httputil_ReverseProxy_static_extension.ReverseProxy_static_extension._modifyResponse(_p, _rw, _res, _req);
    }
    static public function _getErrorHandler(_p:ReverseProxy):(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Error) -> Void {
        return (_0, _1, _2) -> stdgo._internal.net.http.httputil.Httputil_ReverseProxy_static_extension.ReverseProxy_static_extension._getErrorHandler(_p)(_0, _1, _2);
    }
    static public function _defaultErrorHandler(_p:ReverseProxy, _rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo._internal.net.http.Http_Request.Request, _err:stdgo.Error):Void {
        stdgo._internal.net.http.httputil.Httputil_ReverseProxy_static_extension.ReverseProxy_static_extension._defaultErrorHandler(_p, _rw, _req, _err);
    }
}
typedef T_maxLatencyWriterPointer = stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriterPointer.T_maxLatencyWriterPointer;
class T_maxLatencyWriter_static_extension {
    static public function _stop(_m:T_maxLatencyWriter):Void {
        stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter_static_extension.T_maxLatencyWriter_static_extension._stop(_m);
    }
    static public function _delayedFlush(_m:T_maxLatencyWriter):Void {
        stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter_static_extension.T_maxLatencyWriter_static_extension._delayedFlush(_m);
    }
    static public function write(_m:T_maxLatencyWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter_static_extension.T_maxLatencyWriter_static_extension.write(_m, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_switchProtocolCopierPointer = stdgo._internal.net.http.httputil.Httputil_T_switchProtocolCopierPointer.T_switchProtocolCopierPointer;
class T_switchProtocolCopier_static_extension {
    static public function _copyToBackend(_c:T_switchProtocolCopier, _errc:stdgo.Chan<stdgo.Error>):Void {
        stdgo._internal.net.http.httputil.Httputil_T_switchProtocolCopier_static_extension.T_switchProtocolCopier_static_extension._copyToBackend(_c, _errc);
    }
    static public function _copyFromBackend(_c:T_switchProtocolCopier, _errc:stdgo.Chan<stdgo.Error>):Void {
        stdgo._internal.net.http.httputil.Httputil_T_switchProtocolCopier_static_extension.T_switchProtocolCopier_static_extension._copyFromBackend(_c, _errc);
    }
}
typedef T_neverEndingPointer = stdgo._internal.net.http.httputil.Httputil_T_neverEndingPointer.T_neverEndingPointer;
class T_neverEnding_static_extension {
    static public function read(_b:T_neverEnding, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_T_neverEnding_static_extension.T_neverEnding_static_extension.read(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    Package httputil provides HTTP utility functions, complementing the
    more common ones in the net/http package.
**/
class Httputil {
    /**
        DumpRequestOut is like DumpRequest but for outgoing client requests. It
        includes any headers that the standard http.Transport adds, such as
        User-Agent.
    **/
    static public function dumpRequestOut(_req:stdgo._internal.net.http.Http_Request.Request, _body:Bool):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_dumpRequestOut.dumpRequestOut(_req, _body);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        DumpRequest returns the given request in its HTTP/1.x wire
        representation. It should only be used by servers to debug client
        requests. The returned representation is an approximation only;
        some details of the initial request are lost while parsing it into
        an http.Request. In particular, the order and case of header field
        names are lost. The order of values in multi-valued headers is kept
        intact. HTTP/2 requests are dumped in HTTP/1.x form, not in their
        original binary representations.
        
        If body is true, DumpRequest also returns the body. To do so, it
        consumes req.Body and then replaces it with a new io.ReadCloser
        that yields the same bytes. If DumpRequest returns an error,
        the state of req is undefined.
        
        The documentation for http.Request.Write details which fields
        of req are included in the dump.
    **/
    static public function dumpRequest(_req:stdgo._internal.net.http.Http_Request.Request, _body:Bool):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_dumpRequest.dumpRequest(_req, _body);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        DumpResponse is like DumpRequest but dumps a response.
    **/
    static public function dumpResponse(_resp:stdgo._internal.net.http.Http_Response.Response, _body:Bool):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_dumpResponse.dumpResponse(_resp, _body);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        NewChunkedReader returns a new chunkedReader that translates the data read from r
        out of HTTP "chunked" format before returning it.
        The chunkedReader returns io.EOF when the final 0-length chunk is read.
        
        NewChunkedReader is not needed by normal applications. The http package
        automatically decodes chunking when reading response bodies.
    **/
    static public function newChunkedReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        return stdgo._internal.net.http.httputil.Httputil_newChunkedReader.newChunkedReader(_r);
    }
    /**
        NewChunkedWriter returns a new chunkedWriter that translates writes into HTTP
        "chunked" format before writing them to w. Closing the returned chunkedWriter
        sends the final 0-length chunk that marks the end of the stream but does
        not send the final CRLF that appears after trailers; trailers and the last
        CRLF must be written separately.
        
        NewChunkedWriter is not needed by normal applications. The http
        package adds chunking automatically if handlers don't set a
        Content-Length header. Using NewChunkedWriter inside a handler
        would result in double chunking or chunking with a Content-Length
        length, both of which are wrong.
    **/
    static public function newChunkedWriter(_w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        return stdgo._internal.net.http.httputil.Httputil_newChunkedWriter.newChunkedWriter(_w);
    }
    /**
        NewServerConn is an artifact of Go's early HTTP implementation.
        It is low-level, old, and unused by Go's current HTTP stack.
        We should have deleted it before Go 1.
        
        Deprecated: Use the Server in package net/http instead.
    **/
    static public function newServerConn(_c:stdgo._internal.net.Net_Conn.Conn, _r:stdgo._internal.bufio.Bufio_Reader.Reader):ServerConn {
        return stdgo._internal.net.http.httputil.Httputil_newServerConn.newServerConn(_c, _r);
    }
    /**
        NewClientConn is an artifact of Go's early HTTP implementation.
        It is low-level, old, and unused by Go's current HTTP stack.
        We should have deleted it before Go 1.
        
        Deprecated: Use the Client or Transport in package net/http instead.
    **/
    static public function newClientConn(_c:stdgo._internal.net.Net_Conn.Conn, _r:stdgo._internal.bufio.Bufio_Reader.Reader):ClientConn {
        return stdgo._internal.net.http.httputil.Httputil_newClientConn.newClientConn(_c, _r);
    }
    /**
        NewProxyClientConn is an artifact of Go's early HTTP implementation.
        It is low-level, old, and unused by Go's current HTTP stack.
        We should have deleted it before Go 1.
        
        Deprecated: Use the Client or Transport in package net/http instead.
    **/
    static public function newProxyClientConn(_c:stdgo._internal.net.Net_Conn.Conn, _r:stdgo._internal.bufio.Bufio_Reader.Reader):ClientConn {
        return stdgo._internal.net.http.httputil.Httputil_newProxyClientConn.newProxyClientConn(_c, _r);
    }
    /**
        NewSingleHostReverseProxy returns a new ReverseProxy that routes
        URLs to the scheme, host, and base path provided in target. If the
        target's path is "/base" and the incoming request was for "/dir",
        the target request will be for /base/dir.
        
        NewSingleHostReverseProxy does not rewrite the Host header.
        
        To customize the ReverseProxy behavior beyond what
        NewSingleHostReverseProxy provides, use ReverseProxy directly
        with a Rewrite function. The ProxyRequest SetURL method
        may be used to route the outbound request. (Note that SetURL,
        unlike NewSingleHostReverseProxy, rewrites the Host header
        of the outbound request by default.)
        
        	proxy := &ReverseProxy{
        		Rewrite: func(r *ProxyRequest) {
        			r.SetURL(target)
        			r.Out.Host = r.In.Host // if desired
        		},
        	}
    **/
    static public function newSingleHostReverseProxy(_target:stdgo._internal.net.url.Url_URL.URL):ReverseProxy {
        return stdgo._internal.net.http.httputil.Httputil_newSingleHostReverseProxy.newSingleHostReverseProxy(_target);
    }
}
