package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.CommentNode_asInterface) class CommentNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode> = _c;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L184"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _tr : (@:checkr _c ?? throw "null pointer dereference")._tr, nodeType : (20 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), pos : (@:checkr _c ?? throw "null pointer dereference").pos, text : (@:checkr _c ?? throw "null pointer dereference").text?.__copy__() } : stdgo._internal.text.template.parse.Parse_commentnode.CommentNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>));
    }
    @:keep
    @:tdfield
    static public function _tree( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode> = _c;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L180"
        return (@:checkr _c ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode> = _c;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L174"
        _sb.writeString(("{{" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L175"
        _sb.writeString((@:checkr _c ?? throw "null pointer dereference").text?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L176"
        _sb.writeString(("}}" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function string( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode> = _c;
        var _sb:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L169"
        _c._writeTo((stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>));
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L170"
        return (_sb.string() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_commentnode.CommentNode):stdgo._internal.text.template.parse.Parse_nodetype.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_commentnode.CommentNode):stdgo._internal.text.template.parse.Parse_pos.Pos return @:_5 __self__.position();
}
