package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.SS_asInterface) class SS_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function unmarshalJSON( _:stdgo.Pointer<stdgo._internal.encoding.json.Json_ss.SS>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L60"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("number" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.str() : stdgo._internal.encoding.json.Json_ss.SS)))) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>));
    }
}
