package stdgo.fcgi;
var errRequestAborted(get, set) : stdgo.Error;
private function get_errRequestAborted():stdgo.Error return stdgo._internal.net.http.fcgi.Fcgi_errrequestaborted.errRequestAborted;
private function set_errRequestAborted(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.fcgi.Fcgi_errrequestaborted.errRequestAborted = (v : stdgo.Error);
        return v;
    }
var errConnClosed(get, set) : stdgo.Error;
private function get_errConnClosed():stdgo.Error return stdgo._internal.net.http.fcgi.Fcgi_errconnclosed.errConnClosed;
private function set_errConnClosed(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.fcgi.Fcgi_errconnclosed.errConnClosed = (v : stdgo.Error);
        return v;
    }
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_request_static_extension) @:dox(hide) abstract T_request(stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request) from stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request to stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request {
    public var _pw(get, set) : stdgo._internal.io.Io_pipewriter.PipeWriter;
    function get__pw():stdgo._internal.io.Io_pipewriter.PipeWriter return this._pw;
    function set__pw(v:stdgo._internal.io.Io_pipewriter.PipeWriter):stdgo._internal.io.Io_pipewriter.PipeWriter {
        this._pw = (v : stdgo.Ref<stdgo._internal.io.Io_pipewriter.PipeWriter>);
        return v;
    }
    public var _reqId(get, set) : std.UInt;
    function get__reqId():std.UInt return this._reqId;
    function set__reqId(v:std.UInt):std.UInt {
        this._reqId = (v : stdgo.GoUInt16);
        return v;
    }
    public var _params(get, set) : Map<String, String>;
    function get__params():Map<String, String> return {
        final __obj__:Map<String, String> = [];
        for (key => value in this._params) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__params(v:Map<String, String>):Map<String, String> {
        this._params = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _rawParams(get, set) : Array<std.UInt>;
    function get__rawParams():Array<std.UInt> return [for (i in this._rawParams) i];
    function set__rawParams(v:Array<std.UInt>):Array<std.UInt> {
        this._rawParams = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _keepConn(get, set) : Bool;
    function get__keepConn():Bool return this._keepConn;
    function set__keepConn(v:Bool):Bool {
        this._keepConn = v;
        return v;
    }
    public function new(?_pw:stdgo._internal.io.Io_pipewriter.PipeWriter, ?_reqId:std.UInt, ?_params:Map<String, String>, ?_buf:haxe.ds.Vector<std.UInt>, ?_rawParams:Array<std.UInt>, ?_keepConn:Bool) this = new stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request((_pw : stdgo.Ref<stdgo._internal.io.Io_pipewriter.PipeWriter>), (_reqId : stdgo.GoUInt16), {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
        for (key => value in _params) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
        };
        __obj__;
    }, ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in _rawParams) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _keepConn);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_envVarsContextKey_static_extension) @:dox(hide) abstract T_envVarsContextKey(stdgo._internal.net.http.fcgi.Fcgi_t_envvarscontextkey.T_envVarsContextKey) from stdgo._internal.net.http.fcgi.Fcgi_t_envvarscontextkey.T_envVarsContextKey to stdgo._internal.net.http.fcgi.Fcgi_t_envvarscontextkey.T_envVarsContextKey {
    public function new() this = new stdgo._internal.net.http.fcgi.Fcgi_t_envvarscontextkey.T_envVarsContextKey();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_response_static_extension) @:dox(hide) abstract T_response(stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response) from stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response to stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response {
    public var _req(get, set) : T_request;
    function get__req():T_request return this._req;
    function set__req(v:T_request):T_request {
        this._req = (v : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request>);
        return v;
    }
    public var _header(get, set) : stdgo._internal.net.http.Http_header.Header;
    function get__header():stdgo._internal.net.http.Http_header.Header return this._header;
    function set__header(v:stdgo._internal.net.http.Http_header.Header):stdgo._internal.net.http.Http_header.Header {
        this._header = v;
        return v;
    }
    public var _code(get, set) : StdTypes.Int;
    function get__code():StdTypes.Int return this._code;
    function set__code(v:StdTypes.Int):StdTypes.Int {
        this._code = (v : stdgo.GoInt);
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
        this._w = (v : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter>);
        return v;
    }
    public function new(?_req:T_request, ?_header:stdgo._internal.net.http.Http_header.Header, ?_code:StdTypes.Int, ?_wroteHeader:Bool, ?_wroteCGIHeader:Bool, ?_w:T_bufWriter) this = new stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response((_req : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request>), _header, (_code : stdgo.GoInt), _wroteHeader, _wroteCGIHeader, (_w : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_child_static_extension) @:dox(hide) abstract T_child(stdgo._internal.net.http.fcgi.Fcgi_t_child.T_child) from stdgo._internal.net.http.fcgi.Fcgi_t_child.T_child to stdgo._internal.net.http.fcgi.Fcgi_t_child.T_child {
    public var _conn(get, set) : T_conn;
    function get__conn():T_conn return this._conn;
    function set__conn(v:T_conn):T_conn {
        this._conn = (v : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_conn.T_conn>);
        return v;
    }
    public var _handler(get, set) : stdgo._internal.net.http.Http_handler.Handler;
    function get__handler():stdgo._internal.net.http.Http_handler.Handler return this._handler;
    function set__handler(v:stdgo._internal.net.http.Http_handler.Handler):stdgo._internal.net.http.Http_handler.Handler {
        this._handler = v;
        return v;
    }
    public var _requests(get, set) : Map<std.UInt, T_request>;
    function get__requests():Map<std.UInt, T_request> return {
        final __obj__:Map<std.UInt, T_request> = [];
        for (key => value in this._requests) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__requests(v:Map<std.UInt, T_request>):Map<std.UInt, T_request> {
        this._requests = {
            final __obj__ = new stdgo.GoMap<stdgo.GoUInt16, stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoUInt16)] = (value : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request>);
            };
            __obj__;
        };
        return v;
    }
    public function new(?_conn:T_conn, ?_handler:stdgo._internal.net.http.Http_handler.Handler, ?_requests:Map<std.UInt, T_request>) this = new stdgo._internal.net.http.fcgi.Fcgi_t_child.T_child((_conn : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_conn.T_conn>), _handler, {
        final __obj__ = new stdgo.GoMap<stdgo.GoUInt16, stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request>>();
        for (key => value in _requests) {
            __obj__[(key : stdgo.GoUInt16)] = (value : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request>);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_header_static_extension) @:dox(hide) abstract T_header(stdgo._internal.net.http.fcgi.Fcgi_t_header.T_header) from stdgo._internal.net.http.fcgi.Fcgi_t_header.T_header to stdgo._internal.net.http.fcgi.Fcgi_t_header.T_header {
    public var version(get, set) : std.UInt;
    function get_version():std.UInt return this.version;
    function set_version(v:std.UInt):std.UInt {
        this.version = (v : stdgo.GoUInt8);
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
        this.id = (v : stdgo.GoUInt16);
        return v;
    }
    public var contentLength(get, set) : std.UInt;
    function get_contentLength():std.UInt return this.contentLength;
    function set_contentLength(v:std.UInt):std.UInt {
        this.contentLength = (v : stdgo.GoUInt16);
        return v;
    }
    public var paddingLength(get, set) : std.UInt;
    function get_paddingLength():std.UInt return this.paddingLength;
    function set_paddingLength(v:std.UInt):std.UInt {
        this.paddingLength = (v : stdgo.GoUInt8);
        return v;
    }
    public var reserved(get, set) : std.UInt;
    function get_reserved():std.UInt return this.reserved;
    function set_reserved(v:std.UInt):std.UInt {
        this.reserved = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?version:std.UInt, ?type:T_recType, ?id:std.UInt, ?contentLength:std.UInt, ?paddingLength:std.UInt, ?reserved:std.UInt) this = new stdgo._internal.net.http.fcgi.Fcgi_t_header.T_header((version : stdgo.GoUInt8), type, (id : stdgo.GoUInt16), (contentLength : stdgo.GoUInt16), (paddingLength : stdgo.GoUInt8), (reserved : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_beginRequest_static_extension) @:dox(hide) abstract T_beginRequest(stdgo._internal.net.http.fcgi.Fcgi_t_beginrequest.T_beginRequest) from stdgo._internal.net.http.fcgi.Fcgi_t_beginrequest.T_beginRequest to stdgo._internal.net.http.fcgi.Fcgi_t_beginrequest.T_beginRequest {
    public var _role(get, set) : std.UInt;
    function get__role():std.UInt return this._role;
    function set__role(v:std.UInt):std.UInt {
        this._role = (v : stdgo.GoUInt16);
        return v;
    }
    public var _flags(get, set) : std.UInt;
    function get__flags():std.UInt return this._flags;
    function set__flags(v:std.UInt):std.UInt {
        this._flags = (v : stdgo.GoUInt8);
        return v;
    }
    public var _reserved(get, set) : haxe.ds.Vector<std.UInt>;
    function get__reserved():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._reserved) i]);
    function set__reserved(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._reserved = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_role:std.UInt, ?_flags:std.UInt, ?_reserved:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.net.http.fcgi.Fcgi_t_beginrequest.T_beginRequest((_role : stdgo.GoUInt16), (_flags : stdgo.GoUInt8), ([for (i in _reserved) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_conn_static_extension) @:dox(hide) abstract T_conn(stdgo._internal.net.http.fcgi.Fcgi_t_conn.T_conn) from stdgo._internal.net.http.fcgi.Fcgi_t_conn.T_conn to stdgo._internal.net.http.fcgi.Fcgi_t_conn.T_conn {
    public var _mutex(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__mutex():stdgo._internal.sync.Sync_mutex.Mutex return this._mutex;
    function set__mutex(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._mutex = v;
        return v;
    }
    public var _rwc(get, set) : stdgo._internal.io.Io_readwritecloser.ReadWriteCloser;
    function get__rwc():stdgo._internal.io.Io_readwritecloser.ReadWriteCloser return this._rwc;
    function set__rwc(v:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):stdgo._internal.io.Io_readwritecloser.ReadWriteCloser {
        this._rwc = v;
        return v;
    }
    public var _closeErr(get, set) : stdgo.Error;
    function get__closeErr():stdgo.Error return this._closeErr;
    function set__closeErr(v:stdgo.Error):stdgo.Error {
        this._closeErr = (v : stdgo.Error);
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public var _buf(get, set) : stdgo._internal.bytes.Bytes_buffer.Buffer;
    function get__buf():stdgo._internal.bytes.Bytes_buffer.Buffer return this._buf;
    function set__buf(v:stdgo._internal.bytes.Bytes_buffer.Buffer):stdgo._internal.bytes.Bytes_buffer.Buffer {
        this._buf = v;
        return v;
    }
    public var _h(get, set) : T_header;
    function get__h():T_header return this._h;
    function set__h(v:T_header):T_header {
        this._h = v;
        return v;
    }
    public function new(?_mutex:stdgo._internal.sync.Sync_mutex.Mutex, ?_rwc:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser, ?_closeErr:stdgo.Error, ?_closed:Bool, ?_buf:stdgo._internal.bytes.Bytes_buffer.Buffer, ?_h:T_header) this = new stdgo._internal.net.http.fcgi.Fcgi_t_conn.T_conn(_mutex, _rwc, (_closeErr : stdgo.Error), _closed, _buf, _h);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_record_static_extension) @:dox(hide) abstract T_record(stdgo._internal.net.http.fcgi.Fcgi_t_record.T_record) from stdgo._internal.net.http.fcgi.Fcgi_t_record.T_record to stdgo._internal.net.http.fcgi.Fcgi_t_record.T_record {
    public var _h(get, set) : T_header;
    function get__h():T_header return this._h;
    function set__h(v:T_header):T_header {
        this._h = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_h:T_header, ?_buf:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.net.http.fcgi.Fcgi_t_record.T_record(_h, ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_bufWriter_static_extension) @:dox(hide) abstract T_bufWriter(stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter) from stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter to stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter {
    public var _closer(get, set) : stdgo._internal.io.Io_closer.Closer;
    function get__closer():stdgo._internal.io.Io_closer.Closer return this._closer;
    function set__closer(v:stdgo._internal.io.Io_closer.Closer):stdgo._internal.io.Io_closer.Closer {
        this._closer = v;
        return v;
    }
    public var writer(get, set) : stdgo._internal.bufio.Bufio_writer.Writer;
    function get_writer():stdgo._internal.bufio.Bufio_writer.Writer return this.writer;
    function set_writer(v:stdgo._internal.bufio.Bufio_writer.Writer):stdgo._internal.bufio.Bufio_writer.Writer {
        this.writer = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
        return v;
    }
    public function new(?_closer:stdgo._internal.io.Io_closer.Closer, ?writer:stdgo._internal.bufio.Bufio_writer.Writer) this = new stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter(_closer, (writer : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_streamWriter_static_extension) @:dox(hide) abstract T_streamWriter(stdgo._internal.net.http.fcgi.Fcgi_t_streamwriter.T_streamWriter) from stdgo._internal.net.http.fcgi.Fcgi_t_streamwriter.T_streamWriter to stdgo._internal.net.http.fcgi.Fcgi_t_streamwriter.T_streamWriter {
    public var _c(get, set) : T_conn;
    function get__c():T_conn return this._c;
    function set__c(v:T_conn):T_conn {
        this._c = (v : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_conn.T_conn>);
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
        this._reqId = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?_c:T_conn, ?_recType:T_recType, ?_reqId:std.UInt) this = new stdgo._internal.net.http.fcgi.Fcgi_t_streamwriter.T_streamWriter((_c : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_conn.T_conn>), _recType, (_reqId : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_recType = stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType;
@:dox(hide) typedef T_requestPointer = stdgo._internal.net.http.fcgi.Fcgi_t_requestpointer.T_requestPointer;
@:dox(hide) class T_request_static_extension {
    static public function _parseParams(_r:T_request):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request>);
        stdgo._internal.net.http.fcgi.Fcgi_t_request_static_extension.T_request_static_extension._parseParams(_r);
    }
}
@:dox(hide) typedef T_envVarsContextKeyPointer = stdgo._internal.net.http.fcgi.Fcgi_t_envvarscontextkeypointer.T_envVarsContextKeyPointer;
@:dox(hide) class T_envVarsContextKey_static_extension {

}
@:dox(hide) typedef T_responsePointer = stdgo._internal.net.http.fcgi.Fcgi_t_responsepointer.T_responsePointer;
@:dox(hide) class T_response_static_extension {
    static public function close(_r:T_response):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response>);
        return stdgo._internal.net.http.fcgi.Fcgi_t_response_static_extension.T_response_static_extension.close(_r);
    }
    static public function flush(_r:T_response):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response>);
        stdgo._internal.net.http.fcgi.Fcgi_t_response_static_extension.T_response_static_extension.flush(_r);
    }
    static public function _writeCGIHeader(_r:T_response, _p:Array<std.UInt>):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.net.http.fcgi.Fcgi_t_response_static_extension.T_response_static_extension._writeCGIHeader(_r, _p);
    }
    static public function writeHeader(_r:T_response, _code:StdTypes.Int):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response>);
        final _code = (_code : stdgo.GoInt);
        stdgo._internal.net.http.fcgi.Fcgi_t_response_static_extension.T_response_static_extension.writeHeader(_r, _code);
    }
    static public function write(_r:T_response, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.fcgi.Fcgi_t_response_static_extension.T_response_static_extension.write(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function header(_r:T_response):stdgo._internal.net.http.Http_header.Header {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response>);
        return stdgo._internal.net.http.fcgi.Fcgi_t_response_static_extension.T_response_static_extension.header(_r);
    }
}
@:dox(hide) typedef T_childPointer = stdgo._internal.net.http.fcgi.Fcgi_t_childpointer.T_childPointer;
@:dox(hide) class T_child_static_extension {
    static public function _cleanUp(_c:T_child):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_child.T_child>);
        stdgo._internal.net.http.fcgi.Fcgi_t_child_static_extension.T_child_static_extension._cleanUp(_c);
    }
    static public function _serveRequest(_c:T_child, _req:T_request, _body:stdgo._internal.io.Io_readcloser.ReadCloser):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_child.T_child>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request>);
        stdgo._internal.net.http.fcgi.Fcgi_t_child_static_extension.T_child_static_extension._serveRequest(_c, _req, _body);
    }
    static public function _handleRecord(_c:T_child, _rec:T_record):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_child.T_child>);
        final _rec = (_rec : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_record.T_record>);
        return stdgo._internal.net.http.fcgi.Fcgi_t_child_static_extension.T_child_static_extension._handleRecord(_c, _rec);
    }
    static public function _serve(_c:T_child):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_child.T_child>);
        stdgo._internal.net.http.fcgi.Fcgi_t_child_static_extension.T_child_static_extension._serve(_c);
    }
}
@:dox(hide) typedef T_headerPointer = stdgo._internal.net.http.fcgi.Fcgi_t_headerpointer.T_headerPointer;
@:dox(hide) class T_header_static_extension {
    static public function _init(_h:T_header, _recType:T_recType, _reqId:std.UInt, _contentLength:StdTypes.Int):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_header.T_header>);
        final _reqId = (_reqId : stdgo.GoUInt16);
        final _contentLength = (_contentLength : stdgo.GoInt);
        stdgo._internal.net.http.fcgi.Fcgi_t_header_static_extension.T_header_static_extension._init(_h, _recType, _reqId, _contentLength);
    }
}
@:dox(hide) typedef T_beginRequestPointer = stdgo._internal.net.http.fcgi.Fcgi_t_beginrequestpointer.T_beginRequestPointer;
@:dox(hide) class T_beginRequest_static_extension {
    static public function _read(_br:T_beginRequest, _content:Array<std.UInt>):stdgo.Error {
        final _br = (_br : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_beginrequest.T_beginRequest>);
        final _content = ([for (i in _content) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.fcgi.Fcgi_t_beginrequest_static_extension.T_beginRequest_static_extension._read(_br, _content);
    }
}
@:dox(hide) typedef T_connPointer = stdgo._internal.net.http.fcgi.Fcgi_t_connpointer.T_connPointer;
@:dox(hide) class T_conn_static_extension {
    static public function _writePairs(_c:T_conn, _recType:T_recType, _reqId:std.UInt, _pairs:Map<String, String>):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_conn.T_conn>);
        final _reqId = (_reqId : stdgo.GoUInt16);
        final _pairs = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
            for (key => value in _pairs) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        return stdgo._internal.net.http.fcgi.Fcgi_t_conn_static_extension.T_conn_static_extension._writePairs(_c, _recType, _reqId, _pairs);
    }
    static public function _writeEndRequest(_c:T_conn, _reqId:std.UInt, _appStatus:StdTypes.Int, _protocolStatus:std.UInt):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_conn.T_conn>);
        final _reqId = (_reqId : stdgo.GoUInt16);
        final _appStatus = (_appStatus : stdgo.GoInt);
        final _protocolStatus = (_protocolStatus : stdgo.GoUInt8);
        return stdgo._internal.net.http.fcgi.Fcgi_t_conn_static_extension.T_conn_static_extension._writeEndRequest(_c, _reqId, _appStatus, _protocolStatus);
    }
    static public function _writeRecord(_c:T_conn, _recType:T_recType, _reqId:std.UInt, _b:Array<std.UInt>):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_conn.T_conn>);
        final _reqId = (_reqId : stdgo.GoUInt16);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.fcgi.Fcgi_t_conn_static_extension.T_conn_static_extension._writeRecord(_c, _recType, _reqId, _b);
    }
    static public function close(_c:T_conn):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_conn.T_conn>);
        return stdgo._internal.net.http.fcgi.Fcgi_t_conn_static_extension.T_conn_static_extension.close(_c);
    }
}
@:dox(hide) typedef T_recordPointer = stdgo._internal.net.http.fcgi.Fcgi_t_recordpointer.T_recordPointer;
@:dox(hide) class T_record_static_extension {
    static public function _content(_r:T_record):Array<std.UInt> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_record.T_record>);
        return [for (i in stdgo._internal.net.http.fcgi.Fcgi_t_record_static_extension.T_record_static_extension._content(_r)) i];
    }
    static public function _read(_rec:T_record, _r:stdgo._internal.io.Io_reader.Reader):stdgo.Error {
        final _rec = (_rec : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_record.T_record>);
        return stdgo._internal.net.http.fcgi.Fcgi_t_record_static_extension.T_record_static_extension._read(_rec, _r);
    }
}
@:dox(hide) typedef T_bufWriterPointer = stdgo._internal.net.http.fcgi.Fcgi_t_bufwriterpointer.T_bufWriterPointer;
@:dox(hide) class T_bufWriter_static_extension {
    static public function close(_w:T_bufWriter):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter>);
        return stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter_static_extension.T_bufWriter_static_extension.close(_w);
    }
    public static function writeString(__self__:stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter, _0:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter_static_extension.T_bufWriter_static_extension.writeString(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeRune(__self__:stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter, _0:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt32);
        return {
            final obj = stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter_static_extension.T_bufWriter_static_extension.writeRune(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeByte(__self__:stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter, _0:std.UInt):stdgo.Error {
        final _0 = (_0 : stdgo.GoUInt8);
        return stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter_static_extension.T_bufWriter_static_extension.writeByte(__self__, _0);
    }
    public static function write(__self__:stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter_static_extension.T_bufWriter_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function size(__self__:stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter):StdTypes.Int {
        return stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter_static_extension.T_bufWriter_static_extension.size(__self__);
    }
    public static function reset(__self__:stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter, _0:stdgo._internal.io.Io_writer.Writer):Void {
        stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter_static_extension.T_bufWriter_static_extension.reset(__self__, _0);
    }
    public static function readFrom(__self__:stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter, _0:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter_static_extension.T_bufWriter_static_extension.readFrom(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function flush(__self__:stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter):stdgo.Error {
        return stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter_static_extension.T_bufWriter_static_extension.flush(__self__);
    }
    public static function buffered(__self__:stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter):StdTypes.Int {
        return stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter_static_extension.T_bufWriter_static_extension.buffered(__self__);
    }
    public static function availableBuffer(__self__:stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter):Array<std.UInt> {
        return [for (i in stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter_static_extension.T_bufWriter_static_extension.availableBuffer(__self__)) i];
    }
    public static function available(__self__:stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter):StdTypes.Int {
        return stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter_static_extension.T_bufWriter_static_extension.available(__self__);
    }
}
@:dox(hide) typedef T_streamWriterPointer = stdgo._internal.net.http.fcgi.Fcgi_t_streamwriterpointer.T_streamWriterPointer;
@:dox(hide) class T_streamWriter_static_extension {
    static public function close(_w:T_streamWriter):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_streamwriter.T_streamWriter>);
        return stdgo._internal.net.http.fcgi.Fcgi_t_streamwriter_static_extension.T_streamWriter_static_extension.close(_w);
    }
    static public function write(_w:T_streamWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_streamwriter.T_streamWriter>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.fcgi.Fcgi_t_streamwriter_static_extension.T_streamWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_recTypePointer = stdgo._internal.net.http.fcgi.Fcgi_t_rectypepointer.T_recTypePointer;
@:dox(hide) class T_recType_static_extension {

}
/**
    * Package fcgi implements the FastCGI protocol.
    * 
    * See https://fast-cgi.github.io/ for an unofficial mirror of the
    * original documentation.
    * 
    * Currently only the responder role is supported.
**/
class Fcgi {
    /**
        * Serve accepts incoming FastCGI connections on the listener l, creating a new
        * goroutine for each. The goroutine reads requests and then calls handler
        * to reply to them.
        * If l is nil, Serve accepts connections from os.Stdin.
        * If handler is nil, http.DefaultServeMux is used.
    **/
    static public inline function serve(_l:stdgo._internal.net.Net_listener.Listener, _handler:stdgo._internal.net.http.Http_handler.Handler):stdgo.Error {
        return stdgo._internal.net.http.fcgi.Fcgi_serve.serve(_l, _handler);
    }
    /**
        * ProcessEnv returns FastCGI environment variables associated with the request r
        * for which no effort was made to be included in the request itself - the data
        * is hidden in the request's context. As an example, if REMOTE_USER is set for a
        * request, it will not be found anywhere in r, but it will be included in
        * ProcessEnv's response (via r's context).
    **/
    static public inline function processEnv(_r:stdgo._internal.net.http.Http_request.Request):Map<String, String> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return {
            final __obj__:Map<String, String> = [];
            for (key => value in stdgo._internal.net.http.fcgi.Fcgi_processenv.processEnv(_r)) {
                __obj__[key] = value;
            };
            __obj__;
        };
    }
}
