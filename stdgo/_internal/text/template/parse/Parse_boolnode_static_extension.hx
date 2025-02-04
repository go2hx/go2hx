package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.BoolNode_asInterface) class BoolNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode> = _b;
        return stdgo.Go.asInterface(@:check2r (@:checkr _b ?? throw "null pointer dereference")._tr._newBool((@:checkr _b ?? throw "null pointer dereference").pos, (@:checkr _b ?? throw "null pointer dereference").__True));
    }
    @:keep
    @:tdfield
    static public function _tree( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode> = _b;
        return (@:checkr _b ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode> = _b;
        @:check2r _sb.writeString((@:check2r _b.string() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function string( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode> = _b;
        if ((@:checkr _b ?? throw "null pointer dereference").__True) {
            return ("true" : stdgo.GoString);
        };
        return ("false" : stdgo.GoString);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_boolnode.BoolNode):stdgo._internal.text.template.parse.Parse_nodetype.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_boolnode.BoolNode):stdgo._internal.text.template.parse.Parse_pos.Pos return @:_5 __self__.position();
}
