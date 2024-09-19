package stdgo._internal.net.rpc;
@:keep @:allow(stdgo._internal.net.rpc.Rpc.T_gobClientCodec_asInterface) class T_gobClientCodec_static_extension {
    @:keep
    static public function close( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec> = _c;
        return _c._rwc.close();
    }
    @:keep
    static public function readResponseBody( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec>, _body:stdgo.AnyInterface):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec> = _c;
        return _c._dec.decode(_body);
    }
    @:keep
    static public function readResponseHeader( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec>, _r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec> = _c;
        return _c._dec.decode(stdgo.Go.toInterface(_r));
    }
    @:keep
    static public function writeRequest( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec>, _r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>, _body:stdgo.AnyInterface):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec> = _c;
        var _err = (null : stdgo.Error);
        {
            _err = _c._enc.encode(stdgo.Go.toInterface(_r));
            if (_err != null) {
                return _err;
            };
        };
        {
            _err = _c._enc.encode(_body);
            if (_err != null) {
                return _err;
            };
        };
        return _c._encBuf.flush();
    }
}
