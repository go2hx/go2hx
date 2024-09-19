package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function exampleStructTag_Lookup():Void {
        {};
        var _s = (new _internal.reflect_test.Reflect_test_T_exampleStructTag_Lookup___localname___S_2238.T_exampleStructTag_Lookup___localname___S_2238() : _internal.reflect_test.Reflect_test_T_exampleStructTag_Lookup___localname___S_2238.T_exampleStructTag_Lookup___localname___S_2238);
        var _st = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_s)) : stdgo._internal.reflect.Reflect_Type_.Type_);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _st.numField() : Bool), _i++, {
                var _field = (_st.field(_i)?.__copy__() : stdgo._internal.reflect.Reflect_StructField.StructField);
                {
                    var __tmp__ = _field.tag.lookup(("alias" : stdgo.GoString)), _alias:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        if (_alias == (stdgo.Go.str())) {
                            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("(blank)" : stdgo.GoString)));
                        } else {
                            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_alias));
                        };
                    } else {
                        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("(not specified)" : stdgo.GoString)));
                    };
                };
            });
        };
    }
