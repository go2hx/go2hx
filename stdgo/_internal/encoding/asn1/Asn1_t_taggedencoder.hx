package stdgo._internal.encoding.asn1;
@:structInit @:using(stdgo._internal.encoding.asn1.Asn1_t_taggedencoder_static_extension.T_taggedEncoder_static_extension) class T_taggedEncoder {
    public var _scratch : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
    public var _tag : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder = (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder);
    public var _body : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder = (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder);
    public function new(?_scratch:stdgo.GoArray<stdgo.GoUInt8>, ?_tag:stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder, ?_body:stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder) {
        if (_scratch != null) this._scratch = _scratch;
        if (_tag != null) this._tag = _tag;
        if (_body != null) this._body = _body;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_taggedEncoder(_scratch, _tag, _body);
    }
}
