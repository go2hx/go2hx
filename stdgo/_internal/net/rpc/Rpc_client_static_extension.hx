package stdgo._internal.net.rpc;
@:keep @:allow(stdgo._internal.net.rpc.Rpc.Client_asInterface) class Client_static_extension {
    @:keep
    @:tdfield
    static public function call( _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client>, _serviceMethod:stdgo.GoString, _args:stdgo.AnyInterface, _reply:stdgo.AnyInterface):stdgo.Error {
        @:recv var _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client> = _client;
        var _call = _client.go(_serviceMethod?.__copy__(), _args, _reply, (new stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>)) : stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>>)).done.__get__();
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L322"
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
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L303"
        if (_done == null) {
            _done = (new stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>>((10 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>)) : stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>>);
        } else {
            //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L310"
            if (_done.capacity == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L311"
                stdgo._internal.log.Log_panic.panic(stdgo.Go.toInterface(("rpc: done channel is unbuffered" : stdgo.GoString)));
            };
        };
        (@:checkr _call ?? throw "null pointer dereference").done = _done;
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L315"
        _client._send(_call);
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L316"
        return _call;
    }
    @:keep
    @:tdfield
    static public function close( _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client>):stdgo.Error {
        @:recv var _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client> = _client;
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L284"
        (@:checkr _client ?? throw "null pointer dereference")._mutex.lock();
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L285"
        if ((@:checkr _client ?? throw "null pointer dereference")._closing) {
            //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L286"
            (@:checkr _client ?? throw "null pointer dereference")._mutex.unlock();
            //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L287"
            return stdgo._internal.net.rpc.Rpc_errshutdown.errShutdown;
        };
        (@:checkr _client ?? throw "null pointer dereference")._closing = true;
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L290"
        (@:checkr _client ?? throw "null pointer dereference")._mutex.unlock();
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L291"
        return (@:checkr _client ?? throw "null pointer dereference")._codec.close();
    }
    @:keep
    @:tdfield
    static public function _input( _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client>):Void {
        @:recv var _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client> = _client;
        var _err:stdgo.Error = (null : stdgo.Error);
        var _response:stdgo._internal.net.rpc.Rpc_response.Response = ({} : stdgo._internal.net.rpc.Rpc_response.Response);
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L107"
        while (_err == null) {
            _response = (new stdgo._internal.net.rpc.Rpc_response.Response() : stdgo._internal.net.rpc.Rpc_response.Response);
            _err = (@:checkr _client ?? throw "null pointer dereference")._codec.readResponseHeader((stdgo.Go.setRef(_response) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>));
            //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L110"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L111"
                break;
            };
            var _seq = (_response.seq : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L114"
            (@:checkr _client ?? throw "null pointer dereference")._mutex.lock();
            var _call = ((@:checkr _client ?? throw "null pointer dereference")._pending[_seq] ?? (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>));
            //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L116"
            if ((@:checkr _client ?? throw "null pointer dereference")._pending != null) (@:checkr _client ?? throw "null pointer dereference")._pending.__remove__(_seq);
            //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L117"
            (@:checkr _client ?? throw "null pointer dereference")._mutex.unlock();
            //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L119"
            if (({
                final value = _call;
                (value == null || (value : Dynamic).__nil__);
            })) {
                _err = (@:checkr _client ?? throw "null pointer dereference")._codec.readResponseBody((null : stdgo.AnyInterface));
                //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L127"
                if (_err != null) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("reading error body: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
                };
            } else if (_response.error != ((stdgo.Go.str() : stdgo.GoString))) {
                (@:checkr _call ?? throw "null pointer dereference").error = stdgo.Go.asInterface((_response.error : stdgo._internal.net.rpc.Rpc_servererror.ServerError));
                _err = (@:checkr _client ?? throw "null pointer dereference")._codec.readResponseBody((null : stdgo.AnyInterface));
                //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L136"
                if (_err != null) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("reading error body: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
                };
                //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L139"
                _call._done();
            } else {
                _err = (@:checkr _client ?? throw "null pointer dereference")._codec.readResponseBody((@:checkr _call ?? throw "null pointer dereference").reply);
                //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L142"
                if (_err != null) {
                    (@:checkr _call ?? throw "null pointer dereference").error = stdgo._internal.errors.Errors_new_.new_((("reading body " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
                };
                //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L145"
                _call._done();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L149"
        (@:checkr _client ?? throw "null pointer dereference")._reqMutex.lock();
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L150"
        (@:checkr _client ?? throw "null pointer dereference")._mutex.lock();
        (@:checkr _client ?? throw "null pointer dereference")._shutdown = true;
        var _closing = ((@:checkr _client ?? throw "null pointer dereference")._closing : Bool);
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L153"
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L154"
            if (_closing) {
                _err = stdgo._internal.net.rpc.Rpc_errshutdown.errShutdown;
            } else {
                _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L160"
        for (__8 => _call in (@:checkr _client ?? throw "null pointer dereference")._pending) {
            (@:checkr _call ?? throw "null pointer dereference").error = _err;
            //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L162"
            _call._done();
        };
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L164"
        (@:checkr _client ?? throw "null pointer dereference")._mutex.unlock();
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L165"
        (@:checkr _client ?? throw "null pointer dereference")._reqMutex.unlock();
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L166"
        if (((stdgo._internal.net.rpc.Rpc__debuglog._debugLog && stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool) && !_closing : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L167"
            stdgo._internal.log.Log_println.println(stdgo.Go.toInterface(("rpc: client protocol error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
    }
    @:keep
    @:tdfield
    static public function _send( _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client>, _call:stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>):Void {
        @:recv var _client:stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client> = _client;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L72"
            (@:checkr _client ?? throw "null pointer dereference")._reqMutex.lock();
            {
                final __f__ = (@:checkr _client ?? throw "null pointer dereference")._reqMutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L76"
            (@:checkr _client ?? throw "null pointer dereference")._mutex.lock();
            //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L77"
            if (((@:checkr _client ?? throw "null pointer dereference")._shutdown || (@:checkr _client ?? throw "null pointer dereference")._closing : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L78"
                (@:checkr _client ?? throw "null pointer dereference")._mutex.unlock();
                (@:checkr _call ?? throw "null pointer dereference").error = stdgo._internal.net.rpc.Rpc_errshutdown.errShutdown;
                //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L80"
                _call._done();
                //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L81"
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
            //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L84"
            (@:checkr _client ?? throw "null pointer dereference")._seq++;
            (@:checkr _client ?? throw "null pointer dereference")._pending[_seq] = _call;
            //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L86"
            (@:checkr _client ?? throw "null pointer dereference")._mutex.unlock();
            (@:checkr _client ?? throw "null pointer dereference")._request.seq = _seq;
            (@:checkr _client ?? throw "null pointer dereference")._request.serviceMethod = (@:checkr _call ?? throw "null pointer dereference").serviceMethod?.__copy__();
            var _err = ((@:checkr _client ?? throw "null pointer dereference")._codec.writeRequest((stdgo.Go.setRef((@:checkr _client ?? throw "null pointer dereference")._request) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>), (@:checkr _call ?? throw "null pointer dereference").args) : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L92"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L93"
                (@:checkr _client ?? throw "null pointer dereference")._mutex.lock();
                _call = ((@:checkr _client ?? throw "null pointer dereference")._pending[_seq] ?? (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>));
                //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L95"
                if ((@:checkr _client ?? throw "null pointer dereference")._pending != null) (@:checkr _client ?? throw "null pointer dereference")._pending.__remove__(_seq);
                //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L96"
                (@:checkr _client ?? throw "null pointer dereference")._mutex.unlock();
                //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L97"
                if (({
                    final value = _call;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    (@:checkr _call ?? throw "null pointer dereference").error = _err;
                    //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L99"
                    _call._done();
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
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
