package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testMapIterReset(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _iter = (stdgo.Go.setRef(({} : stdgo._internal.reflect.Reflect_MapIter.MapIter)) : stdgo.Ref<stdgo._internal.reflect.Reflect_MapIter.MapIter>);
            {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    ({
                                        final r = stdgo.Go.recover_exception;
                                        stdgo.Go.recover_exception = null;
                                        r;
                                    });
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
                        _iter.next();
                        _t.error(stdgo.Go.toInterface(("Next did not panic" : stdgo.GoString)));
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
            };
            var _m = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
                x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                x.set(("one" : stdgo.GoString), (1 : stdgo.GoInt));
x.set(("two" : stdgo.GoString), (2 : stdgo.GoInt));
x.set(("three" : stdgo.GoString), (3 : stdgo.GoInt));
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
            _iter.reset(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_m))?.__copy__());
            {
                var __0 = (_internal.reflect_test.Reflect_test__iterateToString._iterateToString(_iter)?.__copy__() : stdgo.GoString), __1 = ("[one: 1, three: 3, two: 2]" : stdgo.GoString);
var _want = __1, _got = __0;
                if (_got != (_want)) {
                    _t.errorf(("iterator returned %s (after sorting), want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
            _iter.reset((new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value));
            {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    ({
                                        final r = stdgo.Go.recover_exception;
                                        stdgo.Go.recover_exception = null;
                                        r;
                                    });
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
                        _iter.next();
                        _t.error(stdgo.Go.toInterface(("Next did not panic" : stdgo.GoString)));
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
            };
            var _m2 = ({
                final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
                x.__defaultValue__ = () -> ("" : stdgo.GoString);
                x.set((1 : stdgo.GoInt), ("one" : stdgo.GoString));
x.set((2 : stdgo.GoInt), ("two" : stdgo.GoString));
x.set((3 : stdgo.GoInt), ("three" : stdgo.GoString));
                x;
            } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>);
            _iter.reset(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_m2))?.__copy__());
            {
                var __0 = (_internal.reflect_test.Reflect_test__iterateToString._iterateToString(_iter)?.__copy__() : stdgo.GoString), __1 = ("[1: one, 2: two, 3: three]" : stdgo.GoString);
var _want = __1, _got = __0;
                if (_got != (_want)) {
                    _t.errorf(("iterator returned %s (after sorting), want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
            var _m3 = ({
                final x = new stdgo.GoMap.GoUInt64Map<stdgo.GoUInt64>();
                x.__defaultValue__ = () -> (0 : stdgo.GoUInt64);
                x.set((1i64 : stdgo.GoUInt64), (2i64 : stdgo.GoUInt64));
x.set((2i64 : stdgo.GoUInt64), (4i64 : stdgo.GoUInt64));
x.set((4i64 : stdgo.GoUInt64), (8i64 : stdgo.GoUInt64));
                x;
            } : stdgo.GoMap<stdgo.GoUInt64, stdgo.GoUInt64>);
            var _kv = (stdgo._internal.reflect.Reflect_new_.new_(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0i64 : stdgo.GoUInt64)))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (5 : stdgo.GoInt) : Bool), _i++, {
                    var __0:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var _seenv = __1, _seenk = __0;
                    _iter.reset(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_m3))?.__copy__());
                    while (_iter.next()) {
                        _kv.setIterKey(_iter);
                        _seenk = (_seenk ^ (_kv.uint()) : stdgo.GoUInt64);
                        _kv.setIterValue(_iter);
                        _seenv = (_seenv ^ (_kv.uint()) : stdgo.GoUInt64);
                    };
                    if (_seenk != ((7i64 : stdgo.GoUInt64))) {
                        _t.errorf(("iteration yielded keys %b, want %b" : stdgo.GoString), stdgo.Go.toInterface(_seenk), stdgo.Go.toInterface((7 : stdgo.GoInt)));
                    };
                    if (_seenv != ((14i64 : stdgo.GoUInt64))) {
                        _t.errorf(("iteration yielded values %b, want %b" : stdgo.GoString), stdgo.Go.toInterface(_seenv), stdgo.Go.toInterface((14 : stdgo.GoInt)));
                    };
                });
            };
            var _n = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((10 : stdgo.GoInt), function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    _iter.reset(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_m2))?.__copy__());
                    _iter.reset((new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value));
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
            }) : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                _t.errorf(("MapIter.Reset allocated %d times" : stdgo.GoString), stdgo.Go.toInterface(_n));
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
