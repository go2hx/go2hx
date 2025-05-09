package stdgo._internal.net.http.fcgi;
@:keep @:allow(stdgo._internal.net.http.fcgi.Fcgi.T_conn_asInterface) class T_conn_static_extension {
    @:keep
    @:tdfield
    static public function _writePairs( _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_conn.T_conn>, _recType:stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType, _reqId:stdgo.GoUInt16, _pairs:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_conn.T_conn> = _c;
        var _w = stdgo._internal.net.http.fcgi.Fcgi__newwriter._newWriter(_c, _recType, _reqId);
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((8 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L179"
        for (_k => _v in _pairs) {
            var _n = (stdgo._internal.net.http.fcgi.Fcgi__encodesize._encodeSize(_b, (_k.length : stdgo.GoUInt32)) : stdgo.GoInt);
            _n = (_n + (stdgo._internal.net.http.fcgi.Fcgi__encodesize._encodeSize((_b.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), (_v.length : stdgo.GoUInt32))) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L182"
            {
                var __tmp__ = _w.write((_b.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L183"
                    return _err;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L185"
            {
                var __tmp__ = _w.writeString(_k?.__copy__()), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L186"
                    return _err;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L188"
            {
                var __tmp__ = _w.writeString(_v?.__copy__()), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L189"
                    return _err;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L192"
        _w.close();
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L193"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _writeEndRequest( _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_conn.T_conn>, _reqId:stdgo.GoUInt16, _appStatus:stdgo.GoInt, _protocolStatus:stdgo.GoUInt8):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_conn.T_conn> = _c;
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((8 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L171"
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32(_b, (_appStatus : stdgo.GoUInt32));
        _b[(4 : stdgo.GoInt)] = _protocolStatus;
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L173"
        return _c._writeRecord((3 : stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType), _reqId, _b);
    }
    @:keep
    @:tdfield
    static public function _writeRecord( _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_conn.T_conn>, _recType:stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType, _reqId:stdgo.GoUInt16, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_conn.T_conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L152"
            (@:checkr _c ?? throw "null pointer dereference")._mutex.lock();
            {
                final __f__ = (@:checkr _c ?? throw "null pointer dereference")._mutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L154"
            (@:checkr _c ?? throw "null pointer dereference")._buf.reset();
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L155"
            (@:checkr _c ?? throw "null pointer dereference")._h._init(_recType, _reqId, (_b.length));
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L156"
            {
                var _err = (stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _c ?? throw "null pointer dereference")._buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _c ?? throw "null pointer dereference")._h))) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L157"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L159"
            {
                var __tmp__ = (@:checkr _c ?? throw "null pointer dereference")._buf.write(_b), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L160"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L162"
            {
                var __tmp__ = (@:checkr _c ?? throw "null pointer dereference")._buf.write((stdgo._internal.net.http.fcgi.Fcgi__pad._pad.__slice__(0, (@:checkr _c ?? throw "null pointer dereference")._h.paddingLength) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L163"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
            };
            var __tmp__ = (@:checkr _c ?? throw "null pointer dereference")._rwc.write((@:checkr _c ?? throw "null pointer dereference")._buf.bytes()), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L166"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _err;
            };
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
                return (null : stdgo.Error);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function close( _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_conn.T_conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_conn.T_conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L118"
            (@:checkr _c ?? throw "null pointer dereference")._mutex.lock();
            {
                final __f__ = (@:checkr _c ?? throw "null pointer dereference")._mutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L120"
            if (!(@:checkr _c ?? throw "null pointer dereference")._closed) {
                (@:checkr _c ?? throw "null pointer dereference")._closeErr = (@:checkr _c ?? throw "null pointer dereference")._rwc.close();
                (@:checkr _c ?? throw "null pointer dereference")._closed = true;
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L124"
            {
                final __ret__:stdgo.Error = (@:checkr _c ?? throw "null pointer dereference")._closeErr;
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
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
                return (null : stdgo.Error);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
                return (null : stdgo.Error);
            };
        };
    }
}
