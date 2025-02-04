package stdgo._internal.syscall.js;
class Error_asInterface {
    @:keep
    @:tdfield
    public dynamic function error():stdgo.GoString return @:_0 __self__.value.error();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _isNumber():Bool return @:_0 __self__.value._isNumber();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _float(_0:stdgo.GoString):stdgo.GoFloat64 return @:_0 __self__.value._float(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function type():stdgo._internal.syscall.js.Js_type_.Type_ return @:_0 __self__.value.type();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function truthy():Bool return @:_0 __self__.value.truthy();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setIndex(_0:stdgo.GoInt, _1:stdgo.AnyInterface):Void @:_0 __self__.value.setIndex(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function set(_0:stdgo.GoString, _1:stdgo.AnyInterface):Void @:_0 __self__.value.set(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function new_(_0:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js_value.Value return @:_0 __self__.value.new_(..._0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function length_():stdgo.GoInt return @:_0 __self__.value.length_();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function isUndefined():Bool return @:_0 __self__.value.isUndefined();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function isNull():Bool return @:_0 __self__.value.isNull();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function isNaN():Bool return @:_0 __self__.value.isNaN();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function invoke(_0:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js_value.Value return @:_0 __self__.value.invoke(..._0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function int_():stdgo.GoInt return @:_0 __self__.value.int_();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function instanceOf(_0:stdgo._internal.syscall.js.Js_value.Value):Bool return @:_0 __self__.value.instanceOf(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function index(_0:stdgo.GoInt):stdgo._internal.syscall.js.Js_value.Value return @:_0 __self__.value.index(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function get(_0:stdgo.GoString):stdgo._internal.syscall.js.Js_value.Value return @:_0 __self__.value.get(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function float_():stdgo.GoFloat64 return @:_0 __self__.value.float_();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function equal(_0:stdgo._internal.syscall.js.Js_value.Value):Bool return @:_0 __self__.value.equal(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function delete(_0:stdgo.GoString):Void @:_0 __self__.value.delete(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function call(_0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js_value.Value return @:_0 __self__.value.call(_0, ..._1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function bool_():Bool return @:_0 __self__.value.bool_();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.syscall.js.Js_errorpointer.ErrorPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
