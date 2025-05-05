package stdgo._internal.encoding.gob;
function testFuzzOneByte(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1466"
        if (!stdgo._internal.encoding.gob.Gob__dofuzztests._doFuzzTests.value) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1467"
            _t.skipf(("disabled; run with -gob.fuzz to enable" : stdgo.GoString));
        };
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1471"
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_onthefly.OnTheFly() : stdgo._internal.encoding.gob.Gob_onthefly.OnTheFly))));
        var _dt = (stdgo._internal.encoding.gob.Gob__newdt._newDT()?.__copy__() : stdgo._internal.encoding.gob.Gob_dt.DT);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1473"
        {
            var _err = (stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_buf)).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_dt))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1474"
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _s = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _indices = (new stdgo.Slice<stdgo.GoInt>((0 : stdgo.GoInt).toBasic(), (_s.length)).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1479"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1480"
                {
                    final __value__ = _i;
                    if (__value__ == ((14 : stdgo.GoInt)) || __value__ == ((167 : stdgo.GoInt)) || __value__ == ((231 : stdgo.GoInt)) || __value__ == ((265 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1482"
                        {
                            _i++;
                            continue;
                        };
                    } else if (__value__ == ((248 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1486"
                        {
                            _i++;
                            continue;
                        };
                    };
                };
_indices = (_indices.__append__(_i) : stdgo.Slice<stdgo.GoInt>);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1490"
        if (stdgo._internal.testing.Testing_short.short()) {
            _indices = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (111 : stdgo.GoInt), (178 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1493"
        for (__8 => _i in _indices) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1494"
            {
                var _j = (0 : stdgo.GoInt);
                while ((_j < (256 : stdgo.GoInt) : Bool)) {
                    var _b = (_s : stdgo.Slice<stdgo.GoUInt8>);
_b[(_i : stdgo.GoInt)] = (_b[(_i : stdgo.GoInt)] ^ ((_j : stdgo.GoUInt8)) : stdgo.GoUInt8);
var _e:stdgo._internal.encoding.gob.Gob_dt.DT = ({} : stdgo._internal.encoding.gob.Gob_dt.DT);
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1498"
                    ({
                        var a = function():Void {
                            var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                            try {
                                {
                                    __deferstack__.unshift({ ran : false, f : () -> ({
                                        var a = function():Void {
                                            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1500"
                                            {
                                                var _p = ({
                                                    final r = stdgo.Go.recover_exception;
                                                    stdgo.Go.recover_exception = null;
                                                    r;
                                                } : stdgo.AnyInterface);
                                                if (_p != null) {
                                                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1501"
                                                    _t.errorf(("crash for b[%d] ^= 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j));
                                                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1502"
                                                    throw stdgo.Go.toInterface(_p);
                                                };
                                            };
                                        };
                                        a();
                                    }) });
                                };
                                var _err = (stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_b))).decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_e) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_dt.DT>)))) : stdgo.Error);
                                _err;
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
                                    return;
                                };
                            };
                        };
                        a();
                    });
                    _j = (_j + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                };
            };
        };
    }
