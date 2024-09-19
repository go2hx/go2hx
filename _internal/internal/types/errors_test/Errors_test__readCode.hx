package _internal.internal.types.errors_test;
import stdgo._internal.go.types.Types;
function _readCode(_err:stdgo._internal.go.types.Types_Error.Error):stdgo.GoInt {
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_err)))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        return (_v.fieldByName(("go116code" : stdgo.GoString)).int_() : stdgo.GoInt);
    }
