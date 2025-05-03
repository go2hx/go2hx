package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.MarshalerError_asInterface) class MarshalerError_static_extension {
    @:keep
    @:tdfield
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_marshalererror.MarshalerError>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_marshalererror.MarshalerError> = _e;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L246"
        return (@:checkr _e ?? throw "null pointer dereference").err;
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_marshalererror.MarshalerError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_marshalererror.MarshalerError> = _e;
        var _srcFunc = ((@:checkr _e ?? throw "null pointer dereference")._sourceFunc?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L237"
        if (_srcFunc == ((stdgo.Go.str() : stdgo.GoString))) {
            _srcFunc = ("MarshalJSON" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L240"
        return (((((("json: error calling " : stdgo.GoString) + _srcFunc?.__copy__() : stdgo.GoString) + (" for type " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ((@:checkr _e ?? throw "null pointer dereference").type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").err.error()?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
