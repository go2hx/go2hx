package stdgo._internal.net.rpc;
@:keep @:allow(stdgo._internal.net.rpc.Rpc.T_gobClientCodec_asInterface) class T_gobClientCodec_static_extension {
    @:keep
    @:tdfield
    static public function close( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobclientcodec.T_gobClientCodec>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobclientcodec.T_gobClientCodec> = _c;
        return (@:checkr _c ?? throw "null pointer dereference")._rwc.close();
    }
    @:keep
    @:tdfield
    static public function readResponseBody( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobclientcodec.T_gobClientCodec>, _body:stdgo.AnyInterface):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobclientcodec.T_gobClientCodec> = _c;
        return @:check2r (@:checkr _c ?? throw "null pointer dereference")._dec.decode(_body);
    }
    @:keep
    @:tdfield
    static public function readResponseHeader( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobclientcodec.T_gobClientCodec>, _r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobclientcodec.T_gobClientCodec> = _c;
        return @:check2r (@:checkr _c ?? throw "null pointer dereference")._dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
    }
    @:keep
    @:tdfield
    static public function writeRequest( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobclientcodec.T_gobClientCodec>, _r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>, _body:stdgo.AnyInterface):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobclientcodec.T_gobClientCodec> = _c;
        var _err = (null : stdgo.Error);
        {
            _err = @:check2r (@:checkr _c ?? throw "null pointer dereference")._enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
            if (_err != null) {
                return _err;
            };
        };
        {
            _err = @:check2r (@:checkr _c ?? throw "null pointer dereference")._enc.encode(_body);
            if (_err != null) {
                return _err;
            };
        };
        return _err = @:check2r (@:checkr _c ?? throw "null pointer dereference")._encBuf.flush();
    }
}
