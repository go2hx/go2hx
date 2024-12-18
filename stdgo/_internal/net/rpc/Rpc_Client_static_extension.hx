package stdgo._internal.net.rpc;
@:keep @:allow(stdgo._internal.net.rpc.Rpc.Client_asInterface) class Client_static_extension {
    @:keep
    static public function call( _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client>, _serviceMethod:stdgo.GoString, _args:stdgo.AnyInterface, _reply:stdgo.AnyInterface):stdgo.Error {
        @:recv var _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client> = _client;
        var _call = _client.go(_serviceMethod?.__copy__(), _args, _reply, (new stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>)) : stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>)).done.__get__();
        return _call.error;
    }
    @:keep
    static public function go( _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client>, _serviceMethod:stdgo.GoString, _args:stdgo.AnyInterface, _reply:stdgo.AnyInterface, _done:stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>):stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call> {
        @:recv var _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client> = _client;
        var _call = (stdgo.Go.setRef(({} : stdgo._internal.net.rpc.Rpc_Call.Call)) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>);
        _call.serviceMethod = _serviceMethod?.__copy__();
        _call.args = _args;
        _call.reply = _reply;
        if (_done == null) {
            _done = (new stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>((10 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>)) : stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>);
        } else {
            if (_done.capacity == ((0 : stdgo.GoInt))) {
                stdgo._internal.log.Log_panic.panic(stdgo.Go.toInterface(("rpc: done channel is unbuffered" : stdgo.GoString)));
            };
        };
        _call.done = _done;
        _client._send(_call);
        return _call;
    }
    @:keep
    static public function close( _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client>):stdgo.Error {
        @:recv var _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client> = _client;
        _client._mutex.lock();
        if (_client._closing) {
            _client._mutex.unlock();
            return stdgo._internal.net.rpc.Rpc_errShutdown.errShutdown;
        };
        _client._closing = true;
        _client._mutex.unlock();
        return _client._codec.close();
    }
    @:keep
    static public function _input( _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client>):Void {
        @:recv var _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client> = _client;
        var _err:stdgo.Error = (null : stdgo.Error);
        var _response:stdgo._internal.net.rpc.Rpc_Response.Response = ({} : stdgo._internal.net.rpc.Rpc_Response.Response);
        while (_err == null) {
            _response = (new stdgo._internal.net.rpc.Rpc_Response.Response() : stdgo._internal.net.rpc.Rpc_Response.Response);
            _err = _client._codec.readResponseHeader((stdgo.Go.setRef(_response) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>));
            if (_err != null) {
                break;
            };
            var _seq = (_response.seq : stdgo.GoUInt64);
            _client._mutex.lock();
            var _call = (_client._pending[_seq] ?? (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>));
            if (_client._pending != null) _client._pending.remove(_seq);
            _client._mutex.unlock();
            if ((_call == null || (_call : Dynamic).__nil__)) {
                _err = _client._codec.readResponseBody((null : stdgo.AnyInterface));
                if (_err != null) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("reading error body: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
                };
            } else if (_response.error != (stdgo.Go.str())) {
                _call.error = stdgo.Go.asInterface((_response.error : stdgo._internal.net.rpc.Rpc_ServerError.ServerError));
                _err = _client._codec.readResponseBody((null : stdgo.AnyInterface));
                if (_err != null) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("reading error body: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
                };
                _call._done();
            } else {
                _err = _client._codec.readResponseBody(_call.reply);
                if (_err != null) {
                    _call.error = stdgo._internal.errors.Errors_new_.new_((("reading body " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
                };
                _call._done();
            };
        };
        _client._reqMutex.lock();
        _client._mutex.lock();
        _client._shutdown = true;
        var _closing = (_client._closing : Bool);
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            if (_closing) {
                _err = stdgo._internal.net.rpc.Rpc_errShutdown.errShutdown;
            } else {
                _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
            };
        };
        for (__8 => _call in _client._pending) {
            _call.error = _err;
            _call._done();
        };
        _client._mutex.unlock();
        _client._reqMutex.unlock();
        if (((stdgo._internal.net.rpc.Rpc__debugLog._debugLog && stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool) && !_closing : Bool)) {
            stdgo._internal.log.Log_println.println(stdgo.Go.toInterface(("rpc: client protocol error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
    }
    @:keep
    static public function _send( _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client>, _call:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>):Void {
        @:recv var _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client> = _client;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _client._reqMutex.lock();
            {
                final __f__ = _client._reqMutex.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            _client._mutex.lock();
            if ((_client._shutdown || _client._closing : Bool)) {
                _client._mutex.unlock();
                _call.error = stdgo._internal.net.rpc.Rpc_errShutdown.errShutdown;
                _call._done();
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            var _seq = (_client._seq : stdgo.GoUInt64);
            _client._seq++;
            _client._pending[_seq] = _call;
            _client._mutex.unlock();
            _client._request.seq = _seq;
            _client._request.serviceMethod = _call.serviceMethod?.__copy__();
            var _err = (_client._codec.writeRequest((stdgo.Go.setRef(_client._request) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>), _call.args) : stdgo.Error);
            if (_err != null) {
                _client._mutex.lock();
                _call = (_client._pending[_seq] ?? (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>));
                if (_client._pending != null) _client._pending.remove(_seq);
                _client._mutex.unlock();
                if ((_call != null && ((_call : Dynamic).__nil__ == null || !(_call : Dynamic).__nil__))) {
                    _call.error = _err;
                    _call._done();
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
}
