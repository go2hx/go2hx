package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.BoolNode_asInterface) class BoolNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode> = _b;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L609"
        return stdgo.Go.asInterface((@:checkr _b ?? throw "null pointer dereference")._tr._newBool((@:checkr _b ?? throw "null pointer dereference").pos, (@:checkr _b ?? throw "null pointer dereference").__True));
    }
    @:keep
    @:tdfield
    static public function _tree( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode> = _b;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L605"
        return (@:checkr _b ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode> = _b;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L601"
        _sb.writeString((_b.string() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function string( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode> = _b;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L594"
        if ((@:checkr _b ?? throw "null pointer dereference").__True) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L595"
            return ("true" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L597"
        return ("false" : stdgo.GoString);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_boolnode.BoolNode):stdgo._internal.text.template.parse.Parse_nodetype.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_boolnode.BoolNode):stdgo._internal.text.template.parse.Parse_pos.Pos return @:_5 __self__.position();
}
