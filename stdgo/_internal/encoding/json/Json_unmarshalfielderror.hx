package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_unmarshalfielderror_static_extension.UnmarshalFieldError_static_extension) class UnmarshalFieldError {
    public var key : stdgo.GoString = "";
    public var type : stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
    public var field : stdgo._internal.reflect.Reflect_structfield.StructField = ({} : stdgo._internal.reflect.Reflect_structfield.StructField);
    public function new(?key:stdgo.GoString, ?type:stdgo._internal.reflect.Reflect_type_.Type_, ?field:stdgo._internal.reflect.Reflect_structfield.StructField) {
        if (key != null) this.key = key;
        if (type != null) this.type = type;
        if (field != null) this.field = field;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new UnmarshalFieldError(key, type, field);
    }
}
