package stdgo._internal.net.rpc;
@:keep @:allow(stdgo._internal.net.rpc.Rpc.T_gobClientCodec_asInterface) class T_gobClientCodec_static_extension {
    @:keep
    @:tdfield
    static public function close( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobclientcodec.T_gobClientCodec>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobclientcodec.T_gobClientCodec> = _c;
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L236"
        return (@:checkr _c ?? throw "null pointer dereference")._rwc.close();
    }
    @:keep
    @:tdfield
    static public function readResponseBody( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobclientcodec.T_gobClientCodec>, _body:stdgo.AnyInterface):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobclientcodec.T_gobClientCodec> = _c;
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L232"
        return (@:checkr _c ?? throw "null pointer dereference")._dec.decode(_body);
    }
    @:keep
    @:tdfield
    static public function readResponseHeader( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobclientcodec.T_gobClientCodec>, _r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobclientcodec.T_gobClientCodec> = _c;
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L228"
        return (@:checkr _c ?? throw "null pointer dereference")._dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
    }
    @:keep
    @:tdfield
    static public function writeRequest( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobclientcodec.T_gobClientCodec>, _r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>, _body:stdgo.AnyInterface):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobclientcodec.T_gobClientCodec> = _c;
        var _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L218"
        {
            _err = (@:checkr _c ?? throw "null pointer dereference")._enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L219"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L221"
        {
            _err = (@:checkr _c ?? throw "null pointer dereference")._enc.encode(_body);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L222"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L224"
        return _err = (@:checkr _c ?? throw "null pointer dereference")._encBuf.flush();
    }
}
