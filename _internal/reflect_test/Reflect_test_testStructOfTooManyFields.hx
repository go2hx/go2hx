package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testStructOfTooManyFields(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tt = (stdgo._internal.reflect.Reflect_structOf.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(1, 1, ...[({ name : ("Time" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time)))), anonymous : true } : stdgo._internal.reflect.Reflect_StructField.StructField)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>)) : stdgo._internal.reflect.Reflect_Type_.Type_);
        {
            var __tmp__ = _tt.methodByName(("After" : stdgo.GoString)), __6:stdgo._internal.reflect.Reflect_Method.Method = __tmp__._0, _present:Bool = __tmp__._1;
            if (!_present) {
                _t.errorf(("Expected method `After` to be found" : stdgo.GoString));
            };
        };
    }
