package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.SS_asInterface) class SS_static_extension {
    @:keep
    static public function unmarshalJSON(____:stdgo._internal.encoding.json.Json_SS.SS,  _:stdgo.Pointer<stdgo._internal.encoding.json.Json_SS.SS>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("number" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.str() : stdgo._internal.encoding.json.Json_SS.SS)))) } : stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>));
    }
}
