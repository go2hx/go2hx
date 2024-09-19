package stdgo._internal.net.http;
function _http2encodeHeaders(_enc:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder>, _h:stdgo._internal.net.http.Http_Header.Header, _keys:stdgo.Slice<stdgo.GoString>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_keys == null) {
                var _sorter = (stdgo.Go.typeAssert((stdgo._internal.net.http.Http__http2sorterPool._http2sorterPool.get() : stdgo.Ref<stdgo._internal.net.http.Http_T_http2sorter.T_http2sorter>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2sorter.T_http2sorter>);
                {
                    var _a0 = _sorter;
                    __deferstack__.unshift(() -> stdgo._internal.net.http.Http__http2sorterPool._http2sorterPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_a0))));
                };
                _keys = _sorter.keys(_h);
            };
            for (__143 => _k in _keys) {
                var _vv = (_h[_k] ?? (null : stdgo.Slice<stdgo.GoString>));
                var __tmp__ = stdgo._internal.net.http.Http__http2lowerHeader._http2lowerHeader(_k?.__copy__()), _k:stdgo.GoString = __tmp__._0, _ascii:Bool = __tmp__._1;
                if (!_ascii) {
                    continue;
                };
                if (!stdgo._internal.net.http.Http__http2validWireHeaderFieldName._http2validWireHeaderFieldName(_k?.__copy__())) {
                    continue;
                };
                var _isTE = (_k == (("transfer-encoding" : stdgo.GoString)) : Bool);
                for (__144 => _v in _vv) {
                    if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHeaderFieldValue.validHeaderFieldValue(_v?.__copy__())) {
                        continue;
                    };
                    if ((_isTE && (_v != ("trailers" : stdgo.GoString)) : Bool)) {
                        continue;
                    };
                    stdgo._internal.net.http.Http__http2encKV._http2encKV(_enc, _k?.__copy__(), _v?.__copy__());
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
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
            return;
        };
    }
