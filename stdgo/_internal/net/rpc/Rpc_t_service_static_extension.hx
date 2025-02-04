package stdgo._internal.net.rpc;
@:keep @:allow(stdgo._internal.net.rpc.Rpc.T_service_asInterface) class T_service_static_extension {
    @:keep
    @:tdfield
    static public function _call( _s:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_service.T_service>, _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server>, _sending:stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>, _wg:stdgo.Ref<stdgo._internal.sync.Sync_waitgroup.WaitGroup>, _mtype:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType>, _req:stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>, _argv:stdgo._internal.reflect.Reflect_value.Value, _replyv:stdgo._internal.reflect.Reflect_value.Value, _codec:stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_service.T_service> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((_wg != null && ((_wg : Dynamic).__nil__ == null || !(_wg : Dynamic).__nil__))) {
                {
                    final __f__ = @:check2r _wg.done;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
            };
            @:check2r _mtype.lock();
            (@:checkr _mtype ?? throw "null pointer dereference")._numCalls++;
            @:check2r _mtype.unlock();
            var _function = ((@:checkr _mtype ?? throw "null pointer dereference")._method.func?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            var _returnValues = _function.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(3, 3, ...[(@:checkr _s ?? throw "null pointer dereference")._rcvr?.__copy__(), _argv?.__copy__(), _replyv?.__copy__()].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>));
            var _errInter = (_returnValues[(0 : stdgo.GoInt)].interface_() : stdgo.AnyInterface);
            var _errmsg = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_errInter != null) {
                _errmsg = (stdgo.Go.typeAssert((_errInter : stdgo.Error)) : stdgo.Error).error()?.__copy__();
            };
            @:check2r _server._sendResponse(_sending, _req, _replyv.interface_(), _codec, _errmsg?.__copy__());
            @:check2r _server._freeRequest(_req);
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
