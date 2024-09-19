package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
function testItoa(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            for (__0 => _test in _internal.strconv_test.Strconv_test__itob64tests._itob64tests) {
                var _s = (stdgo._internal.strconv.Strconv_formatInt.formatInt(_test._in, _test._base)?.__copy__() : stdgo.GoString);
                if (_s != (_test._out)) {
                    _t.errorf(("FormatInt(%v, %v) = %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_test._base), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._out));
                };
                var _x = stdgo._internal.strconv.Strconv_appendInt.appendInt((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _test._in, _test._base);
                if ((_x : stdgo.GoString) != ((("abc" : stdgo.GoString) + _test._out?.__copy__() : stdgo.GoString))) {
                    _t.errorf(("AppendInt(%q, %v, %v) = %q want %v" : stdgo.GoString), stdgo.Go.toInterface(("abc" : stdgo.GoString)), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_test._base), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_test._out));
                };
                if ((_test._in >= (0i64 : stdgo.GoInt64) : Bool)) {
                    var _s = (stdgo._internal.strconv.Strconv_formatUint.formatUint((_test._in : stdgo.GoUInt64), _test._base)?.__copy__() : stdgo.GoString);
                    if (_s != (_test._out)) {
                        _t.errorf(("FormatUint(%v, %v) = %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_test._base), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._out));
                    };
                    var _x = stdgo._internal.strconv.Strconv_appendUint.appendUint((null : stdgo.Slice<stdgo.GoUInt8>), (_test._in : stdgo.GoUInt64), _test._base);
                    if ((_x : stdgo.GoString) != (_test._out)) {
                        _t.errorf(("AppendUint(%q, %v, %v) = %q want %v" : stdgo.GoString), stdgo.Go.toInterface(("abc" : stdgo.GoString)), stdgo.Go.toInterface((_test._in : stdgo.GoUInt64)), stdgo.Go.toInterface(_test._base), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_test._out));
                    };
                };
                if (((_test._base == (10 : stdgo.GoInt)) && (((_test._in : stdgo.GoInt) : stdgo.GoInt64) == _test._in) : Bool)) {
                    var _s = (stdgo._internal.strconv.Strconv_itoa.itoa((_test._in : stdgo.GoInt))?.__copy__() : stdgo.GoString);
                    if (_s != (_test._out)) {
                        _t.errorf(("Itoa(%v) = %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._out));
                    };
                };
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        {
                            var _r = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (_r == null) {
                                _t.fatalf(("expected panic due to illegal base" : stdgo.GoString));
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
            stdgo._internal.strconv.Strconv_formatUint.formatUint((12345678i64 : stdgo.GoUInt64), (1 : stdgo.GoInt));
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
