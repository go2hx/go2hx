package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.UnmarshalTypeError_asInterface) class UnmarshalTypeError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError> = _e;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L134"
        if ((((@:checkr _e ?? throw "null pointer dereference").struct_ != (stdgo.Go.str() : stdgo.GoString)) || ((@:checkr _e ?? throw "null pointer dereference").field != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L135"
            return (((((((("json: cannot unmarshal " : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").value?.__copy__() : stdgo.GoString) + (" into Go struct field " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").struct_?.__copy__() : stdgo.GoString) + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").field?.__copy__() : stdgo.GoString) + (" of type " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ((@:checkr _e ?? throw "null pointer dereference").type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L137"
        return (((("json: cannot unmarshal " : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").value?.__copy__() : stdgo.GoString) + (" into Go value of type " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ((@:checkr _e ?? throw "null pointer dereference").type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
