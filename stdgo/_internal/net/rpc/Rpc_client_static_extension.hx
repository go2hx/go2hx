package stdgo._internal.net.rpc;
@:keep @:allow(stdgo._internal.net.rpc.Rpc.Client_asInterface) class Client_static_extension {
    @:keep
    @:tdfield
    static public function call( _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client>, _serviceMethod:stdgo.GoString, _args:stdgo.AnyInterface, _reply:stdgo.AnyInterface):stdgo.Error {
        @:recv var _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client> = _client;
        var _call = @:check2r _client.go(_serviceMethod?.__copy__(), _args, _reply, (new stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>)) : stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>>)).done.__get__();
        return (@:checkr _call ?? throw "null pointer dereference").error;
    }
    @:keep
    @:tdfield
    static public function go( _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client>, _serviceMethod:stdgo.GoString, _args:stdgo.AnyInterface, _reply:stdgo.AnyInterface, _done:stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>>):stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call> {
        @:recv var _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client> = _client;
        var _call = (stdgo.Go.setRef(({} : stdgo._internal.net.rpc.Rpc_call.Call)) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>);
        (@:checkr _call ?? throw "null pointer dereference").serviceMethod = _serviceMethod?.__copy__();
        (@:checkr _call ?? throw "null pointer dereference").args = _args;
        (@:checkr _call ?? throw "null pointer dereference").reply = _reply;
        if (_done == null) {
            _done = (new stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>>((10 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>)) : stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>>);
        } else {
            if (_done.capacity == ((0 : stdgo.GoInt))) {
                stdgo._internal.log.Log_panic.panic(stdgo.Go.toInterface(("rpc: done channel is unbuffered" : stdgo.GoString)));
            };
        };
        (@:checkr _call ?? throw "null pointer dereference").done = _done;
        @:check2r _client._send(_call);
        return _call;
    }
    @:keep
    @:tdfield
    static public function close( _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client>):stdgo.Error {
        @:recv var _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client> = _client;
        @:check2 (@:checkr _client ?? throw "null pointer dereference")._mutex.lock();
        if ((@:checkr _client ?? throw "null pointer dereference")._closing) {
            @:check2 (@:checkr _client ?? throw "null pointer dereference")._mutex.unlock();
            return stdgo._internal.net.rpc.Rpc_errshutdown.errShutdown;
        };
        (@:checkr _client ?? throw "null pointer dereference")._closing = true;
        @:check2 (@:checkr _client ?? throw "null pointer dereference")._mutex.unlock();
        return (@:checkr _client ?? throw "null pointer dereference")._codec.close();
    }
    @:keep
    @:tdfield
    static public function _input( _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client>):Void {
        @:recv var _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client> = _client;
        var _err:stdgo.Error = (null : stdgo.Error);
        var _response:stdgo._internal.net.rpc.Rpc_response.Response = ({} : stdgo._internal.net.rpc.Rpc_response.Response);
        while (_err == null) {
            _response = (new stdgo._internal.net.rpc.Rpc_response.Response() : stdgo._internal.net.rpc.Rpc_response.Response);
            _err = (@:checkr _client ?? throw "null pointer dereference")._codec.readResponseHeader((stdgo.Go.setRef(_response) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>));
            if (_err != null) {
                break;
            };
            var _seq = (_response.seq : stdgo.GoUInt64);
            @:check2 (@:checkr _client ?? throw "null pointer dereference")._mutex.lock();
            var _call = ((@:checkr _client ?? throw "null pointer dereference")._pending[_seq] ?? (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>));
            if ((@:checkr _client ?? throw "null pointer dereference")._pending != null) (@:checkr _client ?? throw "null pointer dereference")._pending.__remove__(_seq);
            @:check2 (@:checkr _client ?? throw "null pointer dereference")._mutex.unlock();
            if ((_call == null || (_call : Dynamic).__nil__)) {
                _err = (@:checkr _client ?? throw "null pointer dereference")._codec.readResponseBody((null : stdgo.AnyInterface));
                if (_err != null) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("reading error body: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
                };
            } else if (_response.error != ((stdgo.Go.str() : stdgo.GoString))) {
                (@:checkr _call ?? throw "null pointer dereference").error = stdgo.Go.asInterface((_response.error : stdgo._internal.net.rpc.Rpc_servererror.ServerError));
                _err = (@:checkr _client ?? throw "null pointer dereference")._codec.readResponseBody((null : stdgo.AnyInterface));
                if (_err != null) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("reading error body: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
                };
                @:check2r _call._done();
            } else {
                _err = (@:checkr _client ?? throw "null pointer dereference")._codec.readResponseBody((@:checkr _call ?? throw "null pointer dereference").reply);
                if (_err != null) {
                    (@:checkr _call ?? throw "null pointer dereference").error = stdgo._internal.errors.Errors_new_.new_((("reading body " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
                };
                @:check2r _call._done();
            };
        };
        @:check2 (@:checkr _client ?? throw "null pointer dereference")._reqMutex.lock();
        @:check2 (@:checkr _client ?? throw "null pointer dereference")._mutex.lock();
        (@:checkr _client ?? throw "null pointer dereference")._shutdown = true;
        var _closing = ((@:checkr _client ?? throw "null pointer dereference")._closing : Bool);
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            if (_closing) {
                _err = stdgo._internal.net.rpc.Rpc_errshutdown.errShutdown;
            } else {
                _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
            };
        };
        for (__8 => _call in (@:checkr _client ?? throw "null pointer dereference")._pending) {
            (@:checkr _call ?? throw "null pointer dereference").error = _err;
            @:check2r _call._done();
        };
        @:check2 (@:checkr _client ?? throw "null pointer dereference")._mutex.unlock();
        @:check2 (@:checkr _client ?? throw "null pointer dereference")._reqMutex.unlock();
        if (((stdgo._internal.net.rpc.Rpc__debuglog._debugLog && stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool) && !_closing : Bool)) {
            stdgo._internal.log.Log_println.println(stdgo.Go.toInterface(("rpc: client protocol error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
    }
    @:keep
    @:tdfield
    static public function _send( _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client>, _call:stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>):Void {
        @:recv var _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client> = _client;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _client ?? throw "null pointer dereference")._reqMutex.lock();
            {
                final __f__ = @:check2 (@:checkr _client ?? throw "null pointer dereference")._reqMutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            @:check2 (@:checkr _client ?? throw "null pointer dereference")._mutex.lock();
            if (((@:checkr _client ?? throw "null pointer dereference")._shutdown || (@:checkr _client ?? throw "null pointer dereference")._closing : Bool)) {
                @:check2 (@:checkr _client ?? throw "null pointer dereference")._mutex.unlock();
                (@:checkr _call ?? throw "null pointer dereference").error = stdgo._internal.net.rpc.Rpc_errshutdown.errShutdown;
                @:check2r _call._done();
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            var _seq = ((@:checkr _client ?? throw "null pointer dereference")._seq : stdgo.GoUInt64);
            (@:checkr _client ?? throw "null pointer dereference")._seq++;
            (@:checkr _client ?? throw "null pointer dereference")._pending[_seq] = _call;
            @:check2 (@:checkr _client ?? throw "null pointer dereference")._mutex.unlock();
            (@:checkr _client ?? throw "null pointer dereference")._request.seq = _seq;
            (@:checkr _client ?? throw "null pointer dereference")._request.serviceMethod = (@:checkr _call ?? throw "null pointer dereference").serviceMethod?.__copy__();
            var _err = ((@:checkr _client ?? throw "null pointer dereference")._codec.writeRequest((stdgo.Go.setRef((@:checkr _client ?? throw "null pointer dereference")._request) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>), (@:checkr _call ?? throw "null pointer dereference").args) : stdgo.Error);
            if (_err != null) {
                @:check2 (@:checkr _client ?? throw "null pointer dereference")._mutex.lock();
                _call = ((@:checkr _client ?? throw "null pointer dereference")._pending[_seq] ?? (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>));
                if ((@:checkr _client ?? throw "null pointer dereference")._pending != null) (@:checkr _client ?? throw "null pointer dereference")._pending.__remove__(_seq);
                @:check2 (@:checkr _client ?? throw "null pointer dereference")._mutex.unlock();
                if ((_call != null && ((_call : Dynamic).__nil__ == null || !(_call : Dynamic).__nil__))) {
                    (@:checkr _call ?? throw "null pointer dereference").error = _err;
                    @:check2r _call._done();
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
}
