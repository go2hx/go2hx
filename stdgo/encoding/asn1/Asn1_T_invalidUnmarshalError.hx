package stdgo.encoding.asn1;
@:structInit @:using(stdgo.encoding.asn1.Asn1.T_invalidUnmarshalError_static_extension) abstract T_invalidUnmarshalError(stdgo._internal.encoding.asn1.Asn1_T_invalidUnmarshalError.T_invalidUnmarshalError) from stdgo._internal.encoding.asn1.Asn1_T_invalidUnmarshalError.T_invalidUnmarshalError to stdgo._internal.encoding.asn1.Asn1_T_invalidUnmarshalError.T_invalidUnmarshalError {
    public var type(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get_type():stdgo._internal.reflect.Reflect_Type_.Type_ return this.type;
    function set_type(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
        this.type = v;
        return v;
    }
    public function new(?type:stdgo._internal.reflect.Reflect_Type_.Type_) this = new stdgo._internal.encoding.asn1.Asn1_T_invalidUnmarshalError.T_invalidUnmarshalError(type);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
