package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.BreakNode_asInterface) class BreakNode_static_extension {
    @:keep
    @:tdfield
    static public function _writeTo( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode> = _b;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L927"
        _sb.writeString(("{{break}}" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _tree( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode> = _b;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L926"
        return (@:checkr _b ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function string( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode> = _b;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L925"
        return ("{{break}}" : stdgo.GoString);
    }
    @:keep
    @:tdfield
    static public function copy( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode> = _b;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L924"
        return stdgo.Go.asInterface((@:checkr _b ?? throw "null pointer dereference")._tr._newBreak((@:checkr _b ?? throw "null pointer dereference").pos, (@:checkr _b ?? throw "null pointer dereference").line));
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_breaknode.BreakNode):stdgo._internal.text.template.parse.Parse_nodetype.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_breaknode.BreakNode):stdgo._internal.text.template.parse.Parse_pos.Pos return @:_5 __self__.position();
}
