package stdgo._internal.net.rpc.jsonrpc;
@:keep @:allow(stdgo._internal.net.rpc.jsonrpc.Jsonrpc.T_serverCodec_asInterface) class T_serverCodec_static_extension {
    @:keep
    static public function close( _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec.T_serverCodec>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec.T_serverCodec> = _c;
        return _c._c.close();
    }
    @:keep
    static public function writeResponse( _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec.T_serverCodec>, _r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>, _x:stdgo.AnyInterface):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec.T_serverCodec> = _c;
        _c._mutex.lock();
        var __tmp__ = (_c._pending != null && _c._pending.exists(_r.seq) ? { _0 : _c._pending[_r.seq], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>), _1 : false }), _b:stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _c._mutex.unlock();
            return stdgo._internal.errors.Errors_new_.new_(("invalid sequence number in response" : stdgo.GoString));
        };
        if (_c._pending != null) _c._pending.remove(_r.seq);
        _c._mutex.unlock();
        if ((_b == null || (_b : Dynamic).__nil__)) {
            _b = (stdgo.Go.setRef(nil) : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>);
        };
        var _resp = ({ id : _b } : stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverResponse.T_serverResponse);
        if (_r.error == (stdgo.Go.str())) {
            _resp.result = _x;
        } else {
            _resp.error = stdgo.Go.toInterface(_r.error);
        };
        return _c._enc.encode(stdgo.Go.toInterface(_resp));
    }
    @:keep
    static public function readRequestBody( _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec.T_serverCodec>, _x:stdgo.AnyInterface):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec.T_serverCodec> = _c;
        if (_x == null) {
            return (null : stdgo.Error);
        };
        if ((_c._req.params == null || (_c._req.params : Dynamic).__nil__)) {
            return stdgo._internal.net.rpc.jsonrpc.Jsonrpc__errMissingParams._errMissingParams;
        };
        var _params:stdgo.GoArray<stdgo.AnyInterface> = new stdgo.GoArray<stdgo.AnyInterface>(1, 1, ...[for (i in 0 ... 1) (null : stdgo.AnyInterface)]);
        _params[(0 : stdgo.GoInt)] = _x;
        return stdgo._internal.encoding.json.Json_unmarshal.unmarshal((_c._req.params : stdgo._internal.encoding.json.Json_RawMessage.RawMessage), stdgo.Go.toInterface((stdgo.Go.setRef(_params) : stdgo.Ref<stdgo.GoArray<stdgo.AnyInterface>>)));
    }
    @:keep
    static public function readRequestHeader( _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec.T_serverCodec>, _r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec.T_serverCodec> = _c;
        _c._req._reset();
        {
            var _err = (_c._dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_c._req) : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverRequest.T_serverRequest>)))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _r.serviceMethod = _c._req.method?.__copy__();
        _c._mutex.lock();
        _c._seq++;
        _c._pending[_c._seq] = _c._req.id;
        _c._req.id = null;
        _r.seq = _c._seq;
        _c._mutex.unlock();
        return (null : stdgo.Error);
    }
}
