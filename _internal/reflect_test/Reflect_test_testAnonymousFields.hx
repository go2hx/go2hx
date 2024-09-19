package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testAnonymousFields(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _field:stdgo._internal.reflect.Reflect_StructField.StructField = ({} : stdgo._internal.reflect.Reflect_StructField.StructField);
        var _ok:Bool = false;
        var _t1:_internal.reflect_test.Reflect_test_T1.T1 = ({} : _internal.reflect_test.Reflect_test_T1.T1);
        var _type1 = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_t1)) : stdgo._internal.reflect.Reflect_Type_.Type_);
        {
            {
                var __tmp__ = _type1.fieldByName(("int" : stdgo.GoString));
                _field = __tmp__._0?.__copy__();
                _ok = __tmp__._1;
            };
            if (!_ok) {
                _t.fatal(stdgo.Go.toInterface(("no field \'int\'" : stdgo.GoString)));
            };
        };
        if (_field.index[(0 : stdgo.GoInt)] != ((1 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("field index should be 1; is" : stdgo.GoString)), stdgo.Go.toInterface(_field.index));
        };
    }
