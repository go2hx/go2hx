package stdgo._internal.net.http;
function _logf(_r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_r.context().value(stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_serverContextKey.serverContextKey))) : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>)) : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>), _1 : false };
        }, _s = __tmp__._0, __132 = __tmp__._1;
        if (((_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__)) && (_s.errorLog != null && ((_s.errorLog : Dynamic).__nil__ == null || !(_s.errorLog : Dynamic).__nil__)) : Bool)) {
            _s.errorLog.printf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        } else {
            stdgo._internal.log.Log_printf.printf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        };
    }
