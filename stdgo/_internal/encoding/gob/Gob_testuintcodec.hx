package stdgo._internal.encoding.gob;
function testUintCodec(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                var _a0 = _t;
                final __f__ = stdgo._internal.encoding.gob.Gob__testerror._testError;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            var _b = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>);
            var _encState = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            for (__8 => _tt in stdgo._internal.encoding.gob.Gob__encodet._encodeT) {
                @:check2r _b.reset();
                @:check2r _encState._encodeUint(_tt._x);
                if (!stdgo._internal.bytes.Bytes_equal.equal(_tt._b, @:check2r _b.bytes())) {
                    @:check2r _t.errorf(("encodeUint: %#x encode: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(_tt._x), stdgo.Go.toInterface(_tt._b), stdgo.Go.toInterface(@:check2r _b.bytes()));
                };
            };
            {
                var _u = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                while (true) {
                    @:check2r _b.reset();
@:check2r _encState._encodeUint(_u);
var _decState = stdgo._internal.encoding.gob.Gob__newdecodestate._newDecodeState(stdgo._internal.encoding.gob.Gob__newdecbuffer._newDecBuffer(@:check2r _b.bytes()));
var _v = (@:check2r _decState._decodeUint() : stdgo.GoUInt64);
if (_u != (_v)) {
                        @:check2r _t.errorf(("Encode/Decode: sent %#x received %#x" : stdgo.GoString), stdgo.Go.toInterface(_u), stdgo.Go.toInterface(_v));
                    };
if ((_u & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
                        break;
                    };
                    _u = (((_u + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) * (7i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                };
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
                return;
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
