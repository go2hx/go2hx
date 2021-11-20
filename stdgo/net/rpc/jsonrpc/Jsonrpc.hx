package stdgo.net.rpc.jsonrpc;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:structInit class T_clientCodec {
    public function close():Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _c.value._c.close();
    }
    public function readResponseBody(_x:AnyInterface):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x == null) {
            return ((null : stdgo.Error));
        };
        return stdgo.encoding.json.Json.unmarshal(_c.value._resp.result.value.__copy__().__t__, Go.toInterface(_x));
    }
    public function readResponseHeader(_r:Pointer<stdgo.net.rpc.Rpc.Response>):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _c.value._resp._reset();
        {
            var _err:stdgo.Error = _c.value._dec.value.decode(Go.toInterface(Go.pointer(_c.value._resp)));
            if (_err != null) {
                return _err;
            };
        };
        _c.value._mutex.lock();
        _r.value.serviceMethod = _c.value._pending[_c.value._resp.id];
        _c.value._pending.remove(_c.value._resp.id);
        _c.value._mutex.unlock();
        _r.value.error = "";
        _r.value.seq = _c.value._resp.id;
        if (_c.value._resp.error != null || _c.value._resp.result == null || _c.value._resp.result.isNil()) {
            var __tmp__ = try {
                { value : ((_c.value._resp.error.value : GoString)), ok : true };
            } catch(_) {
                { value : (("" : GoString)), ok : false };
            }, _x = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                return stdgo.fmt.Fmt.errorf("invalid error %v", Go.toInterface(_c.value._resp.error));
            };
            if (_x == (("" : GoString))) {
                _x = "unspecified error";
            };
            _r.value.error = _x;
        };
        return ((null : stdgo.Error));
    }
    public function writeRequest(_r:Pointer<stdgo.net.rpc.Rpc.Request>, _param:AnyInterface):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _c.value._mutex.lock();
        _c.value._pending[_r.value.seq] = _r.value.serviceMethod;
        _c.value._mutex.unlock();
        _c.value._req.method = _r.value.serviceMethod;
        _c.value._req.params[((0 : GoInt))] = Go.toInterface(_param);
        _c.value._req.id = _r.value.seq;
        return _c.value._enc.value.encode(Go.toInterface(Go.pointer(_c.value._req)));
    }
    public var _dec : Pointer<stdgo.encoding.json.Json.Decoder> = new Pointer<stdgo.encoding.json.Json.Decoder>().nil();
    public var _enc : Pointer<stdgo.encoding.json.Json.Encoder> = new Pointer<stdgo.encoding.json.Json.Encoder>().nil();
    public var _c : stdgo.io.Io.Closer = ((null : stdgo.io.Io.Closer));
    public var _req : T_clientRequest = new T_clientRequest();
    public var _resp : T_clientResponse = new T_clientResponse();
    public var _mutex : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _pending : GoMap<GoUInt64, GoString> = new GoMap<GoUInt64, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil();
    public function new(?_dec:Pointer<stdgo.encoding.json.Json.Decoder>, ?_enc:Pointer<stdgo.encoding.json.Json.Encoder>, ?_c:stdgo.io.Io.Closer, ?_req:T_clientRequest, ?_resp:T_clientResponse, ?_mutex:stdgo.sync.Sync.Mutex, ?_pending:GoMap<GoUInt64, GoString>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_dec) + " " + Go.string(_enc) + " " + Go.string(_c) + " " + Go.string(_req) + " " + Go.string(_resp) + " " + Go.string(_mutex) + " " + Go.string(_pending) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_clientCodec(_dec, _enc, _c, _req, _resp, _mutex, _pending);
    }
    public function __set__(__tmp__) {
        this._dec = __tmp__._dec;
        this._enc = __tmp__._enc;
        this._c = __tmp__._c;
        this._req = __tmp__._req;
        this._resp = __tmp__._resp;
        this._mutex = __tmp__._mutex;
        this._pending = __tmp__._pending;
        return this;
    }
}
@:structInit class T_clientRequest {
    @:tag("json:\"method\"")
    public var method : GoString = (("" : GoString));
    @:tag("json:\"params\"")
    public var params : GoArray<AnyInterface> = new GoArray<AnyInterface>(...[for (i in 0 ... 1) ((null : AnyInterface))]);
    @:tag("json:\"id\"")
    public var id : GoUInt64 = ((0 : GoUInt64));
    public function new(?method:GoString, ?params:GoArray<AnyInterface>, ?id:GoUInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(method) + " " + Go.string(params) + " " + Go.string(id) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_clientRequest(method, params, id);
    }
    public function __set__(__tmp__) {
        this.method = __tmp__.method;
        this.params = __tmp__.params;
        this.id = __tmp__.id;
        return this;
    }
}
@:structInit class T_clientResponse {
    public function _reset():Void {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _r.value.id = ((0 : GoUInt64));
        _r.value.result = new Pointer<stdgo.encoding.json.Json.RawMessage>().nil();
        _r.value.error = ((null : AnyInterface));
    }
    @:tag("json:\"id\"")
    public var id : GoUInt64 = ((0 : GoUInt64));
    @:tag("json:\"result\"")
    public var result : Pointer<stdgo.encoding.json.Json.RawMessage> = new Pointer<stdgo.encoding.json.Json.RawMessage>().nil();
    @:tag("json:\"error\"")
    public var error : AnyInterface = ((null : AnyInterface));
    public function new(?id:GoUInt64, ?result:Pointer<stdgo.encoding.json.Json.RawMessage>, ?error:AnyInterface) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(id) + " " + Go.string(result) + " " + Go.string(error) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_clientResponse(id, result, error);
    }
    public function __set__(__tmp__) {
        this.id = __tmp__.id;
        this.result = __tmp__.result;
        this.error = __tmp__.error;
        return this;
    }
}
@:structInit class T_serverCodec {
    public function close():Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _c.value._c.close();
    }
    public function writeResponse(_r:Pointer<stdgo.net.rpc.Rpc.Response>, _x:AnyInterface):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _c.value._mutex.lock();
        var __tmp__ = _c.value._pending.exists(_r.value.seq) ? { value : _c.value._pending[_r.value.seq], ok : true } : { value : _c.value._pending.defaultValue(), ok : false }, _b:Pointer<stdgo.encoding.json.Json.RawMessage> = __tmp__.value, _ok:Bool = __tmp__.ok;
        if (!_ok) {
            _c.value._mutex.unlock();
            return stdgo.errors.Errors.new_("invalid sequence number in response");
        };
        _c.value._pending.remove(_r.value.seq);
        _c.value._mutex.unlock();
        if (_b == null || _b.isNil()) {
            _b = Go.pointer(nil);
        };
        var _resp:T_serverResponse = (({ id : _b, result : ((null : AnyInterface)), error : ((null : AnyInterface)) } : T_serverResponse)).__copy__();
        if (_r.value.error == (("" : GoString))) {
            _resp.result = Go.toInterface(_x);
        } else {
            _resp.error = Go.toInterface(_r.value.error);
        };
        return _c.value._enc.value.encode(Go.toInterface(_resp.__copy__()));
    }
    public function readRequestBody(_x:AnyInterface):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x == null) {
            return ((null : stdgo.Error));
        };
        if (_c.value._req.params == null || _c.value._req.params.isNil()) {
            return _errMissingParams;
        };
        var _params:GoArray<AnyInterface> = new GoArray<AnyInterface>(...[for (i in 0 ... 1) ((null : AnyInterface))]);
        _params[((0 : GoInt))] = Go.toInterface(_x);
        return stdgo.encoding.json.Json.unmarshal(_c.value._req.params.value.__copy__().__t__, Go.toInterface(Go.pointer(_params)));
    }
    public function readRequestHeader(_r:Pointer<stdgo.net.rpc.Rpc.Request>):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _c.value._req._reset();
        {
            var _err:stdgo.Error = _c.value._dec.value.decode(Go.toInterface(Go.pointer(_c.value._req)));
            if (_err != null) {
                return _err;
            };
        };
        _r.value.serviceMethod = _c.value._req.method;
        _c.value._mutex.lock();
        _c.value._seq++;
        _c.value._pending[_c.value._seq] = _c.value._req.id;
        _c.value._req.id = new Pointer<stdgo.encoding.json.Json.RawMessage>().nil();
        _r.value.seq = _c.value._seq;
        _c.value._mutex.unlock();
        return ((null : stdgo.Error));
    }
    public var _dec : Pointer<stdgo.encoding.json.Json.Decoder> = new Pointer<stdgo.encoding.json.Json.Decoder>().nil();
    public var _enc : Pointer<stdgo.encoding.json.Json.Encoder> = new Pointer<stdgo.encoding.json.Json.Encoder>().nil();
    public var _c : stdgo.io.Io.Closer = ((null : stdgo.io.Io.Closer));
    public var _req : T_serverRequest = new T_serverRequest();
    public var _mutex : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _seq : GoUInt64 = ((0 : GoUInt64));
    public var _pending : GoMap<GoUInt64, Pointer<stdgo.encoding.json.Json.RawMessage>> = new GoMap<GoUInt64, Pointer<stdgo.encoding.json.Json.RawMessage>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/json.RawMessage", [], stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))))))).nil();
    public function new(?_dec:Pointer<stdgo.encoding.json.Json.Decoder>, ?_enc:Pointer<stdgo.encoding.json.Json.Encoder>, ?_c:stdgo.io.Io.Closer, ?_req:T_serverRequest, ?_mutex:stdgo.sync.Sync.Mutex, ?_seq:GoUInt64, ?_pending:GoMap<GoUInt64, Pointer<stdgo.encoding.json.Json.RawMessage>>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_dec) + " " + Go.string(_enc) + " " + Go.string(_c) + " " + Go.string(_req) + " " + Go.string(_mutex) + " " + Go.string(_seq) + " " + Go.string(_pending) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_serverCodec(_dec, _enc, _c, _req, _mutex, _seq, _pending);
    }
    public function __set__(__tmp__) {
        this._dec = __tmp__._dec;
        this._enc = __tmp__._enc;
        this._c = __tmp__._c;
        this._req = __tmp__._req;
        this._mutex = __tmp__._mutex;
        this._seq = __tmp__._seq;
        this._pending = __tmp__._pending;
        return this;
    }
}
@:structInit class T_serverRequest {
    public function _reset():Void {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _r.value.method = "";
        _r.value.params = new Pointer<stdgo.encoding.json.Json.RawMessage>().nil();
        _r.value.id = new Pointer<stdgo.encoding.json.Json.RawMessage>().nil();
    }
    @:tag("json:\"method\"")
    public var method : GoString = (("" : GoString));
    @:tag("json:\"params\"")
    public var params : Pointer<stdgo.encoding.json.Json.RawMessage> = new Pointer<stdgo.encoding.json.Json.RawMessage>().nil();
    @:tag("json:\"id\"")
    public var id : Pointer<stdgo.encoding.json.Json.RawMessage> = new Pointer<stdgo.encoding.json.Json.RawMessage>().nil();
    public function new(?method:GoString, ?params:Pointer<stdgo.encoding.json.Json.RawMessage>, ?id:Pointer<stdgo.encoding.json.Json.RawMessage>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(method) + " " + Go.string(params) + " " + Go.string(id) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_serverRequest(method, params, id);
    }
    public function __set__(__tmp__) {
        this.method = __tmp__.method;
        this.params = __tmp__.params;
        this.id = __tmp__.id;
        return this;
    }
}
@:structInit class T_serverResponse {
    @:tag("json:\"id\"")
    public var id : Pointer<stdgo.encoding.json.Json.RawMessage> = new Pointer<stdgo.encoding.json.Json.RawMessage>().nil();
    @:tag("json:\"result\"")
    public var result : AnyInterface = ((null : AnyInterface));
    @:tag("json:\"error\"")
    public var error : AnyInterface = ((null : AnyInterface));
    public function new(?id:Pointer<stdgo.encoding.json.Json.RawMessage>, ?result:AnyInterface, ?error:AnyInterface) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(id) + " " + Go.string(result) + " " + Go.string(error) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_serverResponse(id, result, error);
    }
    public function __set__(__tmp__) {
        this.id = __tmp__.id;
        this.result = __tmp__.result;
        this.error = __tmp__.error;
        return this;
    }
}
var nil : stdgo.encoding.json.Json.RawMessage = new stdgo.encoding.json.Json.RawMessage((("null" : Slice<GoByte>))).__copy__();
var _errMissingParams : stdgo.Error = stdgo.errors.Errors.new_("jsonrpc: request body missing params");
/**
    // NewClientCodec returns a new rpc.ClientCodec using JSON-RPC on conn.
**/
function newClientCodec(_conn:stdgo.io.Io.ReadWriteCloser):stdgo.net.rpc.Rpc.ClientCodec {
        return Go.pointer((({ _dec : stdgo.encoding.json.Json.newDecoder(_conn), _enc : stdgo.encoding.json.Json.newEncoder(_conn), _c : _conn, _pending : new GoMap<GoUInt64, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))), _req : new T_clientRequest(), _resp : new T_clientResponse(), _mutex : new stdgo.sync.Sync.Mutex() } : T_clientCodec))).value;
    }
/**
    // NewClient returns a new rpc.Client to handle requests to the
    // set of services at the other end of the connection.
**/
function newClient(_conn:stdgo.io.Io.ReadWriteCloser):Pointer<stdgo.net.rpc.Rpc.Client> {
        return stdgo.net.rpc.Rpc.newClientWithCodec(newClientCodec(_conn));
    }
/**
    // Dial connects to a JSON-RPC server at the specified network address.
**/
function dial(_network:GoString, _address:GoString):{ var _0 : Pointer<stdgo.net.rpc.Rpc.Client>; var _1 : Error; } {
        var __tmp__ = stdgo.net.Net.dial(_network, _address), _conn:stdgo.net.Net.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<stdgo.net.rpc.Rpc.Client>().nil(), _1 : _err };
        };
        return { _0 : newClient(_conn), _1 : _err };
    }
/**
    // NewServerCodec returns a new rpc.ServerCodec using JSON-RPC on conn.
**/
function newServerCodec(_conn:stdgo.io.Io.ReadWriteCloser):stdgo.net.rpc.Rpc.ServerCodec {
        return Go.pointer((({ _dec : stdgo.encoding.json.Json.newDecoder(_conn), _enc : stdgo.encoding.json.Json.newEncoder(_conn), _c : _conn, _pending : new GoMap<GoUInt64, Pointer<stdgo.encoding.json.Json.RawMessage>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/json.RawMessage", [], stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))))))), _req : new T_serverRequest(), _mutex : new stdgo.sync.Sync.Mutex(), _seq : 0 } : T_serverCodec))).value;
    }
/**
    // ServeConn runs the JSON-RPC server on a single connection.
    // ServeConn blocks, serving the connection until the client hangs up.
    // The caller typically invokes ServeConn in a go statement.
**/
function serveConn(_conn:stdgo.io.Io.ReadWriteCloser):Void {
        stdgo.net.rpc.Rpc.serveCodec(newServerCodec(_conn));
    }
class T_clientCodec_extension_fields {
    public function writeRequest(__tmp__, _r:Pointer<stdgo.net.rpc.Rpc.Request>, _param:AnyInterface):Error return __tmp__.writeRequest(_r, _param);
    public function readResponseHeader(__tmp__, _r:Pointer<stdgo.net.rpc.Rpc.Response>):Error return __tmp__.readResponseHeader(_r);
    public function readResponseBody(__tmp__, _x:AnyInterface):Error return __tmp__.readResponseBody(_x);
    public function close(__tmp__):Error return __tmp__.close();
}
class T_clientResponse_extension_fields {
    public function _reset(__tmp__):Void __tmp__._reset();
}
class T_serverCodec_extension_fields {
    public function readRequestHeader(__tmp__, _r:Pointer<stdgo.net.rpc.Rpc.Request>):Error return __tmp__.readRequestHeader(_r);
    public function readRequestBody(__tmp__, _x:AnyInterface):Error return __tmp__.readRequestBody(_x);
    public function writeResponse(__tmp__, _r:Pointer<stdgo.net.rpc.Rpc.Response>, _x:AnyInterface):Error return __tmp__.writeResponse(_r, _x);
    public function close(__tmp__):Error return __tmp__.close();
}
class T_serverRequest_extension_fields {
    public function _reset(__tmp__):Void __tmp__._reset();
}
