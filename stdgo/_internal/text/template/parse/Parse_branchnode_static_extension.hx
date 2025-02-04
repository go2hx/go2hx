package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.BranchNode_asInterface) class BranchNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_branchnode.BranchNode>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_branchnode.BranchNode> = _b;
        {
            final __value__ = (@:checkr _b ?? throw "null pointer dereference").nodeType;
            if (__value__ == ((10 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType))) {
                return stdgo.Go.asInterface(@:check2r (@:checkr _b ?? throw "null pointer dereference")._tr._newIf((@:checkr _b ?? throw "null pointer dereference").pos, (@:checkr _b ?? throw "null pointer dereference").line, (@:checkr _b ?? throw "null pointer dereference").pipe, (@:checkr _b ?? throw "null pointer dereference").list, (@:checkr _b ?? throw "null pointer dereference").elseList));
            } else if (__value__ == ((15 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType))) {
                return stdgo.Go.asInterface(@:check2r (@:checkr _b ?? throw "null pointer dereference")._tr._newRange((@:checkr _b ?? throw "null pointer dereference").pos, (@:checkr _b ?? throw "null pointer dereference").line, (@:checkr _b ?? throw "null pointer dereference").pipe, (@:checkr _b ?? throw "null pointer dereference").list, (@:checkr _b ?? throw "null pointer dereference").elseList));
            } else if (__value__ == ((19 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType))) {
                return stdgo.Go.asInterface(@:check2r (@:checkr _b ?? throw "null pointer dereference")._tr._newWith((@:checkr _b ?? throw "null pointer dereference").pos, (@:checkr _b ?? throw "null pointer dereference").line, (@:checkr _b ?? throw "null pointer dereference").pipe, (@:checkr _b ?? throw "null pointer dereference").list, (@:checkr _b ?? throw "null pointer dereference").elseList));
            } else {
                throw stdgo.Go.toInterface(("unknown branch type" : stdgo.GoString));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _tree( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_branchnode.BranchNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_branchnode.BranchNode> = _b;
        return (@:checkr _b ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_branchnode.BranchNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_branchnode.BranchNode> = _b;
        var _name = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        {
            final __value__ = (@:checkr _b ?? throw "null pointer dereference").nodeType;
            if (__value__ == ((10 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType))) {
                _name = ("if" : stdgo.GoString);
            } else if (__value__ == ((15 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType))) {
                _name = ("range" : stdgo.GoString);
            } else if (__value__ == ((19 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType))) {
                _name = ("with" : stdgo.GoString);
            } else {
                throw stdgo.Go.toInterface(("unknown branch type" : stdgo.GoString));
            };
        };
        @:check2r _sb.writeString(("{{" : stdgo.GoString));
        @:check2r _sb.writeString(_name?.__copy__());
        @:check2r _sb.writeByte((32 : stdgo.GoUInt8));
        @:check2r (@:checkr _b ?? throw "null pointer dereference").pipe._writeTo(_sb);
        @:check2r _sb.writeString(("}}" : stdgo.GoString));
        @:check2r (@:checkr _b ?? throw "null pointer dereference").list._writeTo(_sb);
        if (((@:checkr _b ?? throw "null pointer dereference").elseList != null && (((@:checkr _b ?? throw "null pointer dereference").elseList : Dynamic).__nil__ == null || !((@:checkr _b ?? throw "null pointer dereference").elseList : Dynamic).__nil__))) {
            @:check2r _sb.writeString(("{{else}}" : stdgo.GoString));
            @:check2r (@:checkr _b ?? throw "null pointer dereference").elseList._writeTo(_sb);
        };
        @:check2r _sb.writeString(("{{end}}" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function string( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_branchnode.BranchNode>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_branchnode.BranchNode> = _b;
        var _sb:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        @:check2r _b._writeTo((stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>));
        return (@:check2 _sb.string() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_branchnode.BranchNode):stdgo._internal.text.template.parse.Parse_nodetype.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_branchnode.BranchNode):stdgo._internal.text.template.parse.Parse_pos.Pos return @:_5 __self__.position();
}
