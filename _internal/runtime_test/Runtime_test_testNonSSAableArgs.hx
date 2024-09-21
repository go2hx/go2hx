package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function testNonSSAableArgs(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _internal.runtime_test.Runtime_test__globint1._globint1 = (0 : stdgo.GoInt);
            _internal.runtime_test.Runtime_test__globint2._globint2 = (0 : stdgo.GoInt);
            _internal.runtime_test.Runtime_test__globint3._globint3 = (0 : stdgo.GoInt);
            var _save1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
            var _save2:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _save3:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _save4:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        if (_internal.runtime_test.Runtime_test__globint1._globint1 != ((1 : stdgo.GoInt))) {
                            _t.fatal(stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("globint1:  wanted: 1, got %v" : stdgo.GoString), stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__globint1._globint1))));
                        };
                        if (_save1 != ((5 : stdgo.GoUInt8))) {
                            _t.fatal(stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("save1:  wanted: 5, got %v" : stdgo.GoString), stdgo.Go.toInterface(_save1))));
                        };
                        if (_internal.runtime_test.Runtime_test__globint2._globint2 != ((1 : stdgo.GoInt))) {
                            _t.fatal(stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("globint2:  wanted: 1, got %v" : stdgo.GoString), stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__globint2._globint2))));
                        };
                        if (_save2 != ((2i64 : stdgo.GoInt64))) {
                            _t.fatal(stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("save2:  wanted: 2, got %v" : stdgo.GoString), stdgo.Go.toInterface(_save2))));
                        };
                        if (_save3 != ((4i64 : stdgo.GoInt64))) {
                            _t.fatal(stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("save3:  wanted: 4, got %v" : stdgo.GoString), stdgo.Go.toInterface(_save3))));
                        };
                        if (_internal.runtime_test.Runtime_test__globint3._globint3 != ((1 : stdgo.GoInt))) {
                            _t.fatal(stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("globint3:  wanted: 1, got %v" : stdgo.GoString), stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__globint3._globint3))));
                        };
                        if (_save4 != ((4i64 : stdgo.GoInt64))) {
                            _t.fatal(stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("save1:  wanted: 4, got %v" : stdgo.GoString), stdgo.Go.toInterface(_save4))));
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
            {
                var _a0 = _internal.runtime_test.Runtime_test__mknonSSAable._mknonSSAable();
                __deferstack__.unshift(() -> {
                    var a = function(_n:_internal.runtime_test.Runtime_test_T_nonSSAable.T_nonSSAable):Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            _save1 = _n[(4 : stdgo.GoInt)];
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
                    a(_a0?.__copy__());
                });
            };
            {
                var _a0 = (new _internal.runtime_test.Runtime_test_T_bigStruct.T_bigStruct((1i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64), (4i64 : stdgo.GoInt64), (5i64 : stdgo.GoInt64), _internal.runtime_test.Runtime_test__sideeffect._sideeffect((6i64 : stdgo.GoInt64))) : _internal.runtime_test.Runtime_test_T_bigStruct.T_bigStruct);
                __deferstack__.unshift(() -> {
                    var a = function(_b:_internal.runtime_test.Runtime_test_T_bigStruct.T_bigStruct):Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            _save2 = _b._y;
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
                    a(_a0?.__copy__());
                });
            };
            var _foo = (new _internal.runtime_test.Runtime_test_T_containsBigStruct.T_containsBigStruct() : _internal.runtime_test.Runtime_test_T_containsBigStruct.T_containsBigStruct);
            _foo._element._z = (4i64 : stdgo.GoInt64);
            {
                var _a0 = _foo._element;
                __deferstack__.unshift(() -> {
                    var a = function(_element:_internal.runtime_test.Runtime_test_T_bigStruct.T_bigStruct):Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            _save3 = _element._z;
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
                    a(_a0?.__copy__());
                });
            };
            {
                var _a0 = _internal.runtime_test.Runtime_test__sideeffect2._sideeffect2(_foo?.__copy__())._element;
                __deferstack__.unshift(() -> {
                    var a = function(_element:_internal.runtime_test.Runtime_test_T_bigStruct.T_bigStruct):Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            _save4 = _element._z;
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
                    a(_a0?.__copy__());
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
