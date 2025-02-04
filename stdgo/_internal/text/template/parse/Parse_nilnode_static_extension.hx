package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.NilNode_asInterface) class NilNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode> = _n;
        return stdgo.Go.asInterface(@:check2r (@:checkr _n ?? throw "null pointer dereference")._tr._newNil((@:checkr _n ?? throw "null pointer dereference").pos));
    }
    @:keep
    @:tdfield
    static public function _tree( _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> {
        @:recv var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode> = _n;
        return (@:checkr _n ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void {
        @:recv var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode> = _n;
        @:check2r _sb.writeString((@:check2r _n.string() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function string( _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>):stdgo.GoString {
        @:recv var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode> = _n;
        return ("nil" : stdgo.GoString);
    }
    @:keep
    @:tdfield
    static public function type( _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>):stdgo._internal.text.template.parse.Parse_nodetype.NodeType {
        @:recv var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode> = _n;
        return (12 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_nilnode.NilNode):stdgo._internal.text.template.parse.Parse_pos.Pos return @:_5 __self__.position();
}
