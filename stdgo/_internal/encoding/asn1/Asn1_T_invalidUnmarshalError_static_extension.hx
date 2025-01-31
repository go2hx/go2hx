package stdgo._internal.encoding.asn1;
import stdgo._internal.math.big.Big;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.T_invalidUnmarshalError_asInterface) class T_invalidUnmarshalError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_T_invalidUnmarshalError.T_invalidUnmarshalError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_T_invalidUnmarshalError.T_invalidUnmarshalError> = _e;
        if (((@:checkr _e ?? throw "null pointer dereference").type.string() : String) == (null.string() : String)) {
            return ("asn1: Unmarshal recipient value is nil" : stdgo.GoString);
        };
        if ((@:checkr _e ?? throw "null pointer dereference").type.kind() != ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            return (("asn1: Unmarshal recipient value is non-pointer " : stdgo.GoString) + ((@:checkr _e ?? throw "null pointer dereference").type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return (("asn1: Unmarshal recipient value is nil " : stdgo.GoString) + ((@:checkr _e ?? throw "null pointer dereference").type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
