package stdgo._internal.text.template.parse;
@:keep class Node_static_extension {
    static public function _writeTo(t:Node, _0:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void t._writeTo(_0);
    static public function _tree(t:Node):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> return t._tree();
    static public function position(t:Node):stdgo._internal.text.template.parse.Parse_Pos.Pos return t.position();
    static public function copy(t:Node):stdgo._internal.text.template.parse.Parse_Node.Node return t.copy();
    static public function string(t:Node):stdgo.GoString return t.string();
    static public function type(t:Node):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return t.type();
}
