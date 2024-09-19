package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.IfNode_asInterface) class IfNode_static_extension {
    @:keep
    static public function copy( _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IfNode.IfNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IfNode.IfNode> = _i;
        return stdgo.Go.asInterface(_i.branchNode._tr._newIf(_i.branchNode.pos, _i.branchNode.line, _i.branchNode.pipe.copyPipe(), _i.branchNode.list.copyList(), _i.branchNode.elseList.copyList()));
    }
    @:embedded
    public static function _writeTo( __self__:stdgo._internal.text.template.parse.Parse_IfNode.IfNode, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>) __self__._writeTo(_sb);
    @:embedded
    public static function _tree( __self__:stdgo._internal.text.template.parse.Parse_IfNode.IfNode):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> return __self__._tree();
    @:embedded
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_IfNode.IfNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return __self__.type();
    @:embedded
    public static function string( __self__:stdgo._internal.text.template.parse.Parse_IfNode.IfNode):stdgo.GoString return __self__.string();
    @:embedded
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_IfNode.IfNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return __self__.position();
}
