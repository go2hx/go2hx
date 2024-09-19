package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.WithNode_asInterface) class WithNode_static_extension {
    @:keep
    static public function copy( _w:stdgo.Ref<stdgo._internal.text.template.parse.Parse_WithNode.WithNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _w:stdgo.Ref<stdgo._internal.text.template.parse.Parse_WithNode.WithNode> = _w;
        return stdgo.Go.asInterface(_w.branchNode._tr._newWith(_w.branchNode.pos, _w.branchNode.line, _w.branchNode.pipe.copyPipe(), _w.branchNode.list.copyList(), _w.branchNode.elseList.copyList()));
    }
    @:embedded
    public static function _writeTo( __self__:stdgo._internal.text.template.parse.Parse_WithNode.WithNode, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>) __self__._writeTo(_sb);
    @:embedded
    public static function _tree( __self__:stdgo._internal.text.template.parse.Parse_WithNode.WithNode):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> return __self__._tree();
    @:embedded
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_WithNode.WithNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return __self__.type();
    @:embedded
    public static function string( __self__:stdgo._internal.text.template.parse.Parse_WithNode.WithNode):stdgo.GoString return __self__.string();
    @:embedded
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_WithNode.WithNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return __self__.position();
}
