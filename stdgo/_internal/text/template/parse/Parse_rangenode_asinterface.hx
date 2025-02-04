package stdgo._internal.text.template.parse;
class RangeNode_asInterface {
    @:keep
    @:tdfield
    public dynamic function copy():stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value.copy();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _writeTo(_0:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void @:_0 __self__.value._writeTo(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _tree():stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> return @:_0 __self__.value._tree();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function type():stdgo._internal.text.template.parse.Parse_nodetype.NodeType return @:_0 __self__.value.type();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function position():stdgo._internal.text.template.parse.Parse_pos.Pos return @:_0 __self__.value.position();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.text.template.parse.Parse_rangenodepointer.RangeNodePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
