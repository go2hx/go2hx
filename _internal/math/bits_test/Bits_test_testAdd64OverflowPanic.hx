package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function testAdd64OverflowPanic(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _tests = (new stdgo.Slice<(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64>(5, 5, ...[function(_a:stdgo.GoUInt64, _b:stdgo.GoUInt64):stdgo.GoUInt64 {
                var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_a, _b, (0i64 : stdgo.GoUInt64)), _x:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
                if ((_c > (0i64 : stdgo.GoUInt64) : Bool)) {
                    throw stdgo.Go.toInterface(("overflow" : stdgo.GoString));
                };
                return _x;
            }, function(_a:stdgo.GoUInt64, _b:stdgo.GoUInt64):stdgo.GoUInt64 {
                var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_a, _b, (0i64 : stdgo.GoUInt64)), _x:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
                if (_c != ((0i64 : stdgo.GoUInt64))) {
                    throw stdgo.Go.toInterface(("overflow" : stdgo.GoString));
                };
                return _x;
            }, function(_a:stdgo.GoUInt64, _b:stdgo.GoUInt64):stdgo.GoUInt64 {
                var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_a, _b, (0i64 : stdgo.GoUInt64)), _x:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
                if (_c == ((1i64 : stdgo.GoUInt64))) {
                    throw stdgo.Go.toInterface(("overflow" : stdgo.GoString));
                };
                return _x;
            }, function(_a:stdgo.GoUInt64, _b:stdgo.GoUInt64):stdgo.GoUInt64 {
                var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_a, _b, (0i64 : stdgo.GoUInt64)), _x:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
                if (_c != ((1i64 : stdgo.GoUInt64))) {
                    return _x;
                };
                throw stdgo.Go.toInterface(("overflow" : stdgo.GoString));
            }, function(_a:stdgo.GoUInt64, _b:stdgo.GoUInt64):stdgo.GoUInt64 {
                var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_a, _b, (0i64 : stdgo.GoUInt64)), _x:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
                if (_c == ((0i64 : stdgo.GoUInt64))) {
                    return _x;
                };
                throw stdgo.Go.toInterface(("overflow" : stdgo.GoString));
            }]) : stdgo.Slice<(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64>);
            for (__0 => _test in _tests) {
                var _shouldPanic = (function(_f:() -> Void):Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    {
                                        var _err = ({
                                            final r = stdgo.Go.recover_exception;
                                            stdgo.Go.recover_exception = null;
                                            r;
                                        } : stdgo.AnyInterface);
                                        if (_err == null) {
                                            _t.fatalf(("expected panic" : stdgo.GoString));
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
                            };
                            a();
                        });
                        _f();
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
                } : (() -> Void) -> Void);
                _shouldPanic(function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        _test((-1i64 : stdgo.GoUInt64), (1i64 : stdgo.GoUInt64));
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
                _shouldPanic(function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        _test((1i64 : stdgo.GoUInt64), (-1i64 : stdgo.GoUInt64));
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
                _shouldPanic(function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        _test((-1i64 : stdgo.GoUInt64), (-1i64 : stdgo.GoUInt64));
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
                _test((-1i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
                _test((0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
                _test((1i64 : stdgo.GoUInt64), (1i64 : stdgo.GoUInt64));
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
