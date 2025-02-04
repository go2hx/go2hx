package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.StringNode_asInterface) class StringNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _s:stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode> = _s;
        return stdgo.Go.asInterface(@:check2r (@:checkr _s ?? throw "null pointer dereference")._tr._newString((@:checkr _s ?? throw "null pointer dereference").pos, (@:checkr _s ?? throw "null pointer dereference").quoted?.__copy__(), (@:checkr _s ?? throw "null pointer dereference").text?.__copy__()));
    }
    @:keep
    @:tdfield
    static public function _tree( _s:stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode> = _s;
        return (@:checkr _s ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _s:stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode> = _s;
        @:check2r _sb.writeString((@:check2r _s.string() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function string( _s:stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode> = _s;
        return (@:checkr _s ?? throw "null pointer dereference").quoted?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_stringnode.StringNode):stdgo._internal.text.template.parse.Parse_nodetype.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_stringnode.StringNode):stdgo._internal.text.template.parse.Parse_pos.Pos return @:_5 __self__.position();
}
