package stdgo._internal.syscall.js;
@:structInit @:using(stdgo._internal.syscall.js.Js_func_static_extension.Func_static_extension) class Func {
    @:embedded
    public var value : stdgo._internal.syscall.js.Js_value.Value = ({} : stdgo._internal.syscall.js.Js_value.Value);
    public var _id : stdgo.GoUInt32 = 0;
    public function new(?value:stdgo._internal.syscall.js.Js_value.Value, ?_id:stdgo.GoUInt32) {
        if (value != null) this.value = value;
        if (_id != null) this._id = _id;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var bool_(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_bool_():() -> Bool return @:check31 (this.value ?? throw "null pointer dereference").bool_;
    public var call(get, never) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> stdgo._internal.syscall.js.Js_value.Value;
    @:embedded
    @:embeddededffieldsffun
    public function get_call():(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> stdgo._internal.syscall.js.Js_value.Value return @:check31 (this.value ?? throw "null pointer dereference").call;
    public var delete(get, never) : stdgo.GoString -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_delete():stdgo.GoString -> Void return @:check31 (this.value ?? throw "null pointer dereference").delete;
    public var equal(get, never) : stdgo._internal.syscall.js.Js_value.Value -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_equal():stdgo._internal.syscall.js.Js_value.Value -> Bool return @:check31 (this.value ?? throw "null pointer dereference").equal;
    public var float_(get, never) : () -> stdgo.GoFloat64;
    @:embedded
    @:embeddededffieldsffun
    public function get_float_():() -> stdgo.GoFloat64 return @:check31 (this.value ?? throw "null pointer dereference").float_;
    public var get(get, never) : stdgo.GoString -> stdgo._internal.syscall.js.Js_value.Value;
    @:embedded
    @:embeddededffieldsffun
    public function get_get():stdgo.GoString -> stdgo._internal.syscall.js.Js_value.Value return @:check31 (this.value ?? throw "null pointer dereference").get;
    public var index(get, never) : stdgo.GoInt -> stdgo._internal.syscall.js.Js_value.Value;
    @:embedded
    @:embeddededffieldsffun
    public function get_index():stdgo.GoInt -> stdgo._internal.syscall.js.Js_value.Value return @:check31 (this.value ?? throw "null pointer dereference").index;
    public var instanceOf(get, never) : stdgo._internal.syscall.js.Js_value.Value -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_instanceOf():stdgo._internal.syscall.js.Js_value.Value -> Bool return @:check31 (this.value ?? throw "null pointer dereference").instanceOf;
    public var int_(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_int_():() -> stdgo.GoInt return @:check31 (this.value ?? throw "null pointer dereference").int_;
    public var invoke(get, never) : haxe.Rest<stdgo.AnyInterface> -> stdgo._internal.syscall.js.Js_value.Value;
    @:embedded
    @:embeddededffieldsffun
    public function get_invoke():haxe.Rest<stdgo.AnyInterface> -> stdgo._internal.syscall.js.Js_value.Value return @:check31 (this.value ?? throw "null pointer dereference").invoke;
    public var isNaN(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_isNaN():() -> Bool return @:check31 (this.value ?? throw "null pointer dereference").isNaN;
    public var isNull(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_isNull():() -> Bool return @:check31 (this.value ?? throw "null pointer dereference").isNull;
    public var isUndefined(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_isUndefined():() -> Bool return @:check31 (this.value ?? throw "null pointer dereference").isUndefined;
    public var length_(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_length_():() -> stdgo.GoInt return @:check31 (this.value ?? throw "null pointer dereference").length_;
    public var new_(get, never) : haxe.Rest<stdgo.AnyInterface> -> stdgo._internal.syscall.js.Js_value.Value;
    @:embedded
    @:embeddededffieldsffun
    public function get_new_():haxe.Rest<stdgo.AnyInterface> -> stdgo._internal.syscall.js.Js_value.Value return @:check31 (this.value ?? throw "null pointer dereference").new_;
    public var set(get, never) : (stdgo.GoString, stdgo.AnyInterface) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_set():(stdgo.GoString, stdgo.AnyInterface) -> Void return @:check31 (this.value ?? throw "null pointer dereference").set;
    public var setIndex(get, never) : (stdgo.GoInt, stdgo.AnyInterface) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_setIndex():(stdgo.GoInt, stdgo.AnyInterface) -> Void return @:check31 (this.value ?? throw "null pointer dereference").setIndex;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check31 (this.value ?? throw "null pointer dereference").string;
    public var truthy(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_truthy():() -> Bool return @:check31 (this.value ?? throw "null pointer dereference").truthy;
    public var type(get, never) : () -> stdgo._internal.syscall.js.Js_type_.Type_;
    @:embedded
    @:embeddededffieldsffun
    public function get_type():() -> stdgo._internal.syscall.js.Js_type_.Type_ return @:check31 (this.value ?? throw "null pointer dereference").type;
    public var _float(get, never) : stdgo.GoString -> stdgo.GoFloat64;
    @:embedded
    @:embeddededffieldsffun
    public function get__float():stdgo.GoString -> stdgo.GoFloat64 return @:check31 (this.value ?? throw "null pointer dereference")._float;
    public var _isNumber(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__isNumber():() -> Bool return @:check31 (this.value ?? throw "null pointer dereference")._isNumber;
    public function __copy__() {
        return new Func(value, _id);
    }
}
