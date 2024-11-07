package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_wantConn_asInterface) class T_wantConn_static_extension {
    @:keep
    static public function _cancel( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>, _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>, _err:stdgo.Error):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn> = _w;
        _w._mu.lock();
        if (((_w._pc == null || (_w._pc : Dynamic).__nil__) && (_w._err == null) : Bool)) {
            if (_w._ready != null) _w._ready.__close__();
        };
        var _pc = _w._pc;
        _w._pc = null;
        _w._err = _err;
        _w._mu.unlock();
        if ((_pc != null && ((_pc : Dynamic).__nil__ == null || !(_pc : Dynamic).__nil__))) {
            _t._putOrCloseIdleConn(_pc);
        };
    }
    @:keep
    static public function _tryDeliver( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>, _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, _err:stdgo.Error):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn> = _w;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _w._mu.lock();
            __deferstack__.unshift(() -> _w._mu.unlock());
            if (((_w._pc != null && ((_w._pc : Dynamic).__nil__ == null || !(_w._pc : Dynamic).__nil__)) || (_w._err != null) : Bool)) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return false;
                };
            };
            _w._pc = _pc;
            _w._err = _err;
            if (((_w._pc == null || (_w._pc : Dynamic).__nil__) && (_w._err == null) : Bool)) {
                throw stdgo.Go.toInterface(("net/http: internal error: misuse of tryDeliver" : stdgo.GoString));
            };
            if (_w._ready != null) _w._ready.__close__();
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return true;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return false;
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
            return false;
        };
    }
    @:keep
    static public function _waiting( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn> = _w;
        {
            {
                var __select__ = true;
                while (__select__) {
                    if (_w._ready != null && _w._ready.__isGet__()) {
                        __select__ = false;
                        {
                            _w._ready.__get__();
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
