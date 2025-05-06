package stdgo._internal.go.types;
class T_block_asInterface {
    @:keep
    @:tdfield
    public dynamic function _enclosingTarget(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> return @:_0 __self__.value._enclosingTarget(_name);
    @:keep
    @:tdfield
    public dynamic function _gotoTarget(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> return @:_0 __self__.value._gotoTarget(_name);
    @:keep
    @:tdfield
    public dynamic function _insert(_s:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>):Void @:_0 __self__.value._insert(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_t_blockpointer.T_blockPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
