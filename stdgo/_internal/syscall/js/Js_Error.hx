package stdgo._internal.syscall.js;
@:structInit @:using(stdgo._internal.syscall.js.Js_Error_static_extension.Error_static_extension) class Error {
    @:embedded
    public var value : stdgo._internal.syscall.js.Js_Value.Value = ({} : stdgo._internal.syscall.js.Js_Value.Value);
    public function new(?value:stdgo._internal.syscall.js.Js_Value.Value) {
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function bool_():Bool return this.value.bool_();
    @:embedded
    public function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js_Value.Value return this.value.call(_m, ..._args);
    @:embedded
    public function delete(_p:stdgo.GoString) this.value.delete(_p);
    @:embedded
    public function equal(__0:stdgo._internal.syscall.js.Js_Value.Value):Bool return this.value.equal(__0);
    @:embedded
    public function float_():stdgo.GoFloat64 return this.value.float_();
    @:embedded
    public function get(_p:stdgo.GoString):stdgo._internal.syscall.js.Js_Value.Value return this.value.get(_p);
    @:embedded
    public function index(_i:stdgo.GoInt):stdgo._internal.syscall.js.Js_Value.Value return this.value.index(_i);
    @:embedded
    public function instanceOf(__0:stdgo._internal.syscall.js.Js_Value.Value):Bool return this.value.instanceOf(__0);
    @:embedded
    public function int_():stdgo.GoInt return this.value.int_();
    @:embedded
    public function invoke(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js_Value.Value return this.value.invoke(..._args);
    @:embedded
    public function isNaN():Bool return this.value.isNaN();
    @:embedded
    public function isNull():Bool return this.value.isNull();
    @:embedded
    public function isUndefined():Bool return this.value.isUndefined();
    @:embedded
    public function length_():stdgo.GoInt return this.value.length_();
    @:embedded
    public function new_(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js_Value.Value return this.value.new_(..._args);
    @:embedded
    public function set(_p:stdgo.GoString, _x:stdgo.AnyInterface) this.value.set(_p, _x);
    @:embedded
    public function setIndex(_i:stdgo.GoInt, _x:stdgo.AnyInterface) this.value.setIndex(_i, _x);
    @:embedded
    public function string():stdgo.GoString return this.value.string();
    @:embedded
    public function truthy():Bool return this.value.truthy();
    @:embedded
    public function type():stdgo._internal.syscall.js.Js_Type_.Type_ return this.value.type();
    @:embedded
    public function _float(_p:stdgo.GoString):stdgo.GoFloat64 return this.value._float(_p);
    @:embedded
    public function _isNumber():Bool return this.value._isNumber();
    public function __copy__() {
        return new Error(value);
    }
}
