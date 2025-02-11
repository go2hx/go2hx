package stdgo._internal.net.rpc.jsonrpc;
@:keep @:allow(stdgo._internal.net.rpc.jsonrpc.Jsonrpc.T_serverCodec_asInterface) class T_serverCodec_static_extension {
    @:keep
    @:tdfield
    static public function close( _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec.T_serverCodec>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec.T_serverCodec> = _c;
        return (@:checkr _c ?? throw "null pointer dereference")._c.close();
    }
    @:keep
    @:tdfield
    static public function writeResponse( _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec.T_serverCodec>, _r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>, _x:stdgo.AnyInterface):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec.T_serverCodec> = _c;
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._mutex.lock();
        var __tmp__ = ((@:checkr _c ?? throw "null pointer dereference")._pending != null && (@:checkr _c ?? throw "null pointer dereference")._pending.__exists__((@:checkr _r ?? throw "null pointer dereference").seq) ? { _0 : (@:checkr _c ?? throw "null pointer dereference")._pending[(@:checkr _r ?? throw "null pointer dereference").seq], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>), _1 : false }), _b:stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            @:check2 (@:checkr _c ?? throw "null pointer dereference")._mutex.unlock();
            return stdgo._internal.errors.Errors_new_.new_(("invalid sequence number in response" : stdgo.GoString));
        };
        if ((@:checkr _c ?? throw "null pointer dereference")._pending != null) (@:checkr _c ?? throw "null pointer dereference")._pending.__remove__((@:checkr _r ?? throw "null pointer dereference").seq);
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._mutex.unlock();
        if ((_b == null || (_b : Dynamic).__nil__)) {
            _b = (stdgo.Go.setRef(nil) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>);
        };
        var _resp = ({ id : _b } : stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_serverresponse.T_serverResponse);
        if ((@:checkr _r ?? throw "null pointer dereference").error == ((stdgo.Go.str() : stdgo.GoString))) {
            _resp.result = _x;
        } else {
            _resp.error = stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference").error);
        };
        return @:check2r (@:checkr _c ?? throw "null pointer dereference")._enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_resp)));
    }
    @:keep
    @:tdfield
    static public function readRequestBody( _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec.T_serverCodec>, _x:stdgo.AnyInterface):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec.T_serverCodec> = _c;
        if (_x == null) {
            return (null : stdgo.Error);
        };
        if (((@:checkr _c ?? throw "null pointer dereference")._req.params == null || ((@:checkr _c ?? throw "null pointer dereference")._req.params : Dynamic).__nil__)) {
            return stdgo._internal.net.rpc.jsonrpc.Jsonrpc__errmissingparams._errMissingParams;
        };
        var _params:stdgo.GoArray<stdgo.AnyInterface> = new stdgo.GoArray<stdgo.AnyInterface>(1, 1);
        _params[(0 : stdgo.GoInt)] = _x;
        return stdgo._internal.encoding.json.Json_unmarshal.unmarshal(((@:checkr _c ?? throw "null pointer dereference")._req.params : stdgo._internal.encoding.json.Json_rawmessage.RawMessage), stdgo.Go.toInterface((stdgo.Go.setRef(_params) : stdgo.Ref<stdgo.GoArray<stdgo.AnyInterface>>)));
    }
    @:keep
    @:tdfield
    static public function readRequestHeader( _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec.T_serverCodec>, _r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec.T_serverCodec> = _c;
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._req._reset();
        {
            var _err = (@:check2r (@:checkr _c ?? throw "null pointer dereference")._dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _c ?? throw "null pointer dereference")._req) : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_serverrequest.T_serverRequest>)))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        (@:checkr _r ?? throw "null pointer dereference").serviceMethod = (@:checkr _c ?? throw "null pointer dereference")._req.method?.__copy__();
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._mutex.lock();
        (@:checkr _c ?? throw "null pointer dereference")._seq++;
        (@:checkr _c ?? throw "null pointer dereference")._pending[(@:checkr _c ?? throw "null pointer dereference")._seq] = (@:checkr _c ?? throw "null pointer dereference")._req.id;
        (@:checkr _c ?? throw "null pointer dereference")._req.id = null;
        (@:checkr _r ?? throw "null pointer dereference").seq = (@:checkr _c ?? throw "null pointer dereference")._seq;
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._mutex.unlock();
        return (null : stdgo.Error);
    }
}
