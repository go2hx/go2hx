package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function benchmarkTrim(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.reportAllocs();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                for (__16 => _tc in _internal.strings_test.Strings_test__trimTests._trimTests) {
                    var _name = (_tc._f?.__copy__() : stdgo.GoString);
                    var _f:(stdgo.GoString, stdgo.GoString) -> stdgo.GoString = null;
                    {
                        final __value__ = _name;
                        if (__value__ == (("Trim" : stdgo.GoString))) {
                            _f = stdgo._internal.strings.Strings_trim.trim;
                        } else if (__value__ == (("TrimLeft" : stdgo.GoString))) {
                            _f = stdgo._internal.strings.Strings_trimLeft.trimLeft;
                        } else if (__value__ == (("TrimRight" : stdgo.GoString))) {
                            _f = stdgo._internal.strings.Strings_trimRight.trimRight;
                        } else if (__value__ == (("TrimPrefix" : stdgo.GoString))) {
                            _f = stdgo._internal.strings.Strings_trimPrefix.trimPrefix;
                        } else if (__value__ == (("TrimSuffix" : stdgo.GoString))) {
                            _f = stdgo._internal.strings.Strings_trimSuffix.trimSuffix;
                        } else {
                            _b.errorf(("Undefined trim function %s" : stdgo.GoString), stdgo.Go.toInterface(_name));
                        };
                    };
                    var _actual = (_f(_tc._in?.__copy__(), _tc._arg?.__copy__())?.__copy__() : stdgo.GoString);
                    if (_actual != (_tc._out)) {
                        _b.errorf(("%s(%q, %q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._arg), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._out));
                    };
                };
            });
        };
    }
