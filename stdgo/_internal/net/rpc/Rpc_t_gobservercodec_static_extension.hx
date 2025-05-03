package stdgo._internal.net.rpc;
@:keep @:allow(stdgo._internal.net.rpc.Rpc.T_gobServerCodec_asInterface) class T_gobServerCodec_static_extension {
    @:keep
    @:tdfield
    static public function close( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobservercodec.T_gobServerCodec>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobservercodec.T_gobServerCodec> = _c;
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L432"
        if ((@:checkr _c ?? throw "null pointer dereference")._closed) {
            //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L434"
            return (null : stdgo.Error);
        };
        (@:checkr _c ?? throw "null pointer dereference")._closed = true;
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L437"
        return (@:checkr _c ?? throw "null pointer dereference")._rwc.close();
    }
    @:keep
    @:tdfield
    static public function writeResponse( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobservercodec.T_gobServerCodec>, _r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>, _body:stdgo.AnyInterface):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobservercodec.T_gobServerCodec> = _c;
        var _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L410"
        {
            _err = (@:checkr _c ?? throw "null pointer dereference")._enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L411"
                if ((@:checkr _c ?? throw "null pointer dereference")._encBuf.flush() == null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L414"
                    stdgo._internal.log.Log_println.println(stdgo.Go.toInterface(("rpc: gob error encoding response:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L415"
                    _c.close();
                };
                //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L417"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L419"
        {
            _err = (@:checkr _c ?? throw "null pointer dereference")._enc.encode(_body);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L420"
                if ((@:checkr _c ?? throw "null pointer dereference")._encBuf.flush() == null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L423"
                    stdgo._internal.log.Log_println.println(stdgo.Go.toInterface(("rpc: gob error encoding body:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L424"
                    _c.close();
                };
                //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L426"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L428"
        return _err = (@:checkr _c ?? throw "null pointer dereference")._encBuf.flush();
    }
    @:keep
    @:tdfield
    static public function readRequestBody( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobservercodec.T_gobServerCodec>, _body:stdgo.AnyInterface):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobservercodec.T_gobServerCodec> = _c;
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L406"
        return (@:checkr _c ?? throw "null pointer dereference")._dec.decode(_body);
    }
    @:keep
    @:tdfield
    static public function readRequestHeader( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobservercodec.T_gobServerCodec>, _r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobservercodec.T_gobServerCodec> = _c;
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L402"
        return (@:checkr _c ?? throw "null pointer dereference")._dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
    }
}
