package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = _internal.reflect_test.Reflect_test__typeTests._typeTests, __tmp__1 = _internal.reflect_test.Reflect_test__valueTests._valueTests, __tmp__2 = _internal.reflect_test.Reflect_test___i.__i, __tmp__3 = _internal.reflect_test.Reflect_test__valueToStringTests._valueToStringTests, __tmp__4 = _internal.reflect_test.Reflect_test__appendTests._appendTests, __tmp__5 = _internal.reflect_test.Reflect_test__fn3._fn3, __tmp__6 = _internal.reflect_test.Reflect_test__deepEqualTests._deepEqualTests, __tmp__7 = _internal.reflect_test.Reflect_test__deepEqualPerfTests._deepEqualPerfTests, __tmp__8 = _internal.reflect_test.Reflect_test__allselect._allselect, __tmp__9 = _internal.reflect_test.Reflect_test__fieldTests._fieldTests, __tmp__10 = _internal.reflect_test.Reflect_test__tagGetTests._tagGetTests, __tmp__11 = _internal.reflect_test.Reflect_test_v.v, __tmp__12 = _internal.reflect_test.Reflect_test__convertTests._convertTests, __tmp__13 = _internal.reflect_test.Reflect_test__comparableTests._comparableTests, __tmp__14 = _internal.reflect_test.Reflect_test__nameTests._nameTests, __tmp__15 = _internal.reflect_test.Reflect_test__equalI._equalI, __tmp__16 = _internal.reflect_test.Reflect_test__equalSlice._equalSlice, __tmp__17 = _internal.reflect_test.Reflect_test__mapInterface._mapInterface, __tmp__18 = _internal.reflect_test.Reflect_test__valueEqualTests._valueEqualTests, __tmp__19 = _internal.reflect_test.Reflect_test__sourceAll._sourceAll, __tmp__20 = _internal.reflect_test.Reflect_test__implementsTests._implementsTests, __tmp__21 = _internal.reflect_test.Reflect_test__assignableTests._assignableTests, __tmp__22 = _internal.reflect_test.Reflect_test__fieldsTests._fieldsTests, __tmp__23 = _internal.reflect_test.Reflect_test___5.__5;
            _internal.reflect_test.Reflect_test__loop1._loop1 = (stdgo.Go.setRef(_internal.reflect_test.Reflect_test__loop2._loop2) : stdgo.Ref<_internal.reflect_test.Reflect_test_Loop.Loop>);
            _internal.reflect_test.Reflect_test__loop2._loop2 = (stdgo.Go.setRef(_internal.reflect_test.Reflect_test__loop1._loop1) : stdgo.Ref<_internal.reflect_test.Reflect_test_Loop.Loop>);
            _internal.reflect_test.Reflect_test__loopy1._loopy1 = stdgo.Go.toInterface((stdgo.Go.setRef(_internal.reflect_test.Reflect_test__loopy2._loopy2) : stdgo.Ref<_internal.reflect_test.Reflect_test_Loopy.Loopy>));
            _internal.reflect_test.Reflect_test__loopy2._loopy2 = stdgo.Go.toInterface((stdgo.Go.setRef(_internal.reflect_test.Reflect_test__loopy1._loopy1) : stdgo.Ref<_internal.reflect_test.Reflect_test_Loopy.Loopy>));
            _internal.reflect_test.Reflect_test__cycleMap1._cycleMap1 = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
            _internal.reflect_test.Reflect_test__cycleMap1._cycleMap1[("cycle" : stdgo.GoString)] = stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__cycleMap1._cycleMap1);
            _internal.reflect_test.Reflect_test__cycleMap2._cycleMap2 = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
            _internal.reflect_test.Reflect_test__cycleMap2._cycleMap2[("cycle" : stdgo.GoString)] = stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__cycleMap2._cycleMap2);
            _internal.reflect_test.Reflect_test__cycleMap3._cycleMap3 = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
            _internal.reflect_test.Reflect_test__cycleMap3._cycleMap3[("different" : stdgo.GoString)] = stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__cycleMap3._cycleMap3);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
