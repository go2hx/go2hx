package stdgo.net.http.fcgi;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:structInit class T_request {
    public function _parseParams():Void {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _text:Slice<GoUInt8> = _r.value._rawParams;
        _r.value._rawParams = new Slice<GoUInt8>().nil();
        while (_text.length > ((0 : GoInt))) {
            var __tmp__ = _readSize(_text), _keyLen:GoUInt32 = __tmp__._0, _n:GoInt = __tmp__._1;
            if (_n == ((0 : GoInt))) {
                return;
            };
            _text = _text.__slice__(_n);
            var __tmp__ = _readSize(_text), _valLen:GoUInt32 = __tmp__._0, _n:GoInt = __tmp__._1;
            if (_n == ((0 : GoInt))) {
                return;
            };
            _text = _text.__slice__(_n);
            if (((_keyLen : GoInt)) + ((_valLen : GoInt)) > _text.length) {
                return;
            };
            var _key:GoString = _readString(_text, _keyLen);
            _text = _text.__slice__(_keyLen);
            var _val:GoString = _readString(_text, _valLen);
            _text = _text.__slice__(_valLen);
            _r.value._params[_key] = _val;
        };
    }
    public var _pw : Pointer<stdgo.io.Io.PipeWriter> = new Pointer<stdgo.io.Io.PipeWriter>().nil();
    public var _reqId : GoUInt16 = ((0 : GoUInt16));
    public var _params : GoMap<GoString, GoString> = new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil();
    public var _buf : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 1024) ((0 : GoUInt8))]);
    public var _rawParams : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _keepConn : Bool = false;
    public function new(?_pw:Pointer<stdgo.io.Io.PipeWriter>, ?_reqId:GoUInt16, ?_params:GoMap<GoString, GoString>, ?_buf:GoArray<GoUInt8>, ?_rawParams:Slice<GoUInt8>, ?_keepConn:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_pw) + " " + Go.string(_reqId) + " " + Go.string(_params) + " " + Go.string(_buf) + " " + Go.string(_rawParams) + " " + Go.string(_keepConn) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_request(_pw, _reqId, _params, _buf, _rawParams, _keepConn);
    }
    public function __set__(__tmp__) {
        this._pw = __tmp__._pw;
        this._reqId = __tmp__._reqId;
        this._params = __tmp__._params;
        this._buf = __tmp__._buf;
        this._rawParams = __tmp__._rawParams;
        this._keepConn = __tmp__._keepConn;
        return this;
    }
}
@:structInit class T_envVarsContextKey {
    public function new() stdgo.internal.Macro.initLocals();
    public function toString() {
        return "{}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_envVarsContextKey();
    }
    public function __set__(__tmp__) {
        return this;
    }
}
@:structInit class T_response {
    public function close():Error {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _r.value.flush();
        return _r.value._w.value.close();
    }
    public function flush():Void {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_r.value._wroteHeader) {
            _r.value.writeHeader(stdgo.net.http.Http.statusOK);
        };
        _r.value._w.value.flush();
    }
    public function _writeCGIHeader(_p:Slice<GoByte>):Void {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_r.value._wroteCGIHeader) {
            return;
        };
        _r.value._wroteCGIHeader = true;
        stdgo.fmt.Fmt.fprintf(_r.value._w.value, "Status: %d %s\r\n", Go.toInterface(_r.value._code), Go.toInterface(stdgo.net.http.Http.statusText(_r.value._code)));
        {
            var __tmp__ = _r.value._header.exists("Content-Type") ? { value : _r.value._header["Content-Type"], ok : true } : { value : _r.value._header.defaultValue(), ok : false }, _:Slice<GoString> = __tmp__.value, _hasType:Bool = __tmp__.ok;
            if (_r.value._code != stdgo.net.http.Http.statusNotModified && !_hasType) {
                _r.value._header.set("Content-Type", stdgo.net.http.Http.detectContentType(_p));
            };
        };
        _r.value._header.write(_r.value._w.value);
        _r.value._w.value.writeString("\r\n");
        _r.value._w.value.flush();
    }
    public function writeHeader(_code:GoInt):Void {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_r.value._wroteHeader) {
            return;
        };
        _r.value._wroteHeader = true;
        _r.value._code = _code;
        if (_code == stdgo.net.http.Http.statusNotModified) {
            _r.value._header.del("Content-Type");
            _r.value._header.del("Content-Length");
            _r.value._header.del("Transfer-Encoding");
        };
        if (_r.value._header.get("Date") == (("" : GoString))) {
            _r.value._header.set("Date", stdgo.time.Time.now().utc().format(stdgo.net.http.Http.timeFormat));
        };
    }
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (!_r.value._wroteHeader) {
            _r.value.writeHeader(stdgo.net.http.Http.statusOK);
        };
        if (!_r.value._wroteCGIHeader) {
            _r.value._writeCGIHeader(_p);
        };
        return _r.value._w.value.write(_p);
    }
    public function header():stdgo.net.http.Http.Header {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _r.value._header.__copy__();
    }
    public var _req : Pointer<T_request> = new Pointer<T_request>().nil();
    public var _header : stdgo.net.http.Http.Header = ((null : stdgo.net.http.Http.Header));
    public var _code : GoInt = ((0 : GoInt));
    public var _wroteHeader : Bool = false;
    public var _wroteCGIHeader : Bool = false;
    public var _w : Pointer<T_bufWriter> = new Pointer<T_bufWriter>().nil();
    public function new(?_req:Pointer<T_request>, ?_header:stdgo.net.http.Http.Header, ?_code:GoInt, ?_wroteHeader:Bool, ?_wroteCGIHeader:Bool, ?_w:Pointer<T_bufWriter>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_req) + " " + Go.string(_header) + " " + Go.string(_code) + " " + Go.string(_wroteHeader) + " " + Go.string(_wroteCGIHeader) + " " + Go.string(_w) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_response(_req, _header, _code, _wroteHeader, _wroteCGIHeader, _w);
    }
    public function __set__(__tmp__) {
        this._req = __tmp__._req;
        this._header = __tmp__._header;
        this._code = __tmp__._code;
        this._wroteHeader = __tmp__._wroteHeader;
        this._wroteCGIHeader = __tmp__._wroteCGIHeader;
        this._w = __tmp__._w;
        return this;
    }
}
@:structInit class T_child {
    public function _cleanUp():Void {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        for (_req in _c.value._requests) {
            if (_req.value._pw != null && !_req.value._pw.isNil()) {
                _req.value._pw.value.closeWithError(errConnClosed);
            };
        };
    }
    public function _serveRequest(_req:Pointer<T_request>, _body:stdgo.io.Io.ReadCloser):Void {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _r:Pointer<T_response> = _newResponse(_c, _req);
        var __tmp__ = stdgo.net.http.cgi.Cgi.requestFromMap(_req.value._params), _httpReq:Pointer<stdgo.net.http.Http.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _r.value.writeHeader(stdgo.net.http.Http.statusInternalServerError);
            _c.value._conn.value._writeRecord(_typeStderr, _req.value._reqId, ((_err.error() : Slice<GoByte>)));
        } else {
            _httpReq.value.body = _body;
            var _withoutUsedEnvVars:GoMap<GoString, GoString> = _filterOutUsedEnvVars(_req.value._params);
            var _envVarCtx:stdgo.context.Context.Context = stdgo.context.Context.withValue(_httpReq.value.context(), Go.toInterface(new T_envVarsContextKey().__copy__()), Go.toInterface(_withoutUsedEnvVars));
            _httpReq = _httpReq.value.withContext(_envVarCtx);
            _c.value._handler.serveHTTP(_r.value, _httpReq);
        };
        _r.value.write(new Slice<GoUInt8>().nil());
        _r.value.close();
        _c.value._conn.value._writeEndRequest(_req.value._reqId, ((0 : GoInt)), _statusRequestComplete);
        stdgo.io.Io.copyN(stdgo.io.Io.discard, _body, (((100 : GoUnTypedInt)) << ((20 : GoUnTypedInt))));
        _body.close();
        if (!_req.value._keepConn) {
            _c.value._conn.value.close();
        };
    }
    public function _handleRecord(_rec:Pointer<T_record>):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _c.value._requests.exists(_rec.value._h.id) ? { value : _c.value._requests[_rec.value._h.id], ok : true } : { value : _c.value._requests.defaultValue(), ok : false }, _req:Pointer<T_request> = __tmp__.value, _ok:Bool = __tmp__.ok;
        if (!_ok && _rec.value._h.type.__t__ != _typeBeginRequest.__t__ && _rec.value._h.type.__t__ != _typeGetValues.__t__) {
            return ((null : stdgo.Error));
        };
        if (_rec.value._h.type.__t__ == _typeBeginRequest.__t__) {
            if (_req != null && !_req.isNil()) {
                return stdgo.errors.Errors.new_("fcgi: received ID that is already in-flight");
            };
            var _br:T_beginRequest = new T_beginRequest();
            {
                var _err:stdgo.Error = _br._read(_rec.value._content());
                if (_err != null) {
                    return _err;
                };
            };
            if (_br._role != _roleResponder) {
                _c.value._conn.value._writeEndRequest(_rec.value._h.id, ((0 : GoInt)), _statusUnknownRole);
                return ((null : stdgo.Error));
            };
            _req = _newRequest(_rec.value._h.id, _br._flags);
            _c.value._requests[_rec.value._h.id] = _req;
            return ((null : stdgo.Error));
        } else if (_rec.value._h.type.__t__ == _typeParams.__t__) {
            if (_rec.value._content().length > ((0 : GoInt))) {
                _req.value._rawParams = _req.value._rawParams.__append__(..._rec.value._content().toArray());
                return ((null : stdgo.Error));
            };
            _req.value._parseParams();
            return ((null : stdgo.Error));
        } else if (_rec.value._h.type.__t__ == _typeStdin.__t__) {
            var _content:Slice<GoUInt8> = _rec.value._content();
            if (_req.value._pw == null || _req.value._pw.isNil()) {
                var _body:stdgo.io.Io.ReadCloser = ((null : stdgo.io.Io.ReadCloser));
                if (_content.length > ((0 : GoInt))) {
                    {
                        var __tmp__ = stdgo.io.Io.pipe();
                        _body = __tmp__._0.value;
                        _req.value._pw = __tmp__._1;
                    };
                } else {
                    _body = _emptyBody;
                };
                Go.routine(_c.value._serveRequest(_req, _body));
            };
            if (_content.length > ((0 : GoInt))) {
                _req.value._pw.value.write(_content);
            } else {
                _c.value._requests.remove(_req.value._reqId);
                if (_req.value._pw != null && !_req.value._pw.isNil()) {
                    _req.value._pw.value.close();
                };
            };
            return ((null : stdgo.Error));
        } else if (_rec.value._h.type.__t__ == _typeGetValues.__t__) {
            var _values:GoMap<GoString, GoString> = new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind))), { key : "FCGI_MPXS_CONNS", value : "1" });
            _c.value._conn.value._writePairs(_typeGetValuesResult, ((0 : GoUInt16)), _values);
            return ((null : stdgo.Error));
        } else if (_rec.value._h.type.__t__ == _typeData.__t__) {
            return ((null : stdgo.Error));
        } else if (_rec.value._h.type.__t__ == _typeAbortRequest.__t__) {
            _c.value._requests.remove(_rec.value._h.id);
            _c.value._conn.value._writeEndRequest(_rec.value._h.id, ((0 : GoInt)), _statusRequestComplete);
            if (_req.value._pw != null && !_req.value._pw.isNil()) {
                _req.value._pw.value.closeWithError(errRequestAborted);
            };
            if (!_req.value._keepConn) {
                return _errCloseConn;
            };
            return ((null : stdgo.Error));
        } else {
            var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((8 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            _b[((0 : GoInt))] = _rec.value._h.type.__t__;
            _c.value._conn.value._writeRecord(_typeUnknownType, ((0 : GoUInt16)), _b);
            return ((null : stdgo.Error));
        };
    }
    public function _serve():Void {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            deferstack.unshift(() -> _c.value._conn.value.close());
            deferstack.unshift(() -> _c.value._cleanUp());
            var _rec:T_record = new T_record();
            while (true) {
                {
                    var _err:stdgo.Error = _rec._read(_c.value._conn.value._rwc);
                    if (_err != null) {
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return;
                        };
                    };
                };
                {
                    var _err:stdgo.Error = _c.value._handleRecord(Go.pointer(_rec));
                    if (_err != null) {
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return;
                        };
                    };
                };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
    public var _conn : Pointer<T_conn> = new Pointer<T_conn>().nil();
    public var _handler : stdgo.net.http.Http.Handler = ((null : stdgo.net.http.Http.Handler));
    public var _requests : GoMap<GoUInt16, Pointer<T_request>> = new GoMap<GoUInt16, Pointer<T_request>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint16_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/http/fcgi.request", [], stdgo.reflect.Reflect.GoType.named("net/http/fcgi.request", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_pw", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("io.PipeWriter", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_p", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("io.pipe", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_wrMu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) }, { name : "_wrCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))) }, { name : "_rdCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_once", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Once", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_done", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_m", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType) }])) }, { name : "_done", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) }, { name : "_rerr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("io.onceError", [], stdgo.reflect.Reflect.GoType.structType([{ name : "mutex", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_err", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }])) }, { name : "_werr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("io.onceError", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }]))) }, { name : "_reqId", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint16_kind) }, { name : "_params", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) }, { name : "_buf", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.basic(uint8_kind), 1024) }, { name : "_rawParams", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_keepConn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))))))).nil();
    public function new(?_conn:Pointer<T_conn>, ?_handler:stdgo.net.http.Http.Handler, ?_requests:GoMap<GoUInt16, Pointer<T_request>>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_conn) + " " + Go.string(_handler) + " " + Go.string(_requests) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_child(_conn, _handler, _requests);
    }
    public function __set__(__tmp__) {
        this._conn = __tmp__._conn;
        this._handler = __tmp__._handler;
        this._requests = __tmp__._requests;
        return this;
    }
}
@:named class T_recType {
    public var __t__ : GoUInt8;
    public function new(?t:GoUInt8) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_recType(__t__);
}
@:structInit class T_header {
    public function _init(_recType:T_recType, _reqId:GoUInt16, _contentLength:GoInt):Void {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _h.value.version = ((1 : GoUInt8));
        _h.value.type = _recType;
        _h.value.id = _reqId;
        _h.value.contentLength = ((_contentLength : GoUInt16));
        _h.value.paddingLength = (((-_contentLength & ((7 : GoInt))) : GoUInt8));
    }
    public var version : GoUInt8 = ((0 : GoUInt8));
    public var type : T_recType = new T_recType();
    public var id : GoUInt16 = ((0 : GoUInt16));
    public var contentLength : GoUInt16 = ((0 : GoUInt16));
    public var paddingLength : GoUInt8 = ((0 : GoUInt8));
    public var reserved : GoUInt8 = ((0 : GoUInt8));
    public function new(?version:GoUInt8, ?type:T_recType, ?id:GoUInt16, ?contentLength:GoUInt16, ?paddingLength:GoUInt8, ?reserved:GoUInt8) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(version) + " " + Go.string(type) + " " + Go.string(id) + " " + Go.string(contentLength) + " " + Go.string(paddingLength) + " " + Go.string(reserved) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_header(version, type, id, contentLength, paddingLength, reserved);
    }
    public function __set__(__tmp__) {
        this.version = __tmp__.version;
        this.type = __tmp__.type;
        this.id = __tmp__.id;
        this.contentLength = __tmp__.contentLength;
        this.paddingLength = __tmp__.paddingLength;
        this.reserved = __tmp__.reserved;
        return this;
    }
}
@:structInit class T_beginRequest {
    public function _read(_content:Slice<GoByte>):Error {
        var _br = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_content.length != ((8 : GoInt))) {
            return stdgo.errors.Errors.new_("fcgi: invalid begin request record");
        };
        _br.value._role = stdgo.encoding.binary.Binary.bigEndian.uint16(_content);
        _br.value._flags = _content[((2 : GoInt))];
        return ((null : stdgo.Error));
    }
    public var _role : GoUInt16 = ((0 : GoUInt16));
    public var _flags : GoUInt8 = ((0 : GoUInt8));
    public var _reserved : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 5) ((0 : GoUInt8))]);
    public function new(?_role:GoUInt16, ?_flags:GoUInt8, ?_reserved:GoArray<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_role) + " " + Go.string(_flags) + " " + Go.string(_reserved) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_beginRequest(_role, _flags, _reserved);
    }
    public function __set__(__tmp__) {
        this._role = __tmp__._role;
        this._flags = __tmp__._flags;
        this._reserved = __tmp__._reserved;
        return this;
    }
}
@:structInit class T_conn {
    public function _writePairs(_recType:T_recType, _reqId:GoUInt16, _pairs:GoMap<GoString, GoString>):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _w:Pointer<T_bufWriter> = _newWriter(_c, _recType, _reqId);
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((8 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _k;
            var _v;
            for (_obj in _pairs.keyValueIterator()) {
                _k = _obj.key;
                _v = _obj.value;
                var _n:GoInt = _encodeSize(_b, ((_k.length : GoUInt32)));
                _n = _n + (_encodeSize(_b.__slice__(_n), ((_v.length : GoUInt32))));
                {
                    var __tmp__ = _w.value.write(_b.__slice__(0, _n)), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
                {
                    var __tmp__ = _w.value.writeString(_k), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
                {
                    var __tmp__ = _w.value.writeString(_v), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
            };
        };
        _w.value.close();
        return ((null : stdgo.Error));
    }
    public function _writeEndRequest(_reqId:GoUInt16, _appStatus:GoInt, _protocolStatus:GoUInt8):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((8 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint32(_b, ((_appStatus : GoUInt32)));
        _b[((4 : GoInt))] = _protocolStatus;
        return _c.value._writeRecord(_typeEndRequest, _reqId, _b);
    }
    public function _writeRecord(_recType:T_recType, _reqId:GoUInt16, _b:Slice<GoByte>):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _c.value._mutex.lock();
        try {
            deferstack.unshift(() -> _c.value._mutex.unlock());
            _c.value._buf.reset();
            _c.value._h._init(_recType, _reqId, _b.length);
            {
                var _err:stdgo.Error = stdgo.encoding.binary.Binary.write(Go.pointer(_c.value._buf).value, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(_c.value._h.__copy__()));
                if (_err != null) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
            {
                var __tmp__ = _c.value._buf.write(_b), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
            {
                var __tmp__ = _c.value._buf.write(_pad.__slice__(0, _c.value._h.paddingLength)), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
            var __tmp__ = _c.value._rwc.write(_c.value._buf.bytes()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {
                for (defer in deferstack) {
                    defer();
                };
                return _err;
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
    public function close():Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _c.value._mutex.lock();
        try {
            deferstack.unshift(() -> _c.value._mutex.unlock());
            {
                for (defer in deferstack) {
                    defer();
                };
                return _c.value._rwc.close();
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
    public var _mutex : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _rwc : stdgo.io.Io.ReadWriteCloser = ((null : stdgo.io.Io.ReadWriteCloser));
    public var _buf : stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
    public var _h : T_header = new T_header();
    public function new(?_mutex:stdgo.sync.Sync.Mutex, ?_rwc:stdgo.io.Io.ReadWriteCloser, ?_buf:stdgo.bytes.Bytes.Buffer, ?_h:T_header) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_mutex) + " " + Go.string(_rwc) + " " + Go.string(_buf) + " " + Go.string(_h) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_conn(_mutex, _rwc, _buf, _h);
    }
    public function __set__(__tmp__) {
        this._mutex = __tmp__._mutex;
        this._rwc = __tmp__._rwc;
        this._buf = __tmp__._buf;
        this._h = __tmp__._h;
        return this;
    }
}
@:structInit class T_record {
    public function _content():Slice<GoByte> {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _r.value._buf.__slice__(0, _r.value._h.contentLength);
    }
    public function _read(_r:stdgo.io.Io.Reader):Error {
        var _rec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _err:Error = ((null : stdgo.Error));
        {
            _err = stdgo.encoding.binary.Binary.read(_r, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(Go.pointer(_rec.value._h)));
            if (_err != null) {
                return _err;
            };
        };
        if (_rec.value._h.version != ((1 : GoUInt8))) {
            return stdgo.errors.Errors.new_("fcgi: invalid header version");
        };
        var _n:GoInt = ((_rec.value._h.contentLength : GoInt)) + ((_rec.value._h.paddingLength : GoInt));
        {
            {
                var __tmp__ = stdgo.io.Io.readFull(_r, _rec.value._buf.__slice__(0, _n));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        return ((null : stdgo.Error));
    }
    public var _h : T_header = new T_header();
    public var _buf : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 65790) ((0 : GoUInt8))]);
    public function new(?_h:T_header, ?_buf:GoArray<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_h) + " " + Go.string(_buf) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_record(_h, _buf);
    }
    public function __set__(__tmp__) {
        this._h = __tmp__._h;
        this._buf = __tmp__._buf;
        return this;
    }
}
@:structInit class T_bufWriter {
    public function close():Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _w.value.writer.value.flush();
            if (_err != null) {
                _w.value._closer.close();
                return _err;
            };
        };
        return _w.value._closer.close();
    }
    public var _closer : stdgo.io.Io.Closer = ((null : stdgo.io.Io.Closer));
    @:embedded
    public var writer : Pointer<bufio.Bufio.Writer> = new Pointer<bufio.Bufio.Writer>().nil();
    public function new(?_closer:stdgo.io.Io.Closer, ?writer:Pointer<bufio.Bufio.Writer>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_closer) + " " + Go.string(writer) + "}";
    }
    public function available():GoInt return writer.available();
    public function buffered():GoInt return writer.buffered();
    public function flush():stdgo.Error return writer.flush();
    public function readFrom(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return writer.readFrom(_0);
    public function reset(_w:stdgo.io.Io.Writer) writer.reset(_0);
    public function size():GoInt return writer.size();
    public function write(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return writer.write(_0);
    public function writeByte(_c:GoUInt8):stdgo.Error return writer.writeByte(_0);
    public function writeRune(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return writer.writeRune(_0);
    public function writeString(_s:GoString):{ var _0 : GoString -> { var _0 : GoInt; var _1 : stdgo.Error; }; var _1 : GoString -> { var _0 : GoInt; var _1 : stdgo.Error; }; } return writer.writeString(_0);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_bufWriter(_closer, writer);
    }
    public function __set__(__tmp__) {
        this._closer = __tmp__._closer;
        this.writer = __tmp__.writer;
        return this;
    }
}
@:structInit class T_streamWriter {
    public function close():Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _w.value._c.value._writeRecord(_w.value._recType, _w.value._reqId, new Slice<GoUInt8>().nil());
    }
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _nn:GoInt = ((0 : GoInt));
        while (_p.length > ((0 : GoInt))) {
            var _n:GoInt = _p.length;
            if (_n > _maxWrite) {
                _n = _maxWrite;
            };
            {
                var _err:stdgo.Error = _w.value._c.value._writeRecord(_w.value._recType, _w.value._reqId, _p.__slice__(0, _n));
                if (_err != null) {
                    return { _0 : _nn, _1 : _err };
                };
            };
            _nn = _nn + (_n);
            _p = _p.__slice__(_n);
        };
        return { _0 : _nn, _1 : ((null : stdgo.Error)) };
    }
    public var _c : Pointer<T_conn> = new Pointer<T_conn>().nil();
    public var _recType : T_recType = new T_recType();
    public var _reqId : GoUInt16 = ((0 : GoUInt16));
    public function new(?_c:Pointer<T_conn>, ?_recType:T_recType, ?_reqId:GoUInt16) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_c) + " " + Go.string(_recType) + " " + Go.string(_reqId) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_streamWriter(_c, _recType, _reqId);
    }
    public function __set__(__tmp__) {
        this._c = __tmp__._c;
        this._recType = __tmp__._recType;
        this._reqId = __tmp__._reqId;
        return this;
    }
}
final _statusUnknownRole = (3 : GoUnTypedInt);
final _roleResponder : GoUnTypedInt = (0 : GoUnTypedInt) + ((1 : GoUnTypedInt));
final _flagKeepConn : GoInt64 = ((1 : GoUnTypedInt));
final _typeGetValuesResult : T_recType = new T_recType(((10 : GoUInt8)));
final _typeEndRequest : T_recType = new T_recType(((3 : GoUInt8)));
var _pad : GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 255) ((0 : GoUInt8))]);
final _typeUnknownType : T_recType = new T_recType(((11 : GoUInt8)));
var errConnClosed : stdgo.Error = stdgo.errors.Errors.new_("fcgi: connection to web server closed");
var _emptyBody : stdgo.io.Io.ReadCloser = stdgo.io.Io.nopCloser(stdgo.strings.Strings.newReader("").value);
final _statusRequestComplete : GoUnTypedInt = (0 : GoUnTypedInt);
final _maxWrite : GoInt64 = ((65535 : GoUnTypedInt));
final _typeParams : T_recType = new T_recType(((4 : GoUInt8)));
final _typeData : T_recType = new T_recType(((8 : GoUInt8)));
final _typeStderr : T_recType = new T_recType(((7 : GoUInt8)));
final _typeAbortRequest : T_recType = new T_recType(((2 : GoUInt8)));
var errRequestAborted : stdgo.Error = stdgo.errors.Errors.new_("fcgi: request aborted by web server");
final _typeGetValues : T_recType = new T_recType(((9 : GoUInt8)));
final _statusOverloaded = (2 : GoUnTypedInt);
final _statusCantMultiplex = (1 : GoUnTypedInt);
final _roleFilter = (2 : GoUnTypedInt) + ((1 : GoUnTypedInt));
final _roleAuthorizer = (1 : GoUnTypedInt) + ((1 : GoUnTypedInt));
final _maxPad : GoInt64 = ((255 : GoUnTypedInt));
final _typeStdout : T_recType = new T_recType(((6 : GoUInt8)));
final _typeStdin : T_recType = new T_recType(((5 : GoUInt8)));
final _typeBeginRequest : T_recType = new T_recType(((1 : GoUInt8)));
var _errCloseConn : stdgo.Error = stdgo.errors.Errors.new_("fcgi: connection should be closed");
function _newRequest(_reqId:GoUInt16, _flags:GoUInt8):Pointer<T_request> {
        var _r:Pointer<T_request> = Go.pointer((({ _reqId : _reqId, _params : new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))), _keepConn : _flags & _flagKeepConn != ((0 : GoUInt8)), _pw : new Pointer<stdgo.io.Io.PipeWriter>().nil(), _buf : new GoArray<GoUInt8>(...[for (i in 0 ... 1024) ((0 : GoUInt8))]), _rawParams : new Slice<GoUInt8>().nil() } : T_request)));
        _r.value._rawParams = _r.value._buf.__slice__(0, ((0 : GoInt)));
        return _r;
    }
function _newResponse(_c:Pointer<T_child>, _req:Pointer<T_request>):Pointer<T_response> {
        return Go.pointer((({ _req : _req, _header : new stdgo.net.http.Http.Header(new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)))))).__copy__(), _w : _newWriter(_c.value._conn, _typeStdout, _req.value._reqId), _code : 0, _wroteHeader : false, _wroteCGIHeader : false } : T_response)));
    }
function _newChild(_rwc:stdgo.io.Io.ReadWriteCloser, _handler:stdgo.net.http.Http.Handler):Pointer<T_child> {
        return Go.pointer((({ _conn : _newConn(_rwc), _handler : _handler, _requests : new GoMap<GoUInt16, Pointer<T_request>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint16_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/http/fcgi.request", [], stdgo.reflect.Reflect.GoType.named("net/http/fcgi.request", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_pw", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("io.PipeWriter", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_p", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("io.pipe", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_wrMu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) }, { name : "_wrCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))) }, { name : "_rdCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_once", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Once", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_done", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_m", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType) }])) }, { name : "_done", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) }, { name : "_rerr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("io.onceError", [], stdgo.reflect.Reflect.GoType.structType([{ name : "mutex", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_err", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }])) }, { name : "_werr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("io.onceError", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }]))) }, { name : "_reqId", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint16_kind) }, { name : "_params", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) }, { name : "_buf", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.basic(uint8_kind), 1024) }, { name : "_rawParams", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_keepConn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))))))) } : T_child)));
    }
/**
    // filterOutUsedEnvVars returns a new map of env vars without the
    // variables in the given envVars map that are read for creating each http.Request
**/
function _filterOutUsedEnvVars(_envVars:GoMap<GoString, GoString>):GoMap<GoString, GoString> {
        var _withoutUsedEnvVars:GoMap<GoString, GoString> = new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind))));
        {
            var _k;
            var _v;
            for (_obj in _envVars.keyValueIterator()) {
                _k = _obj.key;
                _v = _obj.value;
                if (_addFastCGIEnvToContext(_k)) {
                    _withoutUsedEnvVars[_k] = _v;
                };
            };
        };
        return _withoutUsedEnvVars;
    }
/**
    // Serve accepts incoming FastCGI connections on the listener l, creating a new
    // goroutine for each. The goroutine reads requests and then calls handler
    // to reply to them.
    // If l is nil, Serve accepts connections from os.Stdin.
    // If handler is nil, http.DefaultServeMux is used.
**/
function serve(_l:stdgo.net.Net.Listener, _handler:stdgo.net.http.Http.Handler):Error {
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        if (_l == null) {
            var _err:Error = ((null : stdgo.Error));
            {
                var __tmp__ = stdgo.net.Net.fileListener(stdgo.os.Os.stdin);
                _l = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
            deferstack.unshift(() -> _l.close());
        };
        try {
            if (_handler == null) {
                _handler = stdgo.net.http.Http.defaultServeMux.value;
            };
            while (true) {
                var __tmp__ = _l.accept(), _rw:stdgo.net.Net.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return _err;
                    };
                };
                var _c:Pointer<T_child> = _newChild(_rw, _handler);
                Go.routine(_c.value._serve());
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
/**
    // ProcessEnv returns FastCGI environment variables associated with the request r
    // for which no effort was made to be included in the request itself - the data
    // is hidden in the request's context. As an example, if REMOTE_USER is set for a
    // request, it will not be found anywhere in r, but it will be included in
    // ProcessEnv's response (via r's context).
**/
function processEnv(_r:Pointer<stdgo.net.http.Http.Request>):GoMap<GoString, GoString> {
        var __tmp__ = try {
            { value : ((_r.value.context().value(Go.toInterface(new T_envVarsContextKey().__copy__())).value : GoMap<GoString, GoString>)), ok : true };
        } catch(_) {
            { value : new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil(), ok : false };
        }, _env = __tmp__.value, _ = __tmp__.ok;
        return _env;
    }
/**
    // addFastCGIEnvToContext reports whether to include the FastCGI environment variable s
    // in the http.Request.Context, accessible via ProcessEnv.
**/
function _addFastCGIEnvToContext(_s:GoString):Bool {
        if (_s == (("CONTENT_LENGTH" : GoString)) || _s == (("CONTENT_TYPE" : GoString)) || _s == (("HTTPS" : GoString)) || _s == (("PATH_INFO" : GoString)) || _s == (("QUERY_STRING" : GoString)) || _s == (("REMOTE_ADDR" : GoString)) || _s == (("REMOTE_HOST" : GoString)) || _s == (("REMOTE_PORT" : GoString)) || _s == (("REQUEST_METHOD" : GoString)) || _s == (("REQUEST_URI" : GoString)) || _s == (("SCRIPT_NAME" : GoString)) || _s == (("SERVER_PROTOCOL" : GoString))) {
            return false;
        };
        if (stdgo.strings.Strings.hasPrefix(_s, "HTTP_")) {
            return false;
        };
        if (_s == (("REMOTE_USER" : GoString))) {
            return true;
        };
        return true;
    }
function _newConn(_rwc:stdgo.io.Io.ReadWriteCloser):Pointer<T_conn> {
        return Go.pointer((({ _rwc : _rwc, _mutex : new stdgo.sync.Sync.Mutex(), _buf : new stdgo.bytes.Bytes.Buffer(), _h : new T_header() } : T_conn)));
    }
function _readSize(_s:Slice<GoByte>):{ var _0 : GoUInt32; var _1 : GoInt; } {
        if (_s.length == ((0 : GoInt))) {
            return { _0 : ((0 : GoUInt32)), _1 : ((0 : GoInt)) };
        };
        var _size:GoUInt32 = ((_s[((0 : GoInt))] : GoUInt32)), _n:GoInt = ((1 : GoInt));
        if (_size & ((((1 : GoUnTypedInt)) << ((7 : GoUnTypedInt)))) != ((0 : GoUInt32))) {
            if (_s.length < ((4 : GoInt))) {
                return { _0 : ((0 : GoUInt32)), _1 : ((0 : GoInt)) };
            };
            _n = ((4 : GoInt));
            _size = stdgo.encoding.binary.Binary.bigEndian.uint32(_s);
            _size = (_size & ((((1 : GoUnTypedInt)) << ((31 : GoUnTypedInt))))) ^ ((-1 : GoUnTypedInt));
        };
        return { _0 : _size, _1 : _n };
    }
function _readString(_s:Slice<GoByte>, _size:GoUInt32):GoString {
        if (_size > ((_s.length : GoUInt32))) {
            return "";
        };
        return ((_s.__slice__(0, _size) : GoString));
    }
function _encodeSize(_b:Slice<GoByte>, _size:GoUInt32):GoInt {
        if (_size > ((127 : GoUInt32))) {
            _size = _size | ((((1 : GoUnTypedInt)) << ((31 : GoUnTypedInt))));
            stdgo.encoding.binary.Binary.bigEndian.putUint32(_b, _size);
            return ((4 : GoInt));
        };
        _b[((0 : GoInt))] = ((_size : GoByte));
        return ((1 : GoInt));
    }
function _newWriter(_c:Pointer<T_conn>, _recType:T_recType, _reqId:GoUInt16):Pointer<T_bufWriter> {
        var _s:Pointer<T_streamWriter> = Go.pointer((({ _c : _c, _recType : _recType, _reqId : _reqId } : T_streamWriter)));
        var _w:Pointer<bufio.Bufio.Writer> = bufio.Bufio.newWriterSize(_s.value, _maxWrite);
        return Go.pointer(new T_bufWriter(_s.value, _w));
    }
class T_request_extension_fields {
    public function _parseParams(__tmp__):Void __tmp__._parseParams();
}
class T_response_extension_fields {
    public function header(__tmp__):stdgo.net.http.Http.Header return __tmp__.header();
    public function write(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_p);
    public function writeHeader(__tmp__, _code:GoInt):Void __tmp__.writeHeader(_code);
    public function _writeCGIHeader(__tmp__, _p:Slice<GoByte>):Void __tmp__._writeCGIHeader(_p);
    public function flush(__tmp__):Void __tmp__.flush();
    public function close(__tmp__):Error return __tmp__.close();
}
class T_child_extension_fields {
    public function _serve(__tmp__):Void __tmp__._serve();
    public function _handleRecord(__tmp__, _rec:Pointer<T_record>):Error return __tmp__._handleRecord(_rec);
    public function _serveRequest(__tmp__, _req:Pointer<T_request>, _body:stdgo.io.Io.ReadCloser):Void __tmp__._serveRequest(_req, _body);
    public function _cleanUp(__tmp__):Void __tmp__._cleanUp();
}
class T_header_extension_fields {
    public function _init(__tmp__, _recType:T_recType, _reqId:GoUInt16, _contentLength:GoInt):Void __tmp__._init(_recType, _reqId, _contentLength);
}
class T_beginRequest_extension_fields {
    public function _read(__tmp__, _content:Slice<GoByte>):Error return __tmp__._read(_content);
}
class T_conn_extension_fields {
    public function close(__tmp__):Error return __tmp__.close();
    public function _writeRecord(__tmp__, _recType:T_recType, _reqId:GoUInt16, _b:Slice<GoByte>):Error return __tmp__._writeRecord(_recType, _reqId, _b);
    public function _writeEndRequest(__tmp__, _reqId:GoUInt16, _appStatus:GoInt, _protocolStatus:GoUInt8):Error return __tmp__._writeEndRequest(_reqId, _appStatus, _protocolStatus);
    public function _writePairs(__tmp__, _recType:T_recType, _reqId:GoUInt16, _pairs:GoMap<GoString, GoString>):Error return __tmp__._writePairs(_recType, _reqId, _pairs);
}
class T_record_extension_fields {
    public function _read(__tmp__, _r:stdgo.io.Io.Reader):Error return __tmp__._read(_r);
    public function _content(__tmp__):Slice<GoByte> return __tmp__._content();
}
class T_bufWriter_extension_fields {
    public function close(__tmp__):Error return __tmp__.close();
}
class T_streamWriter_extension_fields {
    public function write(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_p);
    public function close(__tmp__):Error return __tmp__.close();
}
