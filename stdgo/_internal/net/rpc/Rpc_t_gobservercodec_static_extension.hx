package stdgo._internal.net.rpc;
@:keep @:allow(stdgo._internal.net.rpc.Rpc.T_gobServerCodec_asInterface) class T_gobServerCodec_static_extension {
    @:keep
    @:tdfield
    static public function close( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobservercodec.T_gobServerCodec>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobservercodec.T_gobServerCodec> = _c;
        if ((@:checkr _c ?? throw "null pointer dereference")._closed) {
            return (null : stdgo.Error);
        };
        (@:checkr _c ?? throw "null pointer dereference")._closed = true;
        return (@:checkr _c ?? throw "null pointer dereference")._rwc.close();
    }
    @:keep
    @:tdfield
    static public function writeResponse( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobservercodec.T_gobServerCodec>, _r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>, _body:stdgo.AnyInterface):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobservercodec.T_gobServerCodec> = _c;
        var _err = (null : stdgo.Error);
        {
            _err = @:check2r (@:checkr _c ?? throw "null pointer dereference")._enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
            if (_err != null) {
                if (@:check2r (@:checkr _c ?? throw "null pointer dereference")._encBuf.flush() == null) {
                    stdgo._internal.log.Log_println.println(stdgo.Go.toInterface(("rpc: gob error encoding response:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    @:check2r _c.close();
                };
                return _err;
            };
        };
        {
            _err = @:check2r (@:checkr _c ?? throw "null pointer dereference")._enc.encode(_body);
            if (_err != null) {
                if (@:check2r (@:checkr _c ?? throw "null pointer dereference")._encBuf.flush() == null) {
                    stdgo._internal.log.Log_println.println(stdgo.Go.toInterface(("rpc: gob error encoding body:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    @:check2r _c.close();
                };
                return _err;
            };
        };
        return _err = @:check2r (@:checkr _c ?? throw "null pointer dereference")._encBuf.flush();
    }
    @:keep
    @:tdfield
    static public function readRequestBody( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobservercodec.T_gobServerCodec>, _body:stdgo.AnyInterface):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobservercodec.T_gobServerCodec> = _c;
        return @:check2r (@:checkr _c ?? throw "null pointer dereference")._dec.decode(_body);
    }
    @:keep
    @:tdfield
    static public function readRequestHeader( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobservercodec.T_gobServerCodec>, _r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobservercodec.T_gobServerCodec> = _c;
        return @:check2r (@:checkr _c ?? throw "null pointer dereference")._dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
    }
}
