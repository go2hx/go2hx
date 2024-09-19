package stdgo._internal.net.rpc;
@:keep @:allow(stdgo._internal.net.rpc.Rpc.T_gobServerCodec_asInterface) class T_gobServerCodec_static_extension {
    @:keep
    static public function close( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobServerCodec.T_gobServerCodec>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobServerCodec.T_gobServerCodec> = _c;
        if (_c._closed) {
            return (null : stdgo.Error);
        };
        _c._closed = true;
        return _c._rwc.close();
    }
    @:keep
    static public function writeResponse( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobServerCodec.T_gobServerCodec>, _r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>, _body:stdgo.AnyInterface):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobServerCodec.T_gobServerCodec> = _c;
        var _err = (null : stdgo.Error);
        {
            _err = _c._enc.encode(stdgo.Go.toInterface(_r));
            if (_err != null) {
                if (_c._encBuf.flush() == null) {
                    stdgo._internal.log.Log_println.println(stdgo.Go.toInterface(("rpc: gob error encoding response:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    _c.close();
                };
                return _err;
            };
        };
        {
            _err = _c._enc.encode(_body);
            if (_err != null) {
                if (_c._encBuf.flush() == null) {
                    stdgo._internal.log.Log_println.println(stdgo.Go.toInterface(("rpc: gob error encoding body:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    _c.close();
                };
                return _err;
            };
        };
        return _c._encBuf.flush();
    }
    @:keep
    static public function readRequestBody( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobServerCodec.T_gobServerCodec>, _body:stdgo.AnyInterface):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobServerCodec.T_gobServerCodec> = _c;
        return _c._dec.decode(_body);
    }
    @:keep
    static public function readRequestHeader( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobServerCodec.T_gobServerCodec>, _r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobServerCodec.T_gobServerCodec> = _c;
        return _c._dec.decode(stdgo.Go.toInterface(_r));
    }
}
