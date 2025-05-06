package stdgo._internal.go.ast;
class T_printer_asInterface {
    @:keep
    @:tdfield
    public dynamic function _print(_x:stdgo._internal.reflect.Reflect_value.Value):Void @:_0 __self__.value._print(_x);
    @:keep
    @:tdfield
    public dynamic function _printf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._printf(_format, ..._args);
    @:keep
    @:tdfield
    public dynamic function write(_data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_data);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.ast.Ast_t_printerpointer.T_printerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
