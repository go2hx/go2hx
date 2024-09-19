package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function exampleValue_FieldByName():Void {
        {};
        var _u = ({ _firstName : ("John" : stdgo.GoString), _lastName : ("Doe" : stdgo.GoString) } : _internal.reflect_test.Reflect_test_T_exampleValue_FieldByName___localname___user_4433.T_exampleValue_FieldByName___localname___user_4433);
        var _s = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_u))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("Name:" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s.fieldByName(("firstName" : stdgo.GoString)))));
    }
