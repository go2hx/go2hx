package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_wantConn_asInterface) class T_wantConn_static_extension {
    @:keep
    @:tdfield
    static public function _cancel( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>, _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>, _err:stdgo.Error):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn> = _w;
        @:check2 (@:checkr _w ?? throw "null pointer dereference")._mu.lock();
        if ((((@:checkr _w ?? throw "null pointer dereference")._pc == null || ((@:checkr _w ?? throw "null pointer dereference")._pc : Dynamic).__nil__) && ((@:checkr _w ?? throw "null pointer dereference")._err == null) : Bool)) {
            if ((@:checkr _w ?? throw "null pointer dereference")._ready != null) (@:checkr _w ?? throw "null pointer dereference")._ready.__close__();
        };
        var _pc = (@:checkr _w ?? throw "null pointer dereference")._pc;
        (@:checkr _w ?? throw "null pointer dereference")._pc = null;
        (@:checkr _w ?? throw "null pointer dereference")._err = _err;
        @:check2 (@:checkr _w ?? throw "null pointer dereference")._mu.unlock();
        if ((_pc != null && ((_pc : Dynamic).__nil__ == null || !(_pc : Dynamic).__nil__))) {
            @:check2r _t._putOrCloseIdleConn(_pc);
        };
    }
    @:keep
    @:tdfield
    static public function _tryDeliver( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>, _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, _err:stdgo.Error):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn> = _w;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _w ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _w ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((((@:checkr _w ?? throw "null pointer dereference")._pc != null && (((@:checkr _w ?? throw "null pointer dereference")._pc : Dynamic).__nil__ == null || !((@:checkr _w ?? throw "null pointer dereference")._pc : Dynamic).__nil__)) || ((@:checkr _w ?? throw "null pointer dereference")._err != null) : Bool)) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return false;
                };
            };
            (@:checkr _w ?? throw "null pointer dereference")._pc = _pc;
            (@:checkr _w ?? throw "null pointer dereference")._err = _err;
            if ((((@:checkr _w ?? throw "null pointer dereference")._pc == null || ((@:checkr _w ?? throw "null pointer dereference")._pc : Dynamic).__nil__) && ((@:checkr _w ?? throw "null pointer dereference")._err == null) : Bool)) {
                throw stdgo.Go.toInterface(("net/http: internal error: misuse of tryDeliver" : stdgo.GoString));
            };
            if ((@:checkr _w ?? throw "null pointer dereference")._ready != null) (@:checkr _w ?? throw "null pointer dereference")._ready.__close__();
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return true;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return false;
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return false;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _waiting( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn> = _w;
        {
            {
                var __select__ = true;
                while (__select__) {
                    if ((@:checkr _w ?? throw "null pointer dereference")._ready != null && (@:checkr _w ?? throw "null pointer dereference")._ready.__isGet__()) {
                        __select__ = false;
                        {
                            (@:checkr _w ?? throw "null pointer dereference")._ready.__get__();
                            {
                                return false;
                            };
                        };
                    } else {
                        __select__ = false;
                        {
                            return true;
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            return false;
        };
    }
}
