package stdgo._internal.syscall.js;
@:structInit @:using(stdgo._internal.syscall.js.Js_Func_static_extension.Func_static_extension) class Func {
    @:embedded
    public var value : stdgo._internal.syscall.js.Js_Value.Value = ({} : stdgo._internal.syscall.js.Js_Value.Value);
    public var _id : stdgo.GoUInt32 = 0;
    public function new(?value:stdgo._internal.syscall.js.Js_Value.Value, ?_id:stdgo.GoUInt32) {
        if (value != null) this.value = value;
        if (_id != null) this._id = _id;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var bool_(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_bool_():() -> Bool return @:check3 (this.value ?? throw "null pointer derefrence").bool_;
    public var call(get, never) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> stdgo._internal.syscall.js.Js_Value.Value;
    @:embedded
    @:embeddededffieldsffun
    public function get_call():(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> stdgo._internal.syscall.js.Js_Value.Value return @:check3 (this.value ?? throw "null pointer derefrence").call;
    public var delete(get, never) : stdgo.GoString -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_delete():stdgo.GoString -> Void return @:check3 (this.value ?? throw "null pointer derefrence").delete;
    public var equal(get, never) : stdgo._internal.syscall.js.Js_Value.Value -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_equal():stdgo._internal.syscall.js.Js_Value.Value -> Bool return @:check3 (this.value ?? throw "null pointer derefrence").equal;
    public var float_(get, never) : () -> stdgo.GoFloat64;
    @:embedded
    @:embeddededffieldsffun
    public function get_float_():() -> stdgo.GoFloat64 return @:check3 (this.value ?? throw "null pointer derefrence").float_;
    public var get(get, never) : stdgo.GoString -> stdgo._internal.syscall.js.Js_Value.Value;
    @:embedded
    @:embeddededffieldsffun
    public function get_get():stdgo.GoString -> stdgo._internal.syscall.js.Js_Value.Value return @:check3 (this.value ?? throw "null pointer derefrence").get;
    public var index(get, never) : stdgo.GoInt -> stdgo._internal.syscall.js.Js_Value.Value;
    @:embedded
    @:embeddededffieldsffun
    public function get_index():stdgo.GoInt -> stdgo._internal.syscall.js.Js_Value.Value return @:check3 (this.value ?? throw "null pointer derefrence").index;
    public var instanceOf(get, never) : stdgo._internal.syscall.js.Js_Value.Value -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_instanceOf():stdgo._internal.syscall.js.Js_Value.Value -> Bool return @:check3 (this.value ?? throw "null pointer derefrence").instanceOf;
    public var int_(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_int_():() -> stdgo.GoInt return @:check3 (this.value ?? throw "null pointer derefrence").int_;
    public var invoke(get, never) : haxe.Rest<stdgo.AnyInterface> -> stdgo._internal.syscall.js.Js_Value.Value;
    @:embedded
    @:embeddededffieldsffun
    public function get_invoke():haxe.Rest<stdgo.AnyInterface> -> stdgo._internal.syscall.js.Js_Value.Value return @:check3 (this.value ?? throw "null pointer derefrence").invoke;
    public var isNaN(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_isNaN():() -> Bool return @:check3 (this.value ?? throw "null pointer derefrence").isNaN;
    public var isNull(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_isNull():() -> Bool return @:check3 (this.value ?? throw "null pointer derefrence").isNull;
    public var isUndefined(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_isUndefined():() -> Bool return @:check3 (this.value ?? throw "null pointer derefrence").isUndefined;
    public var length_(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_length_():() -> stdgo.GoInt return @:check3 (this.value ?? throw "null pointer derefrence").length_;
    public var new_(get, never) : haxe.Rest<stdgo.AnyInterface> -> stdgo._internal.syscall.js.Js_Value.Value;
    @:embedded
    @:embeddededffieldsffun
    public function get_new_():haxe.Rest<stdgo.AnyInterface> -> stdgo._internal.syscall.js.Js_Value.Value return @:check3 (this.value ?? throw "null pointer derefrence").new_;
    public var set(get, never) : (stdgo.GoString, stdgo.AnyInterface) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_set():(stdgo.GoString, stdgo.AnyInterface) -> Void return @:check3 (this.value ?? throw "null pointer derefrence").set;
    public var setIndex(get, never) : (stdgo.GoInt, stdgo.AnyInterface) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_setIndex():(stdgo.GoInt, stdgo.AnyInterface) -> Void return @:check3 (this.value ?? throw "null pointer derefrence").setIndex;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check3 (this.value ?? throw "null pointer derefrence").string;
    public var truthy(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_truthy():() -> Bool return @:check3 (this.value ?? throw "null pointer derefrence").truthy;
    public var type(get, never) : () -> stdgo._internal.syscall.js.Js_Type_.Type_;
    @:embedded
    @:embeddededffieldsffun
    public function get_type():() -> stdgo._internal.syscall.js.Js_Type_.Type_ return @:check3 (this.value ?? throw "null pointer derefrence").type;
    public var _float(get, never) : stdgo.GoString -> stdgo.GoFloat64;
    @:embedded
    @:embeddededffieldsffun
    public function get__float():stdgo.GoString -> stdgo.GoFloat64 return @:check3 (this.value ?? throw "null pointer derefrence")._float;
    public var _isNumber(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__isNumber():() -> Bool return @:check3 (this.value ?? throw "null pointer derefrence")._isNumber;
    public function __copy__() {
        return new Func(value, _id);
    }
}
