package _internal.flag_test;
import stdgo._internal.flag.Flag;
function testGet(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.flag.Flag_resetForTesting.resetForTesting(null);
        stdgo._internal.flag.Flag_bool_.bool_(("test_bool" : stdgo.GoString), true, ("bool value" : stdgo.GoString));
        stdgo._internal.flag.Flag_int_.int_(("test_int" : stdgo.GoString), (1 : stdgo.GoInt), ("int value" : stdgo.GoString));
        stdgo._internal.flag.Flag_int64.int64(("test_int64" : stdgo.GoString), (2i64 : stdgo.GoInt64), ("int64 value" : stdgo.GoString));
        stdgo._internal.flag.Flag_uint.uint(("test_uint" : stdgo.GoString), (3u32 : stdgo.GoUInt), ("uint value" : stdgo.GoString));
        stdgo._internal.flag.Flag_uint64.uint64(("test_uint64" : stdgo.GoString), (4i64 : stdgo.GoUInt64), ("uint64 value" : stdgo.GoString));
        stdgo._internal.flag.Flag_string.string(("test_string" : stdgo.GoString), ("5" : stdgo.GoString), ("string value" : stdgo.GoString));
        stdgo._internal.flag.Flag_float64.float64(("test_float64" : stdgo.GoString), (6 : stdgo.GoFloat64), ("float64 value" : stdgo.GoString));
        stdgo._internal.flag.Flag_duration.duration(("test_duration" : stdgo.GoString), (7i64 : stdgo._internal.time.Time_Duration.Duration), ("time.Duration value" : stdgo.GoString));
        var _visitor = function(_f:stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>):Void {
            if ((((_f.name.length) > (5 : stdgo.GoInt) : Bool) && ((_f.name.__slice__((0 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.GoString) == ("test_" : stdgo.GoString)) : Bool)) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_f.value) : stdgo._internal.flag.Flag_Getter.Getter)) : stdgo._internal.flag.Flag_Getter.Getter), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.flag.Flag_Getter.Getter), _1 : false };
                }, _g = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    _t.errorf(("Visit: value does not satisfy Getter: %T" : stdgo.GoString), stdgo.Go.toInterface(_f.value));
                    return;
                };
                {
                    final __value__ = _f.name;
                    if (__value__ == (("test_bool" : stdgo.GoString))) {
                        _ok = _g.get() == (stdgo.Go.toInterface(true));
                    } else if (__value__ == (("test_int" : stdgo.GoString))) {
                        _ok = _g.get() == (stdgo.Go.toInterface(((1 : stdgo.GoInt) : stdgo.GoInt)));
                    } else if (__value__ == (("test_int64" : stdgo.GoString))) {
                        _ok = _g.get() == (stdgo.Go.toInterface(((2i64 : stdgo.GoInt64) : stdgo.GoInt64)));
                    } else if (__value__ == (("test_uint" : stdgo.GoString))) {
                        _ok = _g.get() == (stdgo.Go.toInterface(((3u32 : stdgo.GoUInt) : stdgo.GoUInt)));
                    } else if (__value__ == (("test_uint64" : stdgo.GoString))) {
                        _ok = _g.get() == (stdgo.Go.toInterface(((4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)));
                    } else if (__value__ == (("test_string" : stdgo.GoString))) {
                        _ok = _g.get() == (stdgo.Go.toInterface(("5" : stdgo.GoString)));
                    } else if (__value__ == (("test_float64" : stdgo.GoString))) {
                        _ok = _g.get() == (stdgo.Go.toInterface((6 : stdgo.GoFloat64)));
                    } else if (__value__ == (("test_duration" : stdgo.GoString))) {
                        _ok = _g.get() == (stdgo.Go.toInterface(stdgo.Go.asInterface((7i64 : stdgo._internal.time.Time_Duration.Duration))));
                    };
                };
                if (!_ok) {
                    _t.errorf(("Visit: bad value %T(%v) for %s" : stdgo.GoString), _g.get(), _g.get(), stdgo.Go.toInterface(_f.name));
                };
            };
        };
        stdgo._internal.flag.Flag_visitAll.visitAll(_visitor);
    }
