package stdgo._internal.expvar;
@:keep var __init_go2hx__ = {
        try {
            stdgo._internal.net.http.Http_handleFunc.handleFunc(("/debug/vars" : stdgo.GoString), stdgo._internal.expvar.Expvar__expvarHandler._expvarHandler);
            stdgo._internal.expvar.Expvar_publish.publish(("cmdline" : stdgo.GoString), stdgo.Go.asInterface((stdgo._internal.expvar.Expvar__cmdline._cmdline : stdgo._internal.expvar.Expvar_Func.Func)));
            stdgo._internal.expvar.Expvar_publish.publish(("memstats" : stdgo.GoString), stdgo.Go.asInterface((stdgo._internal.expvar.Expvar__memstats._memstats : stdgo._internal.expvar.Expvar_Func.Func)));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
