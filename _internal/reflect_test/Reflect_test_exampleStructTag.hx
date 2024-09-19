package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function exampleStructTag():Void {
        {};
        var _s = (new _internal.reflect_test.Reflect_test_T_exampleStructTag___localname___S_1989.T_exampleStructTag___localname___S_1989() : _internal.reflect_test.Reflect_test_T_exampleStructTag___localname___S_1989.T_exampleStructTag___localname___S_1989);
        var _st = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_s)) : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _field = (_st.field((0 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_StructField.StructField);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_field.tag.get(("color" : stdgo.GoString))), stdgo.Go.toInterface(_field.tag.get(("species" : stdgo.GoString))));
    }
