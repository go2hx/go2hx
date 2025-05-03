package stdgo._internal.net.rpc.jsonrpc;
@:keep @:allow(stdgo._internal.net.rpc.jsonrpc.Jsonrpc.T_serverCodec_asInterface) class T_serverCodec_static_extension {
    @:keep
    @:tdfield
    static public function close( _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec.T_serverCodec>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec.T_serverCodec> = _c;
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/jsonrpc/server.go#L126"
        return (@:checkr _c ?? throw "null pointer dereference")._c.close();
    }
    @:keep
    @:tdfield
    static public function writeResponse( _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec.T_serverCodec>, _r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>, _x:stdgo.AnyInterface):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec.T_serverCodec> = _c;
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/jsonrpc/server.go#L103"
        (@:checkr _c ?? throw "null pointer dereference")._mutex.lock();
        var __tmp__ = ((@:checkr _c ?? throw "null pointer dereference")._pending != null && (@:checkr _c ?? throw "null pointer dereference")._pending.__exists__((@:checkr _r ?? throw "null pointer dereference").seq) ? { _0 : (@:checkr _c ?? throw "null pointer dereference")._pending[(@:checkr _r ?? throw "null pointer dereference").seq], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>), _1 : false }), _b:stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage> = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/jsonrpc/server.go#L105"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/net/rpc/jsonrpc/server.go#L106"
            (@:checkr _c ?? throw "null pointer dereference")._mutex.unlock();
            //"file:///home/runner/.go/go1.21.3/src/net/rpc/jsonrpc/server.go#L107"
            return stdgo._internal.errors.Errors_new_.new_(("invalid sequence number in response" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/jsonrpc/server.go#L109"
        if ((@:checkr _c ?? throw "null pointer dereference")._pending != null) (@:checkr _c ?? throw "null pointer dereference")._pending.__remove__((@:checkr _r ?? throw "null pointer dereference").seq);
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/jsonrpc/server.go#L110"
        (@:checkr _c ?? throw "null pointer dereference")._mutex.unlock();
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/jsonrpc/server.go#L112"
        if (({
            final value = _b;
            (value == null || (value : Dynamic).__nil__);
        })) {
            _b = (stdgo.Go.setRef(nil) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>);
        };
        var _resp = ({ id : _b } : stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_serverresponse.T_serverResponse);
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/jsonrpc/server.go#L117"
        if ((@:checkr _r ?? throw "null pointer dereference").error == ((stdgo.Go.str() : stdgo.GoString))) {
            _resp.result = _x;
        } else {
            _resp.error = stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference").error);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/jsonrpc/server.go#L122"
        return (@:checkr _c ?? throw "null pointer dereference")._enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_resp)));
    }
    @:keep
    @:tdfield
    static public function readRequestBody( _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec.T_serverCodec>, _x:stdgo.AnyInterface):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec.T_serverCodec> = _c;
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/jsonrpc/server.go#L85"
        if (_x == null) {
            //"file:///home/runner/.go/go1.21.3/src/net/rpc/jsonrpc/server.go#L86"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/jsonrpc/server.go#L88"
        if (({
            final value = (@:checkr _c ?? throw "null pointer dereference")._req.params;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/net/rpc/jsonrpc/server.go#L89"
            return stdgo._internal.net.rpc.jsonrpc.Jsonrpc__errmissingparams._errMissingParams;
        };
        var _params:stdgo.GoArray<stdgo.AnyInterface> = new stdgo.GoArray<stdgo.AnyInterface>(1, 1);
        _params[(0 : stdgo.GoInt)] = _x;
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/jsonrpc/server.go#L97"
        return stdgo._internal.encoding.json.Json_unmarshal.unmarshal(((@:checkr _c ?? throw "null pointer dereference")._req.params : stdgo._internal.encoding.json.Json_rawmessage.RawMessage), stdgo.Go.toInterface((stdgo.Go.setRef(_params) : stdgo.Ref<stdgo.GoArray<stdgo.AnyInterface>>)));
    }
    @:keep
    @:tdfield
    static public function readRequestHeader( _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec.T_serverCodec>, _r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec.T_serverCodec> = _c;
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/jsonrpc/server.go#L65"
        (@:checkr _c ?? throw "null pointer dereference")._req._reset();
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/jsonrpc/server.go#L66"
        {
            var _err = ((@:checkr _c ?? throw "null pointer dereference")._dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _c ?? throw "null pointer dereference")._req) : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_serverrequest.T_serverRequest>)))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/rpc/jsonrpc/server.go#L67"
                return _err;
            };
        };
        (@:checkr _r ?? throw "null pointer dereference").serviceMethod = (@:checkr _c ?? throw "null pointer dereference")._req.method?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/jsonrpc/server.go#L74"
        (@:checkr _c ?? throw "null pointer dereference")._mutex.lock();
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/jsonrpc/server.go#L75"
        (@:checkr _c ?? throw "null pointer dereference")._seq++;
        (@:checkr _c ?? throw "null pointer dereference")._pending[(@:checkr _c ?? throw "null pointer dereference")._seq] = (@:checkr _c ?? throw "null pointer dereference")._req.id;
        (@:checkr _c ?? throw "null pointer dereference")._req.id = null;
        (@:checkr _r ?? throw "null pointer dereference").seq = (@:checkr _c ?? throw "null pointer dereference")._seq;
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/jsonrpc/server.go#L79"
        (@:checkr _c ?? throw "null pointer dereference")._mutex.unlock();
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/jsonrpc/server.go#L81"
        return (null : stdgo.Error);
    }
}
