package stdgo._internal.encoding.asn1;
@:structInit @:using(stdgo._internal.encoding.asn1.Asn1_t_invalidunmarshalerror_static_extension.T_invalidUnmarshalError_static_extension) class T_invalidUnmarshalError {
    public var type : stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
    public function new(?type:stdgo._internal.reflect.Reflect_type_.Type_) {
        if (type != null) this.type = type;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_invalidUnmarshalError(type);
    }
}
