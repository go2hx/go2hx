package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_unmarshaltypeerror_static_extension.UnmarshalTypeError_static_extension) class UnmarshalTypeError {
    public var value : stdgo.GoString = "";
    public var type : stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
    public var offset : stdgo.GoInt64 = 0;
    public var struct_ : stdgo.GoString = "";
    public var field : stdgo.GoString = "";
    public function new(?value:stdgo.GoString, ?type:stdgo._internal.reflect.Reflect_type_.Type_, ?offset:stdgo.GoInt64, ?struct_:stdgo.GoString, ?field:stdgo.GoString) {
        if (value != null) this.value = value;
        if (type != null) this.type = type;
        if (offset != null) this.offset = offset;
        if (struct_ != null) this.struct_ = struct_;
        if (field != null) this.field = field;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new UnmarshalTypeError(value, type, offset, struct_, field);
    }
}
