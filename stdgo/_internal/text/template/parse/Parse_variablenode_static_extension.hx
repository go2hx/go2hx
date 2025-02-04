package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.VariableNode_asInterface) class VariableNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _v:stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _v:stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode> = _v;
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _tr : (@:checkr _v ?? throw "null pointer dereference")._tr, nodeType : (18 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), pos : (@:checkr _v ?? throw "null pointer dereference").pos, ident : ((new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...((@:checkr _v ?? throw "null pointer dereference").ident : Array<stdgo.GoString>))) } : stdgo._internal.text.template.parse.Parse_variablenode.VariableNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>));
    }
    @:keep
    @:tdfield
    static public function _tree( _v:stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> {
        @:recv var _v:stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode> = _v;
        return (@:checkr _v ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _v:stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode> = _v;
        for (_i => _id in (@:checkr _v ?? throw "null pointer dereference").ident) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                @:check2r _sb.writeByte((46 : stdgo.GoUInt8));
            };
            @:check2r _sb.writeString(_id?.__copy__());
        };
    }
    @:keep
    @:tdfield
    static public function string( _v:stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>):stdgo.GoString {
        @:recv var _v:stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode> = _v;
        var _sb:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        @:check2r _v._writeTo((stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>));
        return (@:check2 _sb.string() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_variablenode.VariableNode):stdgo._internal.text.template.parse.Parse_nodetype.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_variablenode.VariableNode):stdgo._internal.text.template.parse.Parse_pos.Pos return @:_5 __self__.position();
}
