package stdgo._internal.encoding.asn1;
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.T_invalidUnmarshalError_asInterface) class T_invalidUnmarshalError_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_T_invalidUnmarshalError.T_invalidUnmarshalError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_T_invalidUnmarshalError.T_invalidUnmarshalError> = _e;
        if ((_e.type.string() : String) == (null.string() : String)) {
            return ("asn1: Unmarshal recipient value is nil" : stdgo.GoString);
        };
        if (_e.type.kind() != ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            return (("asn1: Unmarshal recipient value is non-pointer " : stdgo.GoString) + (_e.type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return (("asn1: Unmarshal recipient value is nil " : stdgo.GoString) + (_e.type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
