package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.T_elseNode_asInterface) class T_elseNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode> = _e;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L837"
        return stdgo.Go.asInterface((@:checkr _e ?? throw "null pointer dereference")._tr._newElse((@:checkr _e ?? throw "null pointer dereference").pos, (@:checkr _e ?? throw "null pointer dereference").line));
    }
    @:keep
    @:tdfield
    static public function _tree( _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> {
        @:recv var _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode> = _e;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L833"
        return (@:checkr _e ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode> = _e;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L829"
        _sb.writeString((_e.string() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function string( _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode> = _e;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L825"
        return ("{{else}}" : stdgo.GoString);
    }
    @:keep
    @:tdfield
    static public function type( _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode>):stdgo._internal.text.template.parse.Parse_nodetype.NodeType {
        @:recv var _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode> = _e;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L821"
        return (6 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode):stdgo._internal.text.template.parse.Parse_pos.Pos return @:_5 __self__.position();
}
