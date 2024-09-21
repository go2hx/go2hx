package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function testValues(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _check = (function(_c:stdgo._internal.context.Context_Context.Context, _nm:stdgo.GoString, _v1:stdgo.GoString, _v2:stdgo.GoString, _v3:stdgo.GoString):Void {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_c.value(stdgo.Go.toInterface(_internal.context_test.Context_test__k1._k1)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                } catch(_) {
                    { _0 : ("" : stdgo.GoString), _1 : false };
                }, _v = __tmp__._0, _ok = __tmp__._1;
                if (((_ok == (_v1.length == (0 : stdgo.GoInt))) || (_v != _v1) : Bool)) {
                    _t.errorf(("%s.Value(k1).(string) = %q, %t want %q, %t" : stdgo.GoString), stdgo.Go.toInterface(_nm), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_v1), stdgo.Go.toInterface((_v1.length) != ((0 : stdgo.GoInt))));
                };
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_c.value(stdgo.Go.toInterface(_internal.context_test.Context_test__k2._k2)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                } catch(_) {
                    { _0 : ("" : stdgo.GoString), _1 : false };
                }, _v = __tmp__._0, _ok = __tmp__._1;
                if (((_ok == (_v2.length == (0 : stdgo.GoInt))) || (_v != _v2) : Bool)) {
                    _t.errorf(("%s.Value(k2).(string) = %q, %t want %q, %t" : stdgo.GoString), stdgo.Go.toInterface(_nm), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_v2), stdgo.Go.toInterface((_v2.length) != ((0 : stdgo.GoInt))));
                };
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_c.value(stdgo.Go.toInterface(_internal.context_test.Context_test__k3._k3)) : stdgo.GoString)) : stdgo.GoString), _1 : true };
                } catch(_) {
                    { _0 : ("" : stdgo.GoString), _1 : false };
                }, _v = __tmp__._0, _ok = __tmp__._1;
                if (((_ok == (_v3.length == (0 : stdgo.GoInt))) || (_v != _v3) : Bool)) {
                    _t.errorf(("%s.Value(k3).(string) = %q, %t want %q, %t" : stdgo.GoString), stdgo.Go.toInterface(_nm), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_v3), stdgo.Go.toInterface((_v3.length) != ((0 : stdgo.GoInt))));
                };
            };
        } : (stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString, stdgo.GoString, stdgo.GoString) -> Void);
        var _c0 = (stdgo._internal.context.Context_background.background() : stdgo._internal.context.Context_Context.Context);
        _check(_c0, ("c0" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__());
        var _c1 = (stdgo._internal.context.Context_withValue.withValue(stdgo._internal.context.Context_background.background(), stdgo.Go.toInterface(_internal.context_test.Context_test__k1._k1), stdgo.Go.toInterface(("c1k1" : stdgo.GoString))) : stdgo._internal.context.Context_Context.Context);
        _check(_c1, ("c1" : stdgo.GoString), ("c1k1" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__());
        {
            var __0 = (stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_c1))?.__copy__() : stdgo.GoString), __1 = ("context.Background.WithValue(type context_test.key1, val c1k1)" : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("c.String() = %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        var _c2 = (stdgo._internal.context.Context_withValue.withValue(_c1, stdgo.Go.toInterface(_internal.context_test.Context_test__k2._k2), stdgo.Go.toInterface(("c2k2" : stdgo.GoString))) : stdgo._internal.context.Context_Context.Context);
        _check(_c2, ("c2" : stdgo.GoString), ("c1k1" : stdgo.GoString), ("c2k2" : stdgo.GoString), stdgo.Go.str()?.__copy__());
        var _c3 = (stdgo._internal.context.Context_withValue.withValue(_c2, stdgo.Go.toInterface(_internal.context_test.Context_test__k3._k3), stdgo.Go.toInterface(("c3k3" : stdgo.GoString))) : stdgo._internal.context.Context_Context.Context);
        _check(_c3, ("c2" : stdgo.GoString), ("c1k1" : stdgo.GoString), ("c2k2" : stdgo.GoString), ("c3k3" : stdgo.GoString));
        var _c4 = (stdgo._internal.context.Context_withValue.withValue(_c3, stdgo.Go.toInterface(_internal.context_test.Context_test__k1._k1), (null : stdgo.AnyInterface)) : stdgo._internal.context.Context_Context.Context);
        _check(_c4, ("c4" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("c2k2" : stdgo.GoString), ("c3k3" : stdgo.GoString));
        var _o0 = (new _internal.context_test.Context_test_T_otherContext.T_otherContext(stdgo._internal.context.Context_background.background()) : _internal.context_test.Context_test_T_otherContext.T_otherContext);
        _check(stdgo.Go.asInterface(_o0), ("o0" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__());
        var _o1 = (new _internal.context_test.Context_test_T_otherContext.T_otherContext(stdgo._internal.context.Context_withValue.withValue(stdgo._internal.context.Context_background.background(), stdgo.Go.toInterface(_internal.context_test.Context_test__k1._k1), stdgo.Go.toInterface(("c1k1" : stdgo.GoString)))) : _internal.context_test.Context_test_T_otherContext.T_otherContext);
        _check(stdgo.Go.asInterface(_o1), ("o1" : stdgo.GoString), ("c1k1" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__());
        var _o2 = (stdgo._internal.context.Context_withValue.withValue(stdgo.Go.asInterface(_o1), stdgo.Go.toInterface(_internal.context_test.Context_test__k2._k2), stdgo.Go.toInterface(("o2k2" : stdgo.GoString))) : stdgo._internal.context.Context_Context.Context);
        _check(_o2, ("o2" : stdgo.GoString), ("c1k1" : stdgo.GoString), ("o2k2" : stdgo.GoString), stdgo.Go.str()?.__copy__());
        var _o3 = (new _internal.context_test.Context_test_T_otherContext.T_otherContext(_c4) : _internal.context_test.Context_test_T_otherContext.T_otherContext);
        _check(stdgo.Go.asInterface(_o3), ("o3" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("c2k2" : stdgo.GoString), ("c3k3" : stdgo.GoString));
        var _o4 = (stdgo._internal.context.Context_withValue.withValue(stdgo.Go.asInterface(_o3), stdgo.Go.toInterface(_internal.context_test.Context_test__k3._k3), (null : stdgo.AnyInterface)) : stdgo._internal.context.Context_Context.Context);
        _check(_o4, ("o4" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("c2k2" : stdgo.GoString), stdgo.Go.str()?.__copy__());
    }
