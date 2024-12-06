package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.CommentNode_asInterface) class CommentNode_static_extension {
    @:keep
    static public function copy( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode> = _c;
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _tr : _c._tr, nodeType : (20 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : _c.pos, text : _c.text?.__copy__() } : stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode>));
    }
    @:keep
    static public function _tree( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode> = _c;
        return _c._tr;
    }
    @:keep
    static public function _writeTo( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode> = _c;
        _sb.writeString(("{{" : stdgo.GoString));
        _sb.writeString(_c.text?.__copy__());
        _sb.writeString(("}}" : stdgo.GoString));
    }
    @:keep
    static public function string( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode> = _c;
        var _sb:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        var _sb__pointer__ = (stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        _c._writeTo(_sb__pointer__);
        return (_sb.string() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return __self__.type();
    @:embedded
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return __self__.position();
}
