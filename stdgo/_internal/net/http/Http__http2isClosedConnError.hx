package stdgo._internal.net.http;
function _http2isClosedConnError(_err:stdgo.Error):Bool {
        if (_err == null) {
            return false;
        };
        var _str = (_err.error()?.__copy__() : stdgo.GoString);
        if (stdgo._internal.strings.Strings_contains.contains(_str?.__copy__(), ("use of closed network connection" : stdgo.GoString))) {
            return true;
        };
        if (false) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>)) : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>), _1 : false };
                }, _oe = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && ((@:checkr _oe ?? throw "null pointer dereference").op == ("read" : stdgo.GoString)) : Bool)) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _oe ?? throw "null pointer dereference").err) : stdgo.Ref<stdgo._internal.os.Os_SyscallError.SyscallError>)) : stdgo.Ref<stdgo._internal.os.Os_SyscallError.SyscallError>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.os.Os_SyscallError.SyscallError>), _1 : false };
                        }, _se = __tmp__._0, _ok = __tmp__._1;
                        if ((_ok && ((@:checkr _se ?? throw "null pointer dereference").syscall == ("wsarecv" : stdgo.GoString)) : Bool)) {
                            {};
                            {};
                            {
                                var _n = (stdgo._internal.net.http.Http__http2errno._http2errno((@:checkr _se ?? throw "null pointer dereference").err) : stdgo.GoUIntptr);
                                if (((_n == (10054 : stdgo.GoUIntptr)) || (_n == (10053 : stdgo.GoUIntptr)) : Bool)) {
                                    return true;
                                };
                            };
                        };
                    };
                };
            };
        };
        return false;
    }
