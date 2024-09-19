package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.IdentifierNode_asInterface) class IdentifierNode_static_extension {
    @:keep
    static public function copy( _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode> = _i;
        return stdgo.Go.asInterface(stdgo._internal.text.template.parse.Parse_newIdentifier.newIdentifier(_i.ident?.__copy__()).setTree(_i._tr).setPos(_i.pos));
    }
    @:keep
    static public function _tree( _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode> = _i;
        return _i._tr;
    }
    @:keep
    static public function _writeTo( _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode> = _i;
        _sb.writeString((_i.string() : stdgo.GoString)?.__copy__());
    }
    @:keep
    static public function string( _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>):stdgo.GoString {
        @:recv var _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode> = _i;
        return _i.ident?.__copy__();
    }
    @:keep
    static public function setTree( _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>, _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode> {
        @:recv var _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode> = _i;
        _i._tr = _t;
        return _i;
    }
    @:keep
    static public function setPos( _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode> {
        @:recv var _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode> = _i;
        _i.pos = _pos;
        return _i;
    }
    @:embedded
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return __self__.type();
    @:embedded
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return __self__.position();
}
