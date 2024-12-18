package stdgo._internal.net.http.fcgi;
@:keep @:allow(stdgo._internal.net.http.fcgi.Fcgi.T_conn_asInterface) class T_conn_static_extension {
    @:keep
    static public function _writePairs( _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn>, _recType:stdgo._internal.net.http.fcgi.Fcgi_T_recType.T_recType, _reqId:stdgo.GoUInt16, _pairs:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn> = _c;
        var _w = stdgo._internal.net.http.fcgi.Fcgi__newWriter._newWriter(_c, _recType, _reqId);
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((8 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (_k => _v in _pairs) {
            var _n = (stdgo._internal.net.http.fcgi.Fcgi__encodeSize._encodeSize(_b, (_k.length : stdgo.GoUInt32)) : stdgo.GoInt);
            _n = (_n + (stdgo._internal.net.http.fcgi.Fcgi__encodeSize._encodeSize((_b.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), (_v.length : stdgo.GoUInt32))) : stdgo.GoInt);
            {
                var __tmp__ = _w.write((_b.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = _w.writeString(_k?.__copy__()), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = _w.writeString(_v?.__copy__()), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        _w.close();
        return (null : stdgo.Error);
    }
    @:keep
    static public function _writeEndRequest( _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn>, _reqId:stdgo.GoUInt16, _appStatus:stdgo.GoInt, _protocolStatus:stdgo.GoUInt8):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn> = _c;
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((8 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.putUint32(_b, (_appStatus : stdgo.GoUInt32));
        _b[(4 : stdgo.GoInt)] = _protocolStatus;
        return _c._writeRecord((3 : stdgo._internal.net.http.fcgi.Fcgi_T_recType.T_recType), _reqId, _b);
    }
    @:keep
    static public function _writeRecord( _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn>, _recType:stdgo._internal.net.http.fcgi.Fcgi_T_recType.T_recType, _reqId:stdgo.GoUInt16, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _c._mutex.lock();
            {
                final __f__ = _c._mutex.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            _c._buf.reset();
            _c._h._init(_recType, _reqId, (_b.length));
            {
                var _err = (stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface((stdgo.Go.setRef(_c._buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_c._h))) : stdgo.Error);
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
            {
                var __tmp__ = _c._buf.write(_b), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
            {
                var __tmp__ = _c._buf.write((stdgo._internal.net.http.fcgi.Fcgi__pad._pad.__slice__(0, _c._h.paddingLength) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
            var __tmp__ = _c._rwc.write(_c._buf.bytes()), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
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
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function close( _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _c._mutex.lock();
            {
                final __f__ = _c._mutex.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (!_c._closed) {
                _c._closeErr = _c._rwc.close();
                _c._closed = true;
            };
            {
                final __ret__:stdgo.Error = _c._closeErr;
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
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
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
}
