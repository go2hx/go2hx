package stdgo._internal.go.doc;
class T_methodSet_asInterface {
    @:keep
    @:tdfield
    public dynamic function _add(_m:stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>):Void @:_0 __self__.value._add(_m);
    @:keep
    @:tdfield
    public dynamic function _set(_f:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>, _preserveAST:Bool):Void @:_0 __self__.value._set(_f, _preserveAST);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.doc.Doc_t_methodsetpointer.T_methodSetPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
