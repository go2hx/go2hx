package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_invalidunmarshalerror_static_extension.InvalidUnmarshalError_static_extension) class InvalidUnmarshalError {
    public var type : stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
    public function new(?type:stdgo._internal.reflect.Reflect_type_.Type_) {
        if (type != null) this.type = type;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new InvalidUnmarshalError(type);
    }
}
