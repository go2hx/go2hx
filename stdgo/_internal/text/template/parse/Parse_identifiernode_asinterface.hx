package stdgo._internal.text.template.parse;
class IdentifierNode_asInterface {
    @:keep
    @:tdfield
    public dynamic function copy():stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value.copy();
    @:keep
    @:tdfield
    public dynamic function _tree():stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> return @:_0 __self__.value._tree();
    @:keep
    @:tdfield
    public dynamic function _writeTo(_sb:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void @:_0 __self__.value._writeTo(_sb);
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function setTree(_t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode> return @:_0 __self__.value.setTree(_t);
    @:keep
    @:tdfield
    public dynamic function setPos(_pos:stdgo._internal.text.template.parse.Parse_pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode> return @:_0 __self__.value.setPos(_pos);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function type():stdgo._internal.text.template.parse.Parse_nodetype.NodeType return @:_0 __self__.value.type();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function position():stdgo._internal.text.template.parse.Parse_pos.Pos return @:_0 __self__.value.position();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.text.template.parse.Parse_identifiernodepointer.IdentifierNodePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
