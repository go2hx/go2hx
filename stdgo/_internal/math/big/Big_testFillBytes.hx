package stdgo._internal.math.big;
function testFillBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _checkResult = function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _buf:stdgo.Slice<stdgo.GoUInt8>, _want:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):Void {
                _t.helper();
                var _got = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setBytes(_buf);
                if (_got.cmpAbs(_want) != ((0 : stdgo.GoInt))) {
                    _t.errorf(("got 0x%x, want 0x%x: %x" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)), stdgo.Go.toInterface(_buf));
                };
            };
            var _panics = (function(_f:() -> Void):Bool {
                var __deferstack__:Array<Void -> Void> = [];
                var _panic = false;
                try {
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                _panic = ({
                                    final r = stdgo.Go.recover_exception;
                                    stdgo.Go.recover_exception = null;
                                    r;
                                }) != null;
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
                        };
                        a();
                    });
                    _f();
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _panic;
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return _panic;
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
                    return _panic;
                };
            } : (() -> Void) -> Bool);
            for (__8 => _n in (new stdgo.Slice<stdgo.GoString>(8, 8, ...[("0" : stdgo.GoString), ("1000" : stdgo.GoString), ("0xffffffff" : stdgo.GoString), ("-0xffffffff" : stdgo.GoString), ("0xffffffffffffffff" : stdgo.GoString), ("0x10000000000000000" : stdgo.GoString), ("0xabababababababababababababababababababababababababa" : stdgo.GoString), ("0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                _t.run(_n?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        _t.logf(_n?.__copy__());
                        var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_n?.__copy__(), (0 : stdgo.GoInt)), _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (!_ok) {
                            throw stdgo.Go.toInterface(("invalid test entry" : stdgo.GoString));
                        };
                        var _byteLen = (((_x.bitLen() + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
                        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_byteLen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                        _checkResult(_t, _x.fillBytes(_buf), _x);
                        _buf = (new stdgo.Slice<stdgo.GoUInt8>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                        for (_i => _ in _buf) {
                            _buf[(_i : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
                        };
                        _checkResult(_t, _x.fillBytes(_buf), _x);
                        if ((_byteLen > (0 : stdgo.GoInt) : Bool)) {
                            _buf = (new stdgo.Slice<stdgo.GoUInt8>((_byteLen - (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                            if (!_panics(function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    _x.fillBytes(_buf);
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
                            })) {
                                _t.errorf(("expected panic for small buffer and value %x" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
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
