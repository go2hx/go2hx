package stdgo._internal.go.scanner;
class ErrorList_asInterface {
    @:keep
    @:tdfield
    public dynamic function err():stdgo.Error return @:_0 __self__.value.err();
    @:keep
    @:tdfield
    public dynamic function error():stdgo.GoString return @:_0 __self__.value.error();
    @:keep
    @:tdfield
    public dynamic function removeMultiples():Void @:_0 __self__.value.removeMultiples();
    @:keep
    @:tdfield
    public dynamic function sort():Void @:_0 __self__.value.sort();
    @:keep
    @:tdfield
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return @:_0 __self__.value.less(_i, _j);
    @:keep
    @:tdfield
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void @:_0 __self__.value.swap(_i, _j);
    @:keep
    @:tdfield
    public dynamic function len():stdgo.GoInt return @:_0 __self__.value.len();
    @:keep
    @:tdfield
    public dynamic function reset():Void @:_0 __self__.value.reset();
    @:keep
    @:tdfield
    public dynamic function add(_pos:stdgo._internal.go.token.Token_position.Position, _msg:stdgo.GoString):Void @:_0 __self__.value.add(_pos, _msg);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.scanner.Scanner_errorlistpointer.ErrorListPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
