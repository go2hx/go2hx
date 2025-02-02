package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.IdentifierNode_asInterface) class IdentifierNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode> = _i;
        return stdgo.Go.asInterface(@:check2r @:check2r stdgo._internal.text.template.parse.Parse_newIdentifier.newIdentifier((@:checkr _i ?? throw "null pointer dereference").ident?.__copy__()).setTree((@:checkr _i ?? throw "null pointer dereference")._tr).setPos((@:checkr _i ?? throw "null pointer dereference").pos));
    }
    @:keep
    @:tdfield
    static public function _tree( _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode> = _i;
        return (@:checkr _i ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode> = _i;
        @:check2r _sb.writeString((@:check2r _i.string() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>):stdgo.GoString {
        @:recv var _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode> = _i;
        return (@:checkr _i ?? throw "null pointer dereference").ident?.__copy__();
    }
    @:keep
    @:tdfield
    static public function setTree( _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>, _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode> {
        @:recv var _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode> = _i;
        (@:checkr _i ?? throw "null pointer dereference")._tr = _t;
        return _i;
    }
    @:keep
    @:tdfield
    static public function setPos( _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode> {
        @:recv var _i:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode> = _i;
        (@:checkr _i ?? throw "null pointer dereference").pos = _pos;
        return _i;
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return @:_5 __self__.position();
}
