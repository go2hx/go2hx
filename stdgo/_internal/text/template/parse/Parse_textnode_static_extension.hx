package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.TextNode_asInterface) class TextNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode> = _t;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L152"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _tr : (@:checkr _t ?? throw "null pointer dereference")._tr, nodeType : (0 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), pos : (@:checkr _t ?? throw "null pointer dereference").pos, text : ((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>).__append__(...((@:checkr _t ?? throw "null pointer dereference").text : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.text.template.parse.Parse_textnode.TextNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>));
    }
    @:keep
    @:tdfield
    static public function _tree( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode> = _t;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L148"
        return (@:checkr _t ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode> = _t;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L144"
        _sb.writeString((_t.string() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function string( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode> = _t;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L140"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(stdgo._internal.text.template.parse.Parse__textformat._textFormat?.__copy__(), stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference").text))?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_textnode.TextNode):stdgo._internal.text.template.parse.Parse_nodetype.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_textnode.TextNode):stdgo._internal.text.template.parse.Parse_pos.Pos return @:_5 __self__.position();
}
