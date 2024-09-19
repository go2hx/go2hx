package _internal.vendor.golang_dot_org.x.net.http2.hpack;
function huffmanDecodeToString(_v:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _buf = (stdgo.Go.typeAssert((_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__bufPool._bufPool.get() : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
            _buf.reset();
            {
                var _a0 = _buf;
                __deferstack__.unshift(() -> _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__bufPool._bufPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_a0))));
            };
            {
                var _err = (_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__huffmanDecode._huffmanDecode(_buf, (0 : stdgo.GoInt), _v) : stdgo.Error);
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            {
                final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (_buf.string() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : ("" : stdgo.GoString), _1 : (null : stdgo.Error) };
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
            final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : ("" : stdgo.GoString), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
