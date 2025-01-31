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
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.T_taggedEncoder_asInterface) class T_taggedEncoder_static_extension {
    @:keep
    @:tdfield
    static public function encode( _t:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_T_taggedEncoder.T_taggedEncoder>, _dst:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_T_taggedEncoder.T_taggedEncoder> = _t;
        (@:checkr _t ?? throw "null pointer dereference")._tag.encode(_dst);
        (@:checkr _t ?? throw "null pointer dereference")._body.encode((_dst.__slice__((@:checkr _t ?? throw "null pointer dereference")._tag.len()) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function len( _t:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_T_taggedEncoder.T_taggedEncoder>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_T_taggedEncoder.T_taggedEncoder> = _t;
        return ((@:checkr _t ?? throw "null pointer dereference")._tag.len() + (@:checkr _t ?? throw "null pointer dereference")._body.len() : stdgo.GoInt);
    }
}
