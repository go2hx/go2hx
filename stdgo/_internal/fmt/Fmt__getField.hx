package stdgo._internal.fmt;
import stdgo._internal.errors.Errors;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.io.Io;
import stdgo._internal.internal.fmtsort.Fmtsort;
import stdgo._internal.math.Math;
function _getField(_v:stdgo._internal.reflect.Reflect_Value.Value, _i:stdgo.GoInt):stdgo._internal.reflect.Reflect_Value.Value {
        var _val = (_v.field(_i)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if (((_val.kind() == (20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && !_val.isNil() : Bool)) {
            _val = _val.elem()?.__copy__();
        };
        return _val?.__copy__();
    }
