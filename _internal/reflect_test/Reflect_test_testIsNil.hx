package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testIsNil(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _doNil = (new stdgo.Slice<stdgo.AnyInterface>(7, 7, ...[stdgo.Go.toInterface(stdgo.Go.asInterface(({ _x : (null : stdgo.Pointer<stdgo.GoInt>) } : _internal.reflect_test.Reflect_test_T__struct_48.T__struct_48))), stdgo.Go.toInterface(stdgo.Go.asInterface(({ _x : (null : stdgo.AnyInterface) } : _internal.reflect_test.Reflect_test_T__struct_49.T__struct_49))), stdgo.Go.toInterface(stdgo.Go.asInterface(({ _x : (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) } : _internal.reflect_test.Reflect_test_T__struct_50.T__struct_50))), stdgo.Go.toInterface(stdgo.Go.asInterface(({ _x : null } : _internal.reflect_test.Reflect_test_T__struct_51.T__struct_51))), stdgo.Go.toInterface(stdgo.Go.asInterface(({ _x : (null : stdgo.Chan<stdgo.GoInt>) } : _internal.reflect_test.Reflect_test_T__struct_52.T__struct_52))), stdgo.Go.toInterface(stdgo.Go.asInterface(({ _x : (null : stdgo.Slice<stdgo.GoString>) } : _internal.reflect_test.Reflect_test_T__struct_53.T__struct_53))), stdgo.Go.toInterface(stdgo.Go.asInterface(({ _x : @:default_value null } : _internal.reflect_test.Reflect_test_T__struct_54.T__struct_54)))]) : stdgo.Slice<stdgo.AnyInterface>);
        for (__7 => _ts in _doNil) {
            var _ty = (stdgo._internal.reflect.Reflect_typeOf.typeOf(_ts).field((0 : stdgo.GoInt)).type : stdgo._internal.reflect.Reflect_Type_.Type_);
            var _v = (stdgo._internal.reflect.Reflect_zero.zero(_ty)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            _v.isNil();
        };
        var _pi:_internal.reflect_test.Reflect_test_T__struct_48.T__struct_48 = ({ _x : (null : stdgo.Pointer<stdgo.GoInt>) } : _internal.reflect_test.Reflect_test_T__struct_48.T__struct_48);
        _internal.reflect_test.Reflect_test_nil.nil(stdgo.Go.toInterface(stdgo.Go.asInterface(_pi)), _t);
        _pi._x = stdgo.Go.pointer((0 : stdgo.GoInt));
        _internal.reflect_test.Reflect_test_notNil.notNil(stdgo.Go.toInterface(stdgo.Go.asInterface(_pi)), _t);
        var _si:_internal.reflect_test.Reflect_test_T__struct_45.T__struct_45 = ({ _x : (null : stdgo.Slice<stdgo.GoInt>) } : _internal.reflect_test.Reflect_test_T__struct_45.T__struct_45);
        _internal.reflect_test.Reflect_test_nil.nil(stdgo.Go.toInterface(stdgo.Go.asInterface(_si)), _t);
        _si._x = (new stdgo.Slice<stdgo.GoInt>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        _internal.reflect_test.Reflect_test_notNil.notNil(stdgo.Go.toInterface(stdgo.Go.asInterface(_si)), _t);
        var _ci:_internal.reflect_test.Reflect_test_T__struct_52.T__struct_52 = ({ _x : (null : stdgo.Chan<stdgo.GoInt>) } : _internal.reflect_test.Reflect_test_T__struct_52.T__struct_52);
        _internal.reflect_test.Reflect_test_nil.nil(stdgo.Go.toInterface(stdgo.Go.asInterface(_ci)), _t);
        _ci._x = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        _internal.reflect_test.Reflect_test_notNil.notNil(stdgo.Go.toInterface(stdgo.Go.asInterface(_ci)), _t);
        var _mi:_internal.reflect_test.Reflect_test_T__struct_55.T__struct_55 = ({ _x : (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>) } : _internal.reflect_test.Reflect_test_T__struct_55.T__struct_55);
        _internal.reflect_test.Reflect_test_nil.nil(stdgo.Go.toInterface(stdgo.Go.asInterface(_mi)), _t);
        _mi._x = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
        _internal.reflect_test.Reflect_test_notNil.notNil(stdgo.Go.toInterface(stdgo.Go.asInterface(_mi)), _t);
        var _ii:_internal.reflect_test.Reflect_test_T__struct_49.T__struct_49 = ({ _x : (null : stdgo.AnyInterface) } : _internal.reflect_test.Reflect_test_T__struct_49.T__struct_49);
        _internal.reflect_test.Reflect_test_nil.nil(stdgo.Go.toInterface(stdgo.Go.asInterface(_ii)), _t);
        _ii._x = stdgo.Go.toInterface((2 : stdgo.GoInt));
        _internal.reflect_test.Reflect_test_notNil.notNil(stdgo.Go.toInterface(stdgo.Go.asInterface(_ii)), _t);
        var _fi:_internal.reflect_test.Reflect_test_T__struct_56.T__struct_56 = ({ _x : null } : _internal.reflect_test.Reflect_test_T__struct_56.T__struct_56);
        _internal.reflect_test.Reflect_test_nil.nil(stdgo.Go.toInterface(stdgo.Go.asInterface(_fi)), _t);
        _fi._x = _internal.reflect_test.Reflect_test_testIsNil.testIsNil;
        _internal.reflect_test.Reflect_test_notNil.notNil(stdgo.Go.toInterface(stdgo.Go.asInterface(_fi)), _t);
    }
