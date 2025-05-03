package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.T_endNode_asInterface) class T_endNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_endnode.T_endNode>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_endnode.T_endNode> = _e;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L805"
        return stdgo.Go.asInterface((@:checkr _e ?? throw "null pointer dereference")._tr._newEnd((@:checkr _e ?? throw "null pointer dereference").pos));
    }
    @:keep
    @:tdfield
    static public function _tree( _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_endnode.T_endNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> {
        @:recv var _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_endnode.T_endNode> = _e;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L801"
        return (@:checkr _e ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_endnode.T_endNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_endnode.T_endNode> = _e;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L797"
        _sb.writeString((_e.string() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function string( _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_endnode.T_endNode>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_endnode.T_endNode> = _e;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L793"
        return ("{{end}}" : stdgo.GoString);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_t_endnode.T_endNode):stdgo._internal.text.template.parse.Parse_nodetype.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_t_endnode.T_endNode):stdgo._internal.text.template.parse.Parse_pos.Pos return @:_5 __self__.position();
}
