package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_errorcontext_static_extension.T_errorContext_static_extension) class T_errorContext {
    public var struct_ : stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
    public var fieldStack : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?struct_:stdgo._internal.reflect.Reflect_type_.Type_, ?fieldStack:stdgo.Slice<stdgo.GoString>) {
        if (struct_ != null) this.struct_ = struct_;
        if (fieldStack != null) this.fieldStack = fieldStack;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errorContext(struct_, fieldStack);
    }
}
