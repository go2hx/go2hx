package stdgo._internal.encoding.xml;
function _receiverType(_val:stdgo.AnyInterface):stdgo.GoString {
        var _t = (stdgo._internal.reflect.Reflect_typeof.typeOf(_val) : stdgo._internal.reflect.Reflect_type_.Type_);
        if (_t.name() != ((stdgo.Go.str() : stdgo.GoString))) {
            return (_t.string() : stdgo.GoString)?.__copy__();
        };
        return ((("(" : stdgo.GoString) + (_t.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
