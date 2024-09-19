package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.MarshalerError_asInterface) class MarshalerError_static_extension {
    @:keep
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError> = _e;
        return _e.err;
    }
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError> = _e;
        var _srcFunc = (_e._sourceFunc?.__copy__() : stdgo.GoString);
        if (_srcFunc == (stdgo.Go.str())) {
            _srcFunc = ("MarshalJSON" : stdgo.GoString);
        };
        return (((((("json: error calling " : stdgo.GoString) + _srcFunc?.__copy__() : stdgo.GoString) + (" for type " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_e.type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _e.err.error()?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
