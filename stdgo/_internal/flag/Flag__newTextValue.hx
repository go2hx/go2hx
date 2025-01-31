package stdgo._internal.flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.sort.Sort;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
function _newTextValue(_val:stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler, _p:stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler):stdgo._internal.flag.Flag_T_textValue.T_textValue {
        var _ptrVal = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_p))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if (_ptrVal.kind() != ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            throw stdgo.Go.toInterface(("variable value type must be a pointer" : stdgo.GoString));
        };
        var _defVal = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_val))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if (_defVal.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            _defVal = _defVal.elem()?.__copy__();
        };
        if (!((_defVal.type().string() : String) == (_ptrVal.type().elem().string() : String))) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("default type does not match variable type: %v != %v" : stdgo.GoString), stdgo.Go.toInterface(_defVal.type()), stdgo.Go.toInterface(_ptrVal.type().elem())));
        };
        _ptrVal.elem().set(_defVal?.__copy__());
        return (new stdgo._internal.flag.Flag_T_textValue.T_textValue(_p) : stdgo._internal.flag.Flag_T_textValue.T_textValue);
    }
