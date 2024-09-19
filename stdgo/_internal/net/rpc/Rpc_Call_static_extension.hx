package stdgo._internal.net.rpc;
@:keep @:allow(stdgo._internal.net.rpc.Rpc.Call_asInterface) class Call_static_extension {
    @:keep
    static public function _done( _call:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>):Void {
        @:recv var _call:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call> = _call;
        {
            var __select__ = true;
            while (__select__) {
                if (_call.done != null && _call.done.__isSend__()) {
                    __select__ = false;
                    {
                        _call.done.__send__(_call);
                        {};
                    };
                } else {
                    __select__ = false;
                    {
                        if (stdgo._internal.net.rpc.Rpc__debugLog._debugLog) {
                            stdgo._internal.log.Log_println.println(stdgo.Go.toInterface(("rpc: discarding Call reply due to insufficient Done chan capacity" : stdgo.GoString)));
                        };
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
    }
}