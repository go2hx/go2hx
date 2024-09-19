package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testValue_Len(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _a = (stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>);
            var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_a))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            if (_v.len() != ((_a.length))) {
                _t.errorf(("Len = %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_v.len()), stdgo.Go.toInterface((_a.length)));
            };
            _a = (null : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>);
            _v = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_a))?.__copy__();
            if (_v.len() != ((_a.length))) {
                _t.errorf(("Len = %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_v.len()), stdgo.Go.toInterface((_a.length)));
            };
            var _getError = (function(_f:() -> Void):stdgo.GoString {
                var __deferstack__:Array<Void -> Void> = [];
                var _errorStr = ("" : stdgo.GoString);
                try {
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                var _e = ({
                                    final r = stdgo.Go.recover_exception;
                                    stdgo.Go.recover_exception = null;
                                    r;
                                } : stdgo.AnyInterface);
                                {
                                    var __tmp__ = try {
                                        { _0 : (stdgo.Go.typeAssert((_e : stdgo.GoString)) : stdgo.GoString), _1 : true };
                                    } catch(_) {
                                        { _0 : ("" : stdgo.GoString), _1 : false };
                                    }, _str = __tmp__._0, _ok = __tmp__._1;
                                    if (_ok) {
                                        _errorStr = _str?.__copy__();
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
                        return _errorStr;
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return _errorStr;
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
                    return _errorStr;
                };
            } : (() -> Void) -> stdgo.GoString);
            var _e = (_getError(function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var _ptr:stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
                    stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_ptr)).len();
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
            })?.__copy__() : stdgo.GoString);
            var _wantStr = ("reflect: call of reflect.Value.Len on ptr to non-array Value" : stdgo.GoString);
            if (_e != (_wantStr)) {
                _t.errorf(("error is %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_wantStr));
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
