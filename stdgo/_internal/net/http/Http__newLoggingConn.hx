package stdgo._internal.net.http;
function _newLoggingConn(_baseName:stdgo.GoString, _c:stdgo._internal.net.Net_Conn.Conn):stdgo._internal.net.Net_Conn.Conn {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.net.http.Http__uniqNameMu._uniqNameMu.lock();
            __deferstack__.unshift(() -> stdgo._internal.net.http.Http__uniqNameMu._uniqNameMu.unlock());
            (stdgo._internal.net.http.Http__uniqNameNext._uniqNameNext[_baseName] != null ? stdgo._internal.net.http.Http__uniqNameNext._uniqNameNext[_baseName]++ : (0 : stdgo.GoInt));
            {
                final __ret__:stdgo._internal.net.Net_Conn.Conn = stdgo.Go.asInterface((stdgo.Go.setRef(({ _name : stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s-%d" : stdgo.GoString), stdgo.Go.toInterface(_baseName), stdgo.Go.toInterface((stdgo._internal.net.http.Http__uniqNameNext._uniqNameNext[_baseName] ?? (0 : stdgo.GoInt))))?.__copy__(), conn : _c } : stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn)) : stdgo.Ref<stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn>));
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo._internal.net.Net_Conn.Conn = (null : stdgo._internal.net.Net_Conn.Conn);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo._internal.net.Net_Conn.Conn = (null : stdgo._internal.net.Net_Conn.Conn);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
