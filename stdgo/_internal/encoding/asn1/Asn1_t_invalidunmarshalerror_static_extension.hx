package stdgo._internal.encoding.asn1;
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.T_invalidUnmarshalError_asInterface) class T_invalidUnmarshalError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_t_invalidunmarshalerror.T_invalidUnmarshalError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_t_invalidunmarshalerror.T_invalidUnmarshalError> = _e;
        if (((@:checkr _e ?? throw "null pointer dereference").type.string() : String) == (null.string() : String)) {
            return ("asn1: Unmarshal recipient value is nil" : stdgo.GoString);
        };
        if ((@:checkr _e ?? throw "null pointer dereference").type.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            return (("asn1: Unmarshal recipient value is non-pointer " : stdgo.GoString) + ((@:checkr _e ?? throw "null pointer dereference").type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return (("asn1: Unmarshal recipient value is nil " : stdgo.GoString) + ((@:checkr _e ?? throw "null pointer dereference").type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
