package stdgo._internal.text.template.parse;
@:keep class Node_static_extension {
    @:interfacetypeffun
    static public function _writeTo(t:stdgo._internal.text.template.parse.Parse_node.Node, _0:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void t._writeTo(_0);
    @:interfacetypeffun
    static public function _tree(t:stdgo._internal.text.template.parse.Parse_node.Node):stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> return t._tree();
    @:interfacetypeffun
    static public function position(t:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.text.template.parse.Parse_pos.Pos return t.position();
    @:interfacetypeffun
    static public function copy(t:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.text.template.parse.Parse_node.Node return t.copy();
    @:interfacetypeffun
    static public function string(t:stdgo._internal.text.template.parse.Parse_node.Node):stdgo.GoString return t.string();
    @:interfacetypeffun
    static public function type(t:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.text.template.parse.Parse_nodetype.NodeType return t.type();
}
