package stdgo._internal.encoding.gob;
function testTypeRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        var _wg:stdgo._internal.sync.Sync_waitgroup.WaitGroup = ({} : stdgo._internal.sync.Sync_waitgroup.WaitGroup);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (2 : stdgo.GoInt) : Bool)) {
                @:check2 _wg.add((1 : stdgo.GoInt));
stdgo.Go.routine(() -> ({
                    var a = function(_i:stdgo.GoInt):Void {
                        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                        try {
                            {
                                final __f__ = @:check2 _wg.done;
                                __deferstack__.unshift({ ran : false, f : () -> __f__() });
                            };
                            var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
                            var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
                            var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
                            var _x:stdgo.AnyInterface = (null : stdgo.AnyInterface);
                            {
                                final __value__ = _i;
                                if (__value__ == ((0 : stdgo.GoInt))) {
                                    _x = stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_n1.N1() : stdgo._internal.encoding.gob.Gob_n1.N1)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_n1.N1>)));
                                } else if (__value__ == ((1 : stdgo.GoInt))) {
                                    _x = stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_n2.N2() : stdgo._internal.encoding.gob.Gob_n2.N2)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_n2.N2>)));
                                } else {
                                    @:check2r _t.errorf(("bad i %d" : stdgo.GoString), stdgo.Go.toInterface(_i));
                                    {
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return;
                                    };
                                };
                            };
                            var _m = (({
                                final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                                x.__defaultValue__ = () -> ("" : stdgo.GoString);
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
                            _c.__get__();
                            {
                                var _err = (@:check2r _enc.encode(_x) : stdgo.Error);
                                if (_err != null) {
                                    @:check2r _t.error(stdgo.Go.toInterface(_err));
                                    {
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return;
                                    };
                                };
                            };
                            {
                                var _err = (@:check2r _enc.encode(_x) : stdgo.Error);
                                if (_err != null) {
                                    @:check2r _t.error(stdgo.Go.toInterface(_err));
                                    {
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return;
                                    };
                                };
                            };
                            {
                                var _err = (@:check2r _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_m) : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.GoString>>))) : stdgo.Error);
                                if (_err == null) {
                                    @:check2r _t.error(stdgo.Go.toInterface(("decode unexpectedly succeeded" : stdgo.GoString)));
                                    {
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return;
                                    };
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
                    };
                    a(_i);
                }));
                _i++;
            };
        };
        if (_c != null) _c.__close__();
        @:check2 _wg.wait_();
    }
