package stdgo._internal.net.rpc;
@:keep @:allow(stdgo._internal.net.rpc.Rpc.T_service_asInterface) class T_service_static_extension {
    @:keep
    static public function _call( _s:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>, _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>, _sending:stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>, _wg:stdgo.Ref<stdgo._internal.sync.Sync_WaitGroup.WaitGroup>, _mtype:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>, _req:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>, _argv:stdgo._internal.reflect.Reflect_Value.Value, _replyv:stdgo._internal.reflect.Reflect_Value.Value, _codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service> = _s;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if ((_wg != null && ((_wg : Dynamic).__nil__ == null || !(_wg : Dynamic).__nil__))) {
                {
                    final __f__ = _wg.done;
                    __deferstack__.unshift(() -> __f__());
                };
            };
            _mtype.lock();
            _mtype._numCalls++;
            _mtype.unlock();
            var _function = (_mtype._method.func?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            var _returnValues = _function.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(3, 3, ...[_s._rcvr?.__copy__(), _argv?.__copy__(), _replyv?.__copy__()].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>));
            var _errInter = (_returnValues[(0 : stdgo.GoInt)].interface_() : stdgo.AnyInterface);
            var _errmsg = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
            if (_errInter != null) {
                _errmsg = (stdgo.Go.typeAssert((_errInter : stdgo.Error)) : stdgo.Error).error()?.__copy__();
            };
            _server._sendResponse(_sending, _req, _replyv.interface_(), _codec, _errmsg?.__copy__());
            _server._freeRequest(_req);
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
