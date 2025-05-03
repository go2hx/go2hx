package stdgo._internal.flag;
function _newTextValue(_val:stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler, _p:stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler):stdgo._internal.flag.Flag_t_textvalue.T_textValue {
        var _ptrVal = (stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_p))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L303"
        if (_ptrVal.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L304"
            throw stdgo.Go.toInterface(("variable value type must be a pointer" : stdgo.GoString));
        };
        var _defVal = (stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_val))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L307"
        if (_defVal.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            _defVal = _defVal.elem()?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L310"
        if (!((_defVal.type().string() : String) == (_ptrVal.type().elem().string() : String))) {
            //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L311"
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("default type does not match variable type: %v != %v" : stdgo.GoString), stdgo.Go.toInterface(_defVal.type()), stdgo.Go.toInterface(_ptrVal.type().elem())));
        };
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L313"
        _ptrVal.elem().set(_defVal?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L314"
        return (new stdgo._internal.flag.Flag_t_textvalue.T_textValue(_p) : stdgo._internal.flag.Flag_t_textvalue.T_textValue);
    }
