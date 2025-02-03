package stdgo.encoding.asn1;
@:structInit @:using(stdgo.encoding.asn1.Asn1.T_taggedEncoder_static_extension) abstract T_taggedEncoder(stdgo._internal.encoding.asn1.Asn1_T_taggedEncoder.T_taggedEncoder) from stdgo._internal.encoding.asn1.Asn1_T_taggedEncoder.T_taggedEncoder to stdgo._internal.encoding.asn1.Asn1_T_taggedEncoder.T_taggedEncoder {
    public var _scratch(get, set) : haxe.ds.Vector<std.UInt>;
    function get__scratch():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._scratch) i]);
    function set__scratch(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._scratch = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _tag(get, set) : T_encoder;
    function get__tag():T_encoder return this._tag;
    function set__tag(v:T_encoder):T_encoder {
        this._tag = v;
        return v;
    }
    public var _body(get, set) : T_encoder;
    function get__body():T_encoder return this._body;
    function set__body(v:T_encoder):T_encoder {
        this._body = v;
        return v;
    }
    public function new(?_scratch:haxe.ds.Vector<std.UInt>, ?_tag:T_encoder, ?_body:T_encoder) this = new stdgo._internal.encoding.asn1.Asn1_T_taggedEncoder.T_taggedEncoder(([for (i in _scratch) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), _tag, _body);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
