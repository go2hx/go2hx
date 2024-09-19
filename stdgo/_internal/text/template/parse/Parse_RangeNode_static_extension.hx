package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.RangeNode_asInterface) class RangeNode_static_extension {
    @:keep
    static public function copy( _r:stdgo.Ref<stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _r:stdgo.Ref<stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode> = _r;
        return stdgo.Go.asInterface(_r.branchNode._tr._newRange(_r.branchNode.pos, _r.branchNode.line, _r.branchNode.pipe.copyPipe(), _r.branchNode.list.copyList(), _r.branchNode.elseList.copyList()));
    }
    @:embedded
    public static function _writeTo( __self__:stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>) __self__._writeTo(_sb);
    @:embedded
    public static function _tree( __self__:stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> return __self__._tree();
    @:embedded
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return __self__.type();
    @:embedded
    public static function string( __self__:stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode):stdgo.GoString return __self__.string();
    @:embedded
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return __self__.position();
}
