package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.IfNode_asInterface) class IfNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IfNode.IfNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IfNode.IfNode> = _i;
        return stdgo.Go.asInterface(@:check2r (@:checkr _i ?? throw "null pointer dereference").branchNode._tr._newIf((@:checkr _i ?? throw "null pointer dereference").branchNode.pos, (@:checkr _i ?? throw "null pointer dereference").branchNode.line, @:check2r (@:checkr _i ?? throw "null pointer dereference").branchNode.pipe.copyPipe(), @:check2r (@:checkr _i ?? throw "null pointer dereference").branchNode.list.copyList(), @:check2r (@:checkr _i ?? throw "null pointer dereference").branchNode.elseList.copyList()));
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _writeTo( __self__:stdgo._internal.text.template.parse.Parse_IfNode.IfNode, _0:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void return @:_5 __self__._writeTo(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _tree( __self__:stdgo._internal.text.template.parse.Parse_IfNode.IfNode):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> return @:_5 __self__._tree();
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_IfNode.IfNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:stdgo._internal.text.template.parse.Parse_IfNode.IfNode):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_IfNode.IfNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return @:_5 __self__.position();
}
