package stdgo._internal.go.types;
class T_operand_asInterface {
    @:keep
    @:tdfield
    public dynamic function _assignableTo(_check:stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>, t:stdgo._internal.go.types.Types_type_.Type_, _cause:stdgo.Pointer<stdgo.GoString>):{ var _0 : Bool; var _1 : stdgo._internal.internal.types.errors.Errors_code.Code; } return @:_0 __self__.value._assignableTo(_check, t, _cause);
    @:keep
    @:tdfield
    public dynamic function _isNil():Bool return @:_0 __self__.value._isNil();
    @:keep
    @:tdfield
    public dynamic function _setConst(_tok:stdgo._internal.go.token.Token_token.Token, _lit:stdgo.GoString):Void @:_0 __self__.value._setConst(_tok, _lit);
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function pos():stdgo._internal.go.token.Token_pos.Pos return @:_0 __self__.value.pos();
    @:keep
    @:tdfield
    public dynamic function _convertibleTo(_check:stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>, t:stdgo._internal.go.types.Types_type_.Type_, _cause:stdgo.Pointer<stdgo.GoString>):Bool return @:_0 __self__.value._convertibleTo(_check, t, _cause);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_t_operandpointer.T_operandPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
