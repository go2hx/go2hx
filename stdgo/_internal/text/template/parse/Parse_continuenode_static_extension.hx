package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.ContinueNode_asInterface) class ContinueNode_static_extension {
    @:keep
    @:tdfield
    static public function _writeTo( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode> = _c;
        @:check2r _sb.writeString(("{{continue}}" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _tree( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode> = _c;
        return (@:checkr _c ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function string( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode> = _c;
        return ("{{continue}}" : stdgo.GoString);
    }
    @:keep
    @:tdfield
    static public function copy( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode> = _c;
        return stdgo.Go.asInterface(@:check2r (@:checkr _c ?? throw "null pointer dereference")._tr._newContinue((@:checkr _c ?? throw "null pointer dereference").pos, (@:checkr _c ?? throw "null pointer dereference").line));
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode):stdgo._internal.text.template.parse.Parse_nodetype.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode):stdgo._internal.text.template.parse.Parse_pos.Pos return @:_5 __self__.position();
}
