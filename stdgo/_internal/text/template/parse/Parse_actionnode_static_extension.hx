package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.ActionNode_asInterface) class ActionNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _a:stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _a:stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode> = _a;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L286"
        return stdgo.Go.asInterface((@:checkr _a ?? throw "null pointer dereference")._tr._newAction((@:checkr _a ?? throw "null pointer dereference").pos, (@:checkr _a ?? throw "null pointer dereference").line, (@:checkr _a ?? throw "null pointer dereference").pipe.copyPipe()));
    }
    @:keep
    @:tdfield
    static public function _tree( _a:stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> {
        @:recv var _a:stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode> = _a;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L282"
        return (@:checkr _a ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _a:stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode> = _a;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L276"
        _sb.writeString(("{{" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L277"
        (@:checkr _a ?? throw "null pointer dereference").pipe._writeTo(_sb);
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L278"
        _sb.writeString(("}}" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function string( _a:stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>):stdgo.GoString {
        @:recv var _a:stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode> = _a;
        var _sb:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L271"
        _a._writeTo((stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>));
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L272"
        return (_sb.string() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_actionnode.ActionNode):stdgo._internal.text.template.parse.Parse_nodetype.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_actionnode.ActionNode):stdgo._internal.text.template.parse.Parse_pos.Pos return @:_5 __self__.position();
}
