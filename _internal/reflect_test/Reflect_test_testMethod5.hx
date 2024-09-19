package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testMethod5(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var checkF = (function(_name:stdgo.GoString, _f:(stdgo.GoInt, stdgo.GoUInt8) -> { var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; }, _inc:stdgo.GoInt):Void {
            var __tmp__ = _f((1000 : stdgo.GoInt), (99 : stdgo.GoUInt8)), _b:stdgo.GoUInt8 = __tmp__._0, _x:stdgo.GoInt = __tmp__._1;
            if (((_b != (99 : stdgo.GoUInt8)) || (_x != ((1000 : stdgo.GoInt) + _inc : stdgo.GoInt)) : Bool)) {
                _t.errorf(("%s(1000, 99) = %v, %v, want 99, %v" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(((1000 : stdgo.GoInt) + _inc : stdgo.GoInt)));
            };
        } : (stdgo.GoString, (stdgo.GoInt, stdgo.GoUInt8) -> { var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; }, stdgo.GoInt) -> Void);
        var checkV = (function(_name:stdgo.GoString, _i:stdgo._internal.reflect.Reflect_Value.Value, _inc:stdgo.GoInt):Void {
            var _bx = _i.method((0 : stdgo.GoInt)).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(2, 2, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((1000 : stdgo.GoInt)))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((99 : stdgo.GoUInt8)))?.__copy__()].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>));
            var _b = (_bx[(0 : stdgo.GoInt)].interface_() : stdgo.AnyInterface);
            var _x = (_bx[(1 : stdgo.GoInt)].interface_() : stdgo.AnyInterface);
            if (((_b != stdgo.Go.toInterface((99 : stdgo.GoUInt8))) || (_x != stdgo.Go.toInterface(((1000 : stdgo.GoInt) + _inc : stdgo.GoInt))) : Bool)) {
                _t.errorf(("direct %s.M(1000, 99) = %v, %v, want 99, %v" : stdgo.GoString), stdgo.Go.toInterface(_name), _b, _x, stdgo.Go.toInterface(((1000 : stdgo.GoInt) + _inc : stdgo.GoInt)));
            };
            checkF((_name + (".M" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (stdgo.Go.typeAssert((_i.method((0 : stdgo.GoInt)).interface_() : (stdgo.GoInt, stdgo.GoUInt8) -> { var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; })) : (stdgo.GoInt, stdgo.GoUInt8) -> { var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; }), _inc);
        } : (stdgo.GoString, stdgo._internal.reflect.Reflect_Value.Value, stdgo.GoInt) -> Void);
        var tinterType:stdgo._internal.reflect.Reflect_Type_.Type_ = stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((stdgo.Go.setRef((null : _internal.reflect_test.Reflect_test_Tinter.Tinter)) : stdgo.Ref<_internal.reflect_test.Reflect_test_Tinter.Tinter>))).elem();
        var checkI = (function(_name:stdgo.GoString, _i:stdgo.AnyInterface, _inc:stdgo.GoInt):Void {
            var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_i)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            checkV(_name?.__copy__(), _v?.__copy__(), _inc);
            checkV(((("(i=" : stdgo.GoString) + _name?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _v.convert(tinterType)?.__copy__(), _inc);
        } : (stdgo.GoString, stdgo.AnyInterface, stdgo.GoInt) -> Void);
        var _sv = ((1 : _internal.reflect_test.Reflect_test_Tsmallv.Tsmallv) : _internal.reflect_test.Reflect_test_Tsmallv.Tsmallv);
        checkI(("sv" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_sv)), (1 : stdgo.GoInt));
        checkI(("&sv" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_sv)), (1 : stdgo.GoInt));
        var _sp = ((2 : _internal.reflect_test.Reflect_test_Tsmallp.Tsmallp) : _internal.reflect_test.Reflect_test_Tsmallp.Tsmallp);
        checkI(("&sp" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_sp)), (2 : stdgo.GoInt));
        var _wv = ((3 : _internal.reflect_test.Reflect_test_Twordv.Twordv) : _internal.reflect_test.Reflect_test_Twordv.Twordv);
        checkI(("wv" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_wv)), (3 : stdgo.GoInt));
        checkI(("&wv" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_wv)), (3 : stdgo.GoInt));
        var _wp = ((4 : _internal.reflect_test.Reflect_test_Twordp.Twordp) : _internal.reflect_test.Reflect_test_Twordp.Twordp);
        checkI(("&wp" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_wp)), (4 : stdgo.GoInt));
        var _bv = ((new stdgo.GoArray<stdgo.GoUIntptr>(2, 2, ...[(5 : stdgo.GoUIntptr), (6 : stdgo.GoUIntptr)]) : stdgo.GoArray<stdgo.GoUIntptr>) : _internal.reflect_test.Reflect_test_Tbigv.Tbigv);
        checkI(("bv" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_bv)), (11 : stdgo.GoInt));
        checkI(("&bv" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_bv) : stdgo.Ref<_internal.reflect_test.Reflect_test_Tbigv.Tbigv>))), (11 : stdgo.GoInt));
        var _bp = ((new stdgo.GoArray<stdgo.GoUIntptr>(2, 2, ...[(7 : stdgo.GoUIntptr), (8 : stdgo.GoUIntptr)]) : stdgo.GoArray<stdgo.GoUIntptr>) : _internal.reflect_test.Reflect_test_Tbigp.Tbigp);
        checkI(("&bp" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_bp) : stdgo.Ref<_internal.reflect_test.Reflect_test_Tbigp.Tbigp>))), (15 : stdgo.GoInt));
        var _t4 = (new _internal.reflect_test.Reflect_test_Tm4.Tm4() : _internal.reflect_test.Reflect_test_Tm4.Tm4);
        var _t3 = (new _internal.reflect_test.Reflect_test_Tm3.Tm3((stdgo.Go.setRef(_t4) : stdgo.Ref<_internal.reflect_test.Reflect_test_Tm4.Tm4>)) : _internal.reflect_test.Reflect_test_Tm3.Tm3);
        var _t2 = (new _internal.reflect_test.Reflect_test_Tm2.Tm2((stdgo.Go.setRef(_t3) : stdgo.Ref<_internal.reflect_test.Reflect_test_Tm3.Tm3>)) : _internal.reflect_test.Reflect_test_Tm2.Tm2);
        var _t1 = (new _internal.reflect_test.Reflect_test_Tm1.Tm1(_t2?.__copy__()) : _internal.reflect_test.Reflect_test_Tm1.Tm1);
        checkI(("t4" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t4)), (40 : stdgo.GoInt));
        checkI(("&t4" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_t4) : stdgo.Ref<_internal.reflect_test.Reflect_test_Tm4.Tm4>))), (40 : stdgo.GoInt));
        checkI(("t3" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t3)), (40 : stdgo.GoInt));
        checkI(("&t3" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_t3) : stdgo.Ref<_internal.reflect_test.Reflect_test_Tm3.Tm3>))), (40 : stdgo.GoInt));
        checkI(("t2" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)), (40 : stdgo.GoInt));
        checkI(("&t2" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_t2) : stdgo.Ref<_internal.reflect_test.Reflect_test_Tm2.Tm2>))), (40 : stdgo.GoInt));
        checkI(("t1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)), (40 : stdgo.GoInt));
        checkI(("&t1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_t1) : stdgo.Ref<_internal.reflect_test.Reflect_test_Tm1.Tm1>))), (40 : stdgo.GoInt));
        var _tnil:_internal.reflect_test.Reflect_test_Tinter.Tinter = (null : _internal.reflect_test.Reflect_test_Tinter.Tinter);
        var _vnil = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_tnil) : stdgo.Ref<_internal.reflect_test.Reflect_test_Tinter.Tinter>))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("Method" : stdgo.GoString), function():Void {
            _vnil.method((0 : stdgo.GoInt));
        });
    }
