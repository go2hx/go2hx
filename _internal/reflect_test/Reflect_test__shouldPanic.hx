package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function _shouldPanic(_expect:stdgo.GoString, _f:() -> Void):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        var _r = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        } : stdgo.AnyInterface);
                        if (_r == null) {
                            throw stdgo.Go.toInterface(("did not panic" : stdgo.GoString));
                        };
                        if (_expect != (stdgo.Go.str())) {
                            var _s:stdgo.GoString = ("" : stdgo.GoString);
                            {
                                final __type__ = _r;
                                if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                                    var _r:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                                    _s = _r?.__copy__();
                                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.reflect.Reflect_ValueError.ValueError>))) {
                                    var _r:stdgo.Ref<stdgo._internal.reflect.Reflect_ValueError.ValueError> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.reflect.Reflect_ValueError.ValueError>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.reflect.Reflect_ValueError.ValueError>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.reflect.Reflect_ValueError.ValueError>) : __type__.__underlying__().value;
                                    _s = _r.error()?.__copy__();
                                } else {
                                    var _r:stdgo.AnyInterface = __type__?.__underlying__();
                                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("panicked with unexpected type %T" : stdgo.GoString), _r));
                                };
                            };
                            if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_s?.__copy__(), ("reflect" : stdgo.GoString))) {
                                throw stdgo.Go.toInterface((("panic string does not start with \"reflect\": " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString));
                            };
                            if (!stdgo._internal.strings.Strings_contains.contains(_s?.__copy__(), _expect?.__copy__())) {
                                throw stdgo.Go.toInterface((((("panic string does not contain \"" : stdgo.GoString) + _expect?.__copy__() : stdgo.GoString) + ("\": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString));
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
    }
