package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:keep class Node_static_extension {
    @:interfacetypeffun
    static public function _writeTo(t:stdgo._internal.text.template.parse.Parse_Node.Node, _0:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void t._writeTo(_0);
    @:interfacetypeffun
    static public function _tree(t:stdgo._internal.text.template.parse.Parse_Node.Node):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> return t._tree();
    @:interfacetypeffun
    static public function position(t:stdgo._internal.text.template.parse.Parse_Node.Node):stdgo._internal.text.template.parse.Parse_Pos.Pos return t.position();
    @:interfacetypeffun
    static public function copy(t:stdgo._internal.text.template.parse.Parse_Node.Node):stdgo._internal.text.template.parse.Parse_Node.Node return t.copy();
    @:interfacetypeffun
    static public function string(t:stdgo._internal.text.template.parse.Parse_Node.Node):stdgo.GoString return t.string();
    @:interfacetypeffun
    static public function type(t:stdgo._internal.text.template.parse.Parse_Node.Node):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return t.type();
}
