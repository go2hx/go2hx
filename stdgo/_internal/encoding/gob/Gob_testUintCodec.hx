package stdgo._internal.encoding.gob;
function testUintCodec(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = _t;
                __deferstack__.unshift(() -> stdgo._internal.encoding.gob.Gob__testError._testError(_a0));
            };
            var _b = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>);
            var _encState = stdgo._internal.encoding.gob.Gob__newEncoderState._newEncoderState(_b);
            for (__8 => _tt in stdgo._internal.encoding.gob.Gob__encodeT._encodeT) {
                _b.reset();
                _encState._encodeUint(_tt._x);
                if (!stdgo._internal.bytes.Bytes_equal.equal(_tt._b, _b.bytes())) {
                    _t.errorf(("encodeUint: %#x encode: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(_tt._x), stdgo.Go.toInterface(_tt._b), stdgo.Go.toInterface(_b.bytes()));
                };
            };
            {
                var _u = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                stdgo.Go.cfor(true, _u = (((_u + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) * (7i64 : stdgo.GoUInt64) : stdgo.GoUInt64), {
                    _b.reset();
                    _encState._encodeUint(_u);
                    var _decState = stdgo._internal.encoding.gob.Gob__newDecodeState._newDecodeState(stdgo._internal.encoding.gob.Gob__newDecBuffer._newDecBuffer(_b.bytes()));
                    var _v = (_decState._decodeUint() : stdgo.GoUInt64);
                    if (_u != (_v)) {
                        _t.errorf(("Encode/Decode: sent %#x received %#x" : stdgo.GoString), stdgo.Go.toInterface(_u), stdgo.Go.toInterface(_v));
                    };
                    if ((_u & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
                        break;
                    };
                });
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
