package stdgo._internal.encoding.xml;
function _receiverType(_val:stdgo.AnyInterface):stdgo.GoString {
        var _t = (stdgo._internal.reflect.Reflect_typeof.typeOf(_val) : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L198"
        if (_t.name() != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L199"
            return (_t.string() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L201"
        return ((("(" : stdgo.GoString) + (_t.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
