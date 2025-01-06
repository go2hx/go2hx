package stdgo._internal.net.http;
function _http2curGoroutineID():stdgo.GoUInt64 {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _bp = (stdgo.Go.typeAssert((@:check2 stdgo._internal.net.http.Http__http2littleBuf._http2littleBuf.get() : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
            {
                var _a0 = _bp;
                final __f__ = @:check2 stdgo._internal.net.http.Http__http2littleBuf._http2littleBuf.put;
                __deferstack__.unshift({ ran : false, f : () -> __f__(stdgo.Go.toInterface(_a0)) });
            };
            var _b = (_bp : stdgo.Slice<stdgo.GoUInt8>);
            _b = (_b.__slice__(0, stdgo._internal.runtime.Runtime_stack.stack(_b, false)) : stdgo.Slice<stdgo.GoUInt8>);
            _b = stdgo._internal.bytes.Bytes_trimPrefix.trimPrefix(_b, stdgo._internal.net.http.Http__http2goroutineSpace._http2goroutineSpace);
            var _i = (stdgo._internal.bytes.Bytes_indexByte.indexByte(_b, (32 : stdgo.GoUInt8)) : stdgo.GoInt);
            if ((_i < (0 : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("No space found in %q" : stdgo.GoString), stdgo.Go.toInterface(_b)));
            };
            _b = (_b.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = stdgo._internal.net.http.Http__http2parseUintBytes._http2parseUintBytes(_b, (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _n:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("Failed to parse goroutine ID out of %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_err)));
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _n;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (0 : stdgo.GoUInt64);
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
                if (defer.ran) continue;
                defer.ran = true;
                defer.f();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (0 : stdgo.GoUInt64);
        };
    }
