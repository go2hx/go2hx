package stdgo._internal.net.rpc.jsonrpc;
@:keep @:allow(stdgo._internal.net.rpc.jsonrpc.Jsonrpc.T_clientCodec_asInterface) class T_clientCodec_static_extension {
    @:keep
    @:tdfield
    static public function close( _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientcodec.T_clientCodec>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientcodec.T_clientCodec> = _c;
        return (@:checkr _c ?? throw "null pointer dereference")._c.close();
    }
    @:keep
    @:tdfield
    static public function readResponseBody( _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientcodec.T_clientCodec>, _x:stdgo.AnyInterface):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientcodec.T_clientCodec> = _c;
        if (_x == null) {
            return (null : stdgo.Error);
        };
        return stdgo._internal.encoding.json.Json_unmarshal.unmarshal(((@:checkr _c ?? throw "null pointer dereference")._resp.result : stdgo._internal.encoding.json.Json_rawmessage.RawMessage), _x);
    }
    @:keep
    @:tdfield
    static public function readResponseHeader( _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientcodec.T_clientCodec>, _r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientcodec.T_clientCodec> = _c;
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._resp._reset();
        {
            var _err = (@:check2r (@:checkr _c ?? throw "null pointer dereference")._dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _c ?? throw "null pointer dereference")._resp) : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientresponse.T_clientResponse>)))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._mutex.lock();
        (@:checkr _r ?? throw "null pointer dereference").serviceMethod = ((@:checkr _c ?? throw "null pointer dereference")._pending[(@:checkr _c ?? throw "null pointer dereference")._resp.id] ?? ("" : stdgo.GoString))?.__copy__();
        if ((@:checkr _c ?? throw "null pointer dereference")._pending != null) (@:checkr _c ?? throw "null pointer dereference")._pending.__remove__((@:checkr _c ?? throw "null pointer dereference")._resp.id);
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._mutex.unlock();
        (@:checkr _r ?? throw "null pointer dereference").error = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        (@:checkr _r ?? throw "null pointer dereference").seq = (@:checkr _c ?? throw "null pointer dereference")._resp.id;
        if ((((@:checkr _c ?? throw "null pointer dereference")._resp.error != null) || ((@:checkr _c ?? throw "null pointer dereference")._resp.result == null || ((@:checkr _c ?? throw "null pointer dereference")._resp.result : Dynamic).__nil__) : Bool)) {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert(((@:checkr _c ?? throw "null pointer dereference")._resp.error : stdgo.GoString)) : stdgo.GoString), _1 : true };
            } catch(_) {
                { _0 : ("" : stdgo.GoString), _1 : false };
            }, _x = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("invalid error %v" : stdgo.GoString), (@:checkr _c ?? throw "null pointer dereference")._resp.error);
            };
            if (_x == ((stdgo.Go.str() : stdgo.GoString))) {
                _x = ("unspecified error" : stdgo.GoString);
            };
            (@:checkr _r ?? throw "null pointer dereference").error = _x?.__copy__();
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function writeRequest( _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientcodec.T_clientCodec>, _r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>, _param:stdgo.AnyInterface):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientcodec.T_clientCodec> = _c;
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._mutex.lock();
        (@:checkr _c ?? throw "null pointer dereference")._pending[(@:checkr _r ?? throw "null pointer dereference").seq] = (@:checkr _r ?? throw "null pointer dereference").serviceMethod?.__copy__();
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._mutex.unlock();
        (@:checkr _c ?? throw "null pointer dereference")._req.method = (@:checkr _r ?? throw "null pointer dereference").serviceMethod?.__copy__();
        (@:checkr _c ?? throw "null pointer dereference")._req.params[(0 : stdgo.GoInt)] = _param;
        (@:checkr _c ?? throw "null pointer dereference")._req.id = (@:checkr _r ?? throw "null pointer dereference").seq;
        return @:check2r (@:checkr _c ?? throw "null pointer dereference")._enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _c ?? throw "null pointer dereference")._req) : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientrequest.T_clientRequest>))));
    }
}
