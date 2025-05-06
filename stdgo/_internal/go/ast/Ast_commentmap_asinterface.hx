package stdgo._internal.go.ast;
class CommentMap_asInterface {
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function comments():stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>> return @:_0 __self__.value.comments();
    @:keep
    @:tdfield
    public dynamic function filter(_node:stdgo._internal.go.ast.Ast_node.Node):stdgo._internal.go.ast.Ast_commentmap.CommentMap return @:_0 __self__.value.filter(_node);
    @:keep
    @:tdfield
    public dynamic function update(_old:stdgo._internal.go.ast.Ast_node.Node, _new_:stdgo._internal.go.ast.Ast_node.Node):stdgo._internal.go.ast.Ast_node.Node return @:_0 __self__.value.update(_old, _new_);
    @:keep
    @:tdfield
    public dynamic function _addComment(_n:stdgo._internal.go.ast.Ast_node.Node, _c:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>):Void @:_0 __self__.value._addComment(_n, _c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.ast.Ast_commentmappointer.CommentMapPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
