package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testMethodPkgPath(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _typ = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : stdgo.Ref<_internal.reflect_test.Reflect_test_T__interface_1.T__interface_1>))).elem() : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _tests = (new stdgo.Slice<_internal.reflect_test.Reflect_test_T__struct_69.T__struct_69>(4, 4, ...[({ _name : ("X" : stdgo.GoString), _pkgPath : stdgo.Go.str()?.__copy__(), _exported : true } : _internal.reflect_test.Reflect_test_T__struct_69.T__struct_69), ({ _name : ("Y" : stdgo.GoString), _pkgPath : stdgo.Go.str()?.__copy__(), _exported : true } : _internal.reflect_test.Reflect_test_T__struct_69.T__struct_69), ({ _name : ("x" : stdgo.GoString), _pkgPath : ("reflect_test" : stdgo.GoString), _exported : false } : _internal.reflect_test.Reflect_test_T__struct_69.T__struct_69), ({ _name : ("y" : stdgo.GoString), _pkgPath : ("reflect_test" : stdgo.GoString), _exported : false } : _internal.reflect_test.Reflect_test_T__struct_69.T__struct_69)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _pkgPath : ("" : stdgo.GoString), _exported : false } : _internal.reflect_test.Reflect_test_T__struct_69.T__struct_69)])) : stdgo.Slice<_internal.reflect_test.Reflect_test_T__struct_69.T__struct_69>);
        for (__6 => _test in _tests) {
            var __tmp__ = _typ.methodByName(_test._name?.__copy__()), _m:stdgo._internal.reflect.Reflect_Method.Method = __tmp__._0, __7:Bool = __tmp__._1;
            {
                var __0 = (_m.pkgPath?.__copy__() : stdgo.GoString), __1 = (_test._pkgPath?.__copy__() : stdgo.GoString);
var _want = __1, _got = __0;
                if (_got != (_want)) {
                    _t.errorf(("MethodByName(%q).PkgPath = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
            {
                var __0 = (_m.isExported() : Bool), __1 = (_test._exported : Bool);
var _want = __1, _got = __0;
                if (_got != (_want)) {
                    _t.errorf(("MethodByName(%q).IsExported = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        };
    }
