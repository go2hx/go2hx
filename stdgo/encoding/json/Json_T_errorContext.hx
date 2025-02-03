package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_errorContext_static_extension) abstract T_errorContext(stdgo._internal.encoding.json.Json_T_errorContext.T_errorContext) from stdgo._internal.encoding.json.Json_T_errorContext.T_errorContext to stdgo._internal.encoding.json.Json_T_errorContext.T_errorContext {
    public var struct_(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get_struct_():stdgo._internal.reflect.Reflect_Type_.Type_ return this.struct_;
    function set_struct_(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
        this.struct_ = v;
        return v;
    }
    public var fieldStack(get, set) : Array<String>;
    function get_fieldStack():Array<String> return [for (i in this.fieldStack) i];
    function set_fieldStack(v:Array<String>):Array<String> {
        this.fieldStack = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?struct_:stdgo._internal.reflect.Reflect_Type_.Type_, ?fieldStack:Array<String>) this = new stdgo._internal.encoding.json.Json_T_errorContext.T_errorContext(struct_, ([for (i in fieldStack) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
