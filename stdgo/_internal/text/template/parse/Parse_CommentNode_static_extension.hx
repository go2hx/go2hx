package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.CommentNode_asInterface) class CommentNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode> = _c;
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _tr : (@:checkr _c ?? throw "null pointer dereference")._tr, nodeType : (20 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : (@:checkr _c ?? throw "null pointer dereference").pos, text : (@:checkr _c ?? throw "null pointer dereference").text?.__copy__() } : stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode>));
    }
    @:keep
    @:tdfield
    static public function _tree( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode> = _c;
        return (@:checkr _c ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode> = _c;
        @:check2r _sb.writeString(("{{" : stdgo.GoString));
        @:check2r _sb.writeString((@:checkr _c ?? throw "null pointer dereference").text?.__copy__());
        @:check2r _sb.writeString(("}}" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function string( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode> = _c;
        var _sb:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        @:check2r _c._writeTo((stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>));
        return (@:check2 _sb.string() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return @:_5 __self__.position();
}
