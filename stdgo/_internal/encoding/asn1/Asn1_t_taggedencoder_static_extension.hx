package stdgo._internal.encoding.asn1;
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.T_taggedEncoder_asInterface) class T_taggedEncoder_static_extension {
    @:keep
    @:tdfield
    static public function encode( _t:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_t_taggedencoder.T_taggedEncoder>, _dst:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_t_taggedencoder.T_taggedEncoder> = _t;
        (@:checkr _t ?? throw "null pointer dereference")._tag.encode(_dst);
        (@:checkr _t ?? throw "null pointer dereference")._body.encode((_dst.__slice__((@:checkr _t ?? throw "null pointer dereference")._tag.len()) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function len( _t:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_t_taggedencoder.T_taggedEncoder>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_t_taggedencoder.T_taggedEncoder> = _t;
        return ((@:checkr _t ?? throw "null pointer dereference")._tag.len() + (@:checkr _t ?? throw "null pointer dereference")._body.len() : stdgo.GoInt);
    }
}
