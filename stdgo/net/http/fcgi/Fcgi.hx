package stdgo.net.http.fcgi;
var errRequestAborted(get, set) : stdgo.Error;
private function get_errRequestAborted():stdgo.Error return stdgo._internal.net.http.fcgi.Fcgi_errRequestAborted.errRequestAborted;
private function set_errRequestAborted(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.fcgi.Fcgi_errRequestAborted.errRequestAborted = v;
        return v;
    }
var errConnClosed(get, set) : stdgo.Error;
private function get_errConnClosed():stdgo.Error return stdgo._internal.net.http.fcgi.Fcgi_errConnClosed.errConnClosed;
private function set_errConnClosed(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.fcgi.Fcgi_errConnClosed.errConnClosed = v;
        return v;
    }
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_request_static_extension) abstract T_request(stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request) from stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request to stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request {
    public var _pw(get, set) : stdgo._internal.io.Io_PipeWriter.PipeWriter;
    function get__pw():stdgo._internal.io.Io_PipeWriter.PipeWriter return this._pw;
    function set__pw(v:stdgo._internal.io.Io_PipeWriter.PipeWriter):stdgo._internal.io.Io_PipeWriter.PipeWriter {
        this._pw = v;
        return v;
    }
    public var _reqId(get, set) : std.UInt;
    function get__reqId():std.UInt return this._reqId;
    function set__reqId(v:std.UInt):std.UInt {
        this._reqId = v;
        return v;
    }
    public var _params(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get__params():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this._params;
    function set__params(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this._params = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _rawParams(get, set) : Array<std.UInt>;
    function get__rawParams():Array<std.UInt> return [for (i in this._rawParams) i];
    function set__rawParams(v:Array<std.UInt>):Array<std.UInt> {
        this._rawParams = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _keepConn(get, set) : Bool;
    function get__keepConn():Bool return this._keepConn;
    function set__keepConn(v:Bool):Bool {
        this._keepConn = v;
        return v;
    }
    public function new(?_pw:stdgo._internal.io.Io_PipeWriter.PipeWriter, ?_reqId:std.UInt, ?_params:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_buf:haxe.ds.Vector<std.UInt>, ?_rawParams:Array<std.UInt>, ?_keepConn:Bool) this = new stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request(_pw, _reqId, _params, ([for (i in _buf) i] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in _rawParams) i] : stdgo.Slice<stdgo.GoUInt8>), _keepConn);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_envVarsContextKey(stdgo._internal.net.http.fcgi.Fcgi_T_envVarsContextKey.T_envVarsContextKey) from stdgo._internal.net.http.fcgi.Fcgi_T_envVarsContextKey.T_envVarsContextKey to stdgo._internal.net.http.fcgi.Fcgi_T_envVarsContextKey.T_envVarsContextKey {
    public function new() this = new stdgo._internal.net.http.fcgi.Fcgi_T_envVarsContextKey.T_envVarsContextKey();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_response_static_extension) abstract T_response(stdgo._internal.net.http.fcgi.Fcgi_T_response.T_response) from stdgo._internal.net.http.fcgi.Fcgi_T_response.T_response to stdgo._internal.net.http.fcgi.Fcgi_T_response.T_response {
    public var _req(get, set) : T_request;
    function get__req():T_request return this._req;
    function set__req(v:T_request):T_request {
        this._req = v;
        return v;
    }
    public var _header(get, set) : stdgo._internal.net.http.Http_Header.Header;
    function get__header():stdgo._internal.net.http.Http_Header.Header return this._header;
    function set__header(v:stdgo._internal.net.http.Http_Header.Header):stdgo._internal.net.http.Http_Header.Header {
        this._header = v;
        return v;
    }
    public var _code(get, set) : StdTypes.Int;
    function get__code():StdTypes.Int return this._code;
    function set__code(v:StdTypes.Int):StdTypes.Int {
        this._code = v;
        return v;
    }
    public var _wroteHeader(get, set) : Bool;
    function get__wroteHeader():Bool return this._wroteHeader;
    function set__wroteHeader(v:Bool):Bool {
        this._wroteHeader = v;
        return v;
    }
    public var _wroteCGIHeader(get, set) : Bool;
    function get__wroteCGIHeader():Bool return this._wroteCGIHeader;
    function set__wroteCGIHeader(v:Bool):Bool {
        this._wroteCGIHeader = v;
        return v;
    }
    public var _w(get, set) : T_bufWriter;
    function get__w():T_bufWriter return this._w;
    function set__w(v:T_bufWriter):T_bufWriter {
        this._w = v;
        return v;
    }
    public function new(?_req:T_request, ?_header:stdgo._internal.net.http.Http_Header.Header, ?_code:StdTypes.Int, ?_wroteHeader:Bool, ?_wroteCGIHeader:Bool, ?_w:T_bufWriter) this = new stdgo._internal.net.http.fcgi.Fcgi_T_response.T_response(_req, _header, _code, _wroteHeader, _wroteCGIHeader, _w);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_child_static_extension) abstract T_child(stdgo._internal.net.http.fcgi.Fcgi_T_child.T_child) from stdgo._internal.net.http.fcgi.Fcgi_T_child.T_child to stdgo._internal.net.http.fcgi.Fcgi_T_child.T_child {
    public var _conn(get, set) : T_conn;
    function get__conn():T_conn return this._conn;
    function set__conn(v:T_conn):T_conn {
        this._conn = v;
        return v;
    }
    public var _handler(get, set) : stdgo._internal.net.http.Http_Handler.Handler;
    function get__handler():stdgo._internal.net.http.Http_Handler.Handler return this._handler;
    function set__handler(v:stdgo._internal.net.http.Http_Handler.Handler):stdgo._internal.net.http.Http_Handler.Handler {
        this._handler = v;
        return v;
    }
    public var _requests(get, set) : stdgo.GoMap<stdgo.GoUInt16, stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request>>;
    function get__requests():stdgo.GoMap<stdgo.GoUInt16, stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request>> return this._requests;
    function set__requests(v:stdgo.GoMap<stdgo.GoUInt16, stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request>>):stdgo.GoMap<stdgo.GoUInt16, stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request>> {
        this._requests = v;
        return v;
    }
    public function new(?_conn:T_conn, ?_handler:stdgo._internal.net.http.Http_Handler.Handler, ?_requests:stdgo.GoMap<stdgo.GoUInt16, stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request>>) this = new stdgo._internal.net.http.fcgi.Fcgi_T_child.T_child(_conn, _handler, _requests);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_header_static_extension) abstract T_header(stdgo._internal.net.http.fcgi.Fcgi_T_header.T_header) from stdgo._internal.net.http.fcgi.Fcgi_T_header.T_header to stdgo._internal.net.http.fcgi.Fcgi_T_header.T_header {
    public var version(get, set) : std.UInt;
    function get_version():std.UInt return this.version;
    function set_version(v:std.UInt):std.UInt {
        this.version = v;
        return v;
    }
    public var type(get, set) : T_recType;
    function get_type():T_recType return this.type;
    function set_type(v:T_recType):T_recType {
        this.type = v;
        return v;
    }
    public var id(get, set) : std.UInt;
    function get_id():std.UInt return this.id;
    function set_id(v:std.UInt):std.UInt {
        this.id = v;
        return v;
    }
    public var contentLength(get, set) : std.UInt;
    function get_contentLength():std.UInt return this.contentLength;
    function set_contentLength(v:std.UInt):std.UInt {
        this.contentLength = v;
        return v;
    }
    public var paddingLength(get, set) : std.UInt;
    function get_paddingLength():std.UInt return this.paddingLength;
    function set_paddingLength(v:std.UInt):std.UInt {
        this.paddingLength = v;
        return v;
    }
    public var reserved(get, set) : std.UInt;
    function get_reserved():std.UInt return this.reserved;
    function set_reserved(v:std.UInt):std.UInt {
        this.reserved = v;
        return v;
    }
    public function new(?version:std.UInt, ?type:T_recType, ?id:std.UInt, ?contentLength:std.UInt, ?paddingLength:std.UInt, ?reserved:std.UInt) this = new stdgo._internal.net.http.fcgi.Fcgi_T_header.T_header(version, type, id, contentLength, paddingLength, reserved);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_beginRequest_static_extension) abstract T_beginRequest(stdgo._internal.net.http.fcgi.Fcgi_T_beginRequest.T_beginRequest) from stdgo._internal.net.http.fcgi.Fcgi_T_beginRequest.T_beginRequest to stdgo._internal.net.http.fcgi.Fcgi_T_beginRequest.T_beginRequest {
    public var _role(get, set) : std.UInt;
    function get__role():std.UInt return this._role;
    function set__role(v:std.UInt):std.UInt {
        this._role = v;
        return v;
    }
    public var _flags(get, set) : std.UInt;
    function get__flags():std.UInt return this._flags;
    function set__flags(v:std.UInt):std.UInt {
        this._flags = v;
        return v;
    }
    public var _reserved(get, set) : haxe.ds.Vector<std.UInt>;
    function get__reserved():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._reserved) i]);
    function set__reserved(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._reserved = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_role:std.UInt, ?_flags:std.UInt, ?_reserved:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.net.http.fcgi.Fcgi_T_beginRequest.T_beginRequest(_role, _flags, ([for (i in _reserved) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_conn_static_extension) abstract T_conn(stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn) from stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn to stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn {
    public var _mutex(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mutex():stdgo._internal.sync.Sync_Mutex.Mutex return this._mutex;
    function set__mutex(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mutex = v;
        return v;
    }
    public var _rwc(get, set) : stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser;
    function get__rwc():stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser return this._rwc;
    function set__rwc(v:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser {
        this._rwc = v;
        return v;
    }
    public var _closeErr(get, set) : stdgo.Error;
    function get__closeErr():stdgo.Error return this._closeErr;
    function set__closeErr(v:stdgo.Error):stdgo.Error {
        this._closeErr = v;
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public var _buf(get, set) : stdgo._internal.bytes.Bytes_Buffer.Buffer;
    function get__buf():stdgo._internal.bytes.Bytes_Buffer.Buffer return this._buf;
    function set__buf(v:stdgo._internal.bytes.Bytes_Buffer.Buffer):stdgo._internal.bytes.Bytes_Buffer.Buffer {
        this._buf = v;
        return v;
    }
    public var _h(get, set) : T_header;
    function get__h():T_header return this._h;
    function set__h(v:T_header):T_header {
        this._h = v;
        return v;
    }
    public function new(?_mutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_rwc:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser, ?_closeErr:stdgo.Error, ?_closed:Bool, ?_buf:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?_h:T_header) this = new stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn(_mutex, _rwc, _closeErr, _closed, _buf, _h);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_record_static_extension) abstract T_record(stdgo._internal.net.http.fcgi.Fcgi_T_record.T_record) from stdgo._internal.net.http.fcgi.Fcgi_T_record.T_record to stdgo._internal.net.http.fcgi.Fcgi_T_record.T_record {
    public var _h(get, set) : T_header;
    function get__h():T_header return this._h;
    function set__h(v:T_header):T_header {
        this._h = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_h:T_header, ?_buf:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.net.http.fcgi.Fcgi_T_record.T_record(_h, ([for (i in _buf) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_bufWriter_static_extension) abstract T_bufWriter(stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter) from stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter to stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter {
    public var _closer(get, set) : stdgo._internal.io.Io_Closer.Closer;
    function get__closer():stdgo._internal.io.Io_Closer.Closer return this._closer;
    function set__closer(v:stdgo._internal.io.Io_Closer.Closer):stdgo._internal.io.Io_Closer.Closer {
        this._closer = v;
        return v;
    }
    public var writer(get, set) : stdgo._internal.bufio.Bufio_Writer.Writer;
    function get_writer():stdgo._internal.bufio.Bufio_Writer.Writer return this.writer;
    function set_writer(v:stdgo._internal.bufio.Bufio_Writer.Writer):stdgo._internal.bufio.Bufio_Writer.Writer {
        this.writer = v;
        return v;
    }
    public function new(?_closer:stdgo._internal.io.Io_Closer.Closer, ?writer:stdgo._internal.bufio.Bufio_Writer.Writer) this = new stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter(_closer, writer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_streamWriter_static_extension) abstract T_streamWriter(stdgo._internal.net.http.fcgi.Fcgi_T_streamWriter.T_streamWriter) from stdgo._internal.net.http.fcgi.Fcgi_T_streamWriter.T_streamWriter to stdgo._internal.net.http.fcgi.Fcgi_T_streamWriter.T_streamWriter {
    public var _c(get, set) : T_conn;
    function get__c():T_conn return this._c;
    function set__c(v:T_conn):T_conn {
        this._c = v;
        return v;
    }
    public var _recType(get, set) : T_recType;
    function get__recType():T_recType return this._recType;
    function set__recType(v:T_recType):T_recType {
        this._recType = v;
        return v;
    }
    public var _reqId(get, set) : std.UInt;
    function get__reqId():std.UInt return this._reqId;
    function set__reqId(v:std.UInt):std.UInt {
        this._reqId = v;
        return v;
    }
    public function new(?_c:T_conn, ?_recType:T_recType, ?_reqId:std.UInt) this = new stdgo._internal.net.http.fcgi.Fcgi_T_streamWriter.T_streamWriter(_c, _recType, _reqId);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_recType = stdgo._internal.net.http.fcgi.Fcgi_T_recType.T_recType;
class T_request_static_extension {
    static public function _parseParams(_r:T_request):Void {
        stdgo._internal.net.http.fcgi.Fcgi_T_request_static_extension.T_request_static_extension._parseParams(_r);
    }
}
class T_response_static_extension {
    static public function close(_r:T_response):stdgo.Error {
        return stdgo._internal.net.http.fcgi.Fcgi_T_response_static_extension.T_response_static_extension.close(_r);
    }
    static public function flush(_r:T_response):Void {
        stdgo._internal.net.http.fcgi.Fcgi_T_response_static_extension.T_response_static_extension.flush(_r);
    }
    static public function _writeCGIHeader(_r:T_response, _p:Array<std.UInt>):Void {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.net.http.fcgi.Fcgi_T_response_static_extension.T_response_static_extension._writeCGIHeader(_r, _p);
    }
    static public function writeHeader(_r:T_response, _code:StdTypes.Int):Void {
        stdgo._internal.net.http.fcgi.Fcgi_T_response_static_extension.T_response_static_extension.writeHeader(_r, _code);
    }
    static public function write(_r:T_response, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.fcgi.Fcgi_T_response_static_extension.T_response_static_extension.write(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function header(_r:T_response):stdgo._internal.net.http.Http_Header.Header {
        return stdgo._internal.net.http.fcgi.Fcgi_T_response_static_extension.T_response_static_extension.header(_r);
    }
}
class T_child_static_extension {
    static public function _cleanUp(_c:T_child):Void {
        stdgo._internal.net.http.fcgi.Fcgi_T_child_static_extension.T_child_static_extension._cleanUp(_c);
    }
    static public function _serveRequest(_c:T_child, _req:T_request, _body:stdgo._internal.io.Io_ReadCloser.ReadCloser):Void {
        stdgo._internal.net.http.fcgi.Fcgi_T_child_static_extension.T_child_static_extension._serveRequest(_c, _req, _body);
    }
    static public function _handleRecord(_c:T_child, _rec:T_record):stdgo.Error {
        return stdgo._internal.net.http.fcgi.Fcgi_T_child_static_extension.T_child_static_extension._handleRecord(_c, _rec);
    }
    static public function _serve(_c:T_child):Void {
        stdgo._internal.net.http.fcgi.Fcgi_T_child_static_extension.T_child_static_extension._serve(_c);
    }
}
class T_header_static_extension {
    static public function _init(_h:T_header, _recType:T_recType, _reqId:std.UInt, _contentLength:StdTypes.Int):Void {
        stdgo._internal.net.http.fcgi.Fcgi_T_header_static_extension.T_header_static_extension._init(_h, _recType, _reqId, _contentLength);
    }
}
class T_beginRequest_static_extension {
    static public function _read(_br:T_beginRequest, _content:Array<std.UInt>):stdgo.Error {
        final _content = ([for (i in _content) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.fcgi.Fcgi_T_beginRequest_static_extension.T_beginRequest_static_extension._read(_br, _content);
    }
}
class T_conn_static_extension {
    static public function _writePairs(_c:T_conn, _recType:T_recType, _reqId:std.UInt, _pairs:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.Error {
        return stdgo._internal.net.http.fcgi.Fcgi_T_conn_static_extension.T_conn_static_extension._writePairs(_c, _recType, _reqId, _pairs);
    }
    static public function _writeEndRequest(_c:T_conn, _reqId:std.UInt, _appStatus:StdTypes.Int, _protocolStatus:std.UInt):stdgo.Error {
        return stdgo._internal.net.http.fcgi.Fcgi_T_conn_static_extension.T_conn_static_extension._writeEndRequest(_c, _reqId, _appStatus, _protocolStatus);
    }
    static public function _writeRecord(_c:T_conn, _recType:T_recType, _reqId:std.UInt, _b:Array<std.UInt>):stdgo.Error {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.fcgi.Fcgi_T_conn_static_extension.T_conn_static_extension._writeRecord(_c, _recType, _reqId, _b);
    }
    static public function close(_c:T_conn):stdgo.Error {
        return stdgo._internal.net.http.fcgi.Fcgi_T_conn_static_extension.T_conn_static_extension.close(_c);
    }
}
class T_record_static_extension {
    static public function _content(_r:T_record):Array<std.UInt> {
        return [for (i in stdgo._internal.net.http.fcgi.Fcgi_T_record_static_extension.T_record_static_extension._content(_r)) i];
    }
    static public function _read(_rec:T_record, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Error {
        return stdgo._internal.net.http.fcgi.Fcgi_T_record_static_extension.T_record_static_extension._read(_rec, _r);
    }
}
class T_bufWriter_static_extension {
    static public function close(_w:T_bufWriter):stdgo.Error {
        return stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter_static_extension.T_bufWriter_static_extension.close(_w);
    }
    public static function writeString(__self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter, __0:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter_static_extension.T_bufWriter_static_extension.writeString(__self__, __0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeRune(__self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter, _new:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter_static_extension.T_bufWriter_static_extension.writeRune(__self__, _new);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeByte(__self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter, _c:std.UInt):stdgo.Error {
        return stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter_static_extension.T_bufWriter_static_extension.writeByte(__self__, _c);
    }
    public static function write(__self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter_static_extension.T_bufWriter_static_extension.write(__self__, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function size(__self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter):StdTypes.Int {
        return stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter_static_extension.T_bufWriter_static_extension.size(__self__);
    }
    public static function reset(__self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter, _w:stdgo._internal.io.Io_Writer.Writer) {
        stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter_static_extension.T_bufWriter_static_extension.reset(__self__, _w);
    }
    public static function readFrom(__self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter_static_extension.T_bufWriter_static_extension.readFrom(__self__, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function flush(__self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter):stdgo.Error {
        return stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter_static_extension.T_bufWriter_static_extension.flush(__self__);
    }
    public static function buffered(__self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter):StdTypes.Int {
        return stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter_static_extension.T_bufWriter_static_extension.buffered(__self__);
    }
    public static function availableBuffer(__self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter):Array<std.UInt> {
        return [for (i in stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter_static_extension.T_bufWriter_static_extension.availableBuffer(__self__)) i];
    }
    public static function available(__self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter):StdTypes.Int {
        return stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter_static_extension.T_bufWriter_static_extension.available(__self__);
    }
}
class T_streamWriter_static_extension {
    static public function close(_w:T_streamWriter):stdgo.Error {
        return stdgo._internal.net.http.fcgi.Fcgi_T_streamWriter_static_extension.T_streamWriter_static_extension.close(_w);
    }
    static public function write(_w:T_streamWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.fcgi.Fcgi_T_streamWriter_static_extension.T_streamWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    Package fcgi implements the FastCGI protocol.
    
    See https://fast-cgi.github.io/ for an unofficial mirror of the
    original documentation.
    
    Currently only the responder role is supported.
**/
class Fcgi {
    /**
        Serve accepts incoming FastCGI connections on the listener l, creating a new
        goroutine for each. The goroutine reads requests and then calls handler
        to reply to them.
        If l is nil, Serve accepts connections from os.Stdin.
        If handler is nil, http.DefaultServeMux is used.
    **/
    static public function serve(_l:stdgo._internal.net.Net_Listener.Listener, _handler:stdgo._internal.net.http.Http_Handler.Handler):stdgo.Error {
        return stdgo._internal.net.http.fcgi.Fcgi_serve.serve(_l, _handler);
    }
    /**
        ProcessEnv returns FastCGI environment variables associated with the request r
        for which no effort was made to be included in the request itself - the data
        is hidden in the request's context. As an example, if REMOTE_USER is set for a
        request, it will not be found anywhere in r, but it will be included in
        ProcessEnv's response (via r's context).
    **/
    static public function processEnv(_r:stdgo._internal.net.http.Http_Request.Request):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        return stdgo._internal.net.http.fcgi.Fcgi_processEnv.processEnv(_r);
    }
}