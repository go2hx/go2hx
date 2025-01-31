package stdgo._internal.net.rpc;
import stdgo._internal.errors.Errors;
import stdgo._internal.html.template.Template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.encoding.gob.Gob;
import stdgo._internal.net.Net;
import stdgo._internal.io.Io;
import stdgo._internal.net.http.Http;
import stdgo._internal.go.token.Token;
import stdgo._internal.log.Log;
import stdgo._internal.sort.Sort;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
@:keep @:allow(stdgo._internal.net.rpc.Rpc.Call_asInterface) class Call_static_extension {
    @:keep
    @:tdfield
    static public function _done( _call:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>):Void {
        @:recv var _call:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call> = _call;
        {
            var __select__ = true;
            while (__select__) {
                if ((@:checkr _call ?? throw "null pointer dereference").done != null && (@:checkr _call ?? throw "null pointer dereference").done.__isSend__()) {
                    __select__ = false;
                    {
                        (@:checkr _call ?? throw "null pointer dereference").done.__send__(_call);
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
