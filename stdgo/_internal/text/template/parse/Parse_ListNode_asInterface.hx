package stdgo._internal.text.template.parse;
class ListNode_asInterface {
    @:keep
    public dynamic function copy():stdgo._internal.text.template.parse.Parse_Node.Node return __self__.value.copy();
    @:keep
    public dynamic function copyList():stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode> return __self__.value.copyList();
    @:keep
    public dynamic function _writeTo(_sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void __self__.value._writeTo(_sb);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function _tree():stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> return __self__.value._tree();
    @:keep
    public dynamic function _append(_n:stdgo._internal.text.template.parse.Parse_Node.Node):Void __self__.value._append(_n);
    @:embedded
    public dynamic function type():stdgo._internal.text.template.parse.Parse_NodeType.NodeType return __self__.value.type();
    @:embedded
    public dynamic function position():stdgo._internal.text.template.parse.Parse_Pos.Pos return __self__.value.position();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
