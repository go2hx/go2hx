package stdgo._internal.net.rpc.jsonrpc;
@:keep @:allow(stdgo._internal.net.rpc.jsonrpc.Jsonrpc.T_clientCodec_asInterface) class T_clientCodec_static_extension {
    @:keep
    static public function close( _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec.T_clientCodec>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec.T_clientCodec> = _c;
        return _c._c.close();
    }
    @:keep
    static public function readResponseBody( _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec.T_clientCodec>, _x:stdgo.AnyInterface):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec.T_clientCodec> = _c;
        if (_x == null) {
            return (null : stdgo.Error);
        };
        return stdgo._internal.encoding.json.Json_unmarshal.unmarshal((_c._resp.result : stdgo._internal.encoding.json.Json_RawMessage.RawMessage), _x);
    }
    @:keep
    static public function readResponseHeader( _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec.T_clientCodec>, _r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec.T_clientCodec> = _c;
        _c._resp._reset();
        {
            var _err = (_c._dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_c._resp) : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientResponse.T_clientResponse>)))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _c._mutex.lock();
        _r.serviceMethod = (_c._pending[_c._resp.id] ?? ("" : stdgo.GoString))?.__copy__();
        if (_c._pending != null) _c._pending.remove(_c._resp.id);
        _c._mutex.unlock();
        _r.error = stdgo.Go.str()?.__copy__();
        _r.seq = _c._resp.id;
        if (((_c._resp.error != null) || ((_c._resp.result == null) || (_c._resp.result : Dynamic).__nil__) : Bool)) {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_c._resp.error : stdgo.GoString)) : stdgo.GoString), _1 : true };
            } catch(_) {
                { _0 : ("" : stdgo.GoString), _1 : false };
            }, _x = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("invalid error %v" : stdgo.GoString), _c._resp.error);
            };
            if (_x == (stdgo.Go.str())) {
                _x = ("unspecified error" : stdgo.GoString);
            };
            _r.error = _x?.__copy__();
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function writeRequest( _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec.T_clientCodec>, _r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>, _param:stdgo.AnyInterface):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec.T_clientCodec> = _c;
        _c._mutex.lock();
        _c._pending[_r.seq] = _r.serviceMethod?.__copy__();
        _c._mutex.unlock();
        _c._req.method = _r.serviceMethod?.__copy__();
        _c._req.params[(0 : stdgo.GoInt)] = _param;
        _c._req.id = _r.seq;
        return _c._enc.encode(stdgo.Go.toInterface((stdgo.Go.setRef(_c._req) : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientRequest.T_clientRequest>)));
    }
}
