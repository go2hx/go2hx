package stdgo._internal.math.big;
function testFillBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _checkResult = function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _buf:stdgo.Slice<stdgo.GoUInt8>, _want:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Void {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1879"
            _t.helper();
            var _got = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes(_buf);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1881"
            if (_got.cmpAbs(_want) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1882"
                _t.errorf(("got 0x%x, want 0x%x: %x" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)), stdgo.Go.toInterface(_buf));
            };
        };
        var _panics = (function(_f:() -> Void):Bool {
            var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
            var _panic = false;
            try {
                {
                    __deferstack__.unshift({ ran : false, f : () -> ({
                        var a = function():Void {
                            _panic = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            }) != null;
                        };
                        a();
                    }) });
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1887"
                _f();
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1888"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _panic;
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
                    return _panic;
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
                    return _panic;
                };
            };
        } : (() -> Void) -> Bool);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1891"
        for (__8 => _n in (new stdgo.Slice<stdgo.GoString>(8, 8, ...[("0" : stdgo.GoString), ("1000" : stdgo.GoString), ("0xffffffff" : stdgo.GoString), ("-0xffffffff" : stdgo.GoString), ("0xffffffffffffffff" : stdgo.GoString), ("0x10000000000000000" : stdgo.GoString), ("0xabababababababababababababababababababababababababa" : stdgo.GoString), ("0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1901"
            _t.run(_n?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1902"
                _t.logf(_n?.__copy__());
                var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_n?.__copy__(), (0 : stdgo.GoInt)), _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1904"
                if (!_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1905"
                    throw stdgo.Go.toInterface(("invalid test entry" : stdgo.GoString));
                };
                var _byteLen = (((_x.bitLen() + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
                var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_byteLen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1911"
                _checkResult(_t, _x.fillBytes(_buf), _x);
                _buf = (new stdgo.Slice<stdgo.GoUInt8>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1915"
                for (_i => _ in _buf) {
                    _buf[(_i : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1918"
                _checkResult(_t, _x.fillBytes(_buf), _x);
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1921"
                if ((_byteLen > (0 : stdgo.GoInt) : Bool)) {
                    _buf = (new stdgo.Slice<stdgo.GoUInt8>((_byteLen - (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1923"
                    if (!_panics(function():Void {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1923"
                        _x.fillBytes(_buf);
                    })) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1924"
                        _t.errorf(("expected panic for small buffer and value %x" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
                    };
                };
            });
        };
    }
