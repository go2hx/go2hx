package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.PipeNode_asInterface) class PipeNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> = _p;
        return stdgo.Go.asInterface(@:check2r _p.copyPipe());
    }
    @:keep
    @:tdfield
    static public function copyPipe( _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> {
        @:recv var _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> = _p;
        if ((_p == null || (_p : Dynamic).__nil__)) {
            return _p;
        };
        var _vars = (new stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>>(((@:checkr _p ?? throw "null pointer dereference").decl.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>>);
        for (_i => _d in (@:checkr _p ?? throw "null pointer dereference").decl) {
            _vars[(_i : stdgo.GoInt)] = (stdgo.Go.typeAssert((stdgo.Go.toInterface(@:check2r _d.copy()) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>);
        };
        var _n = @:check2r (@:checkr _p ?? throw "null pointer dereference")._tr._newPipeline((@:checkr _p ?? throw "null pointer dereference").pos, (@:checkr _p ?? throw "null pointer dereference").line, _vars);
        (@:checkr _n ?? throw "null pointer dereference").isAssign = (@:checkr _p ?? throw "null pointer dereference").isAssign;
        for (__0 => _c in (@:checkr _p ?? throw "null pointer dereference").cmds) {
            @:check2r _n._append((stdgo.Go.typeAssert((stdgo.Go.toInterface(@:check2r _c.copy()) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>));
        };
        return _n;
    }
    @:keep
    @:tdfield
    static public function _tree( _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> = _p;
        return (@:checkr _p ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> = _p;
        if ((((@:checkr _p ?? throw "null pointer dereference").decl.length) > (0 : stdgo.GoInt) : Bool)) {
            for (_i => _v in (@:checkr _p ?? throw "null pointer dereference").decl) {
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _sb.writeString((", " : stdgo.GoString));
                };
                @:check2r _v._writeTo(_sb);
            };
            @:check2r _sb.writeString((" := " : stdgo.GoString));
        };
        for (_i => _c in (@:checkr _p ?? throw "null pointer dereference").cmds) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                @:check2r _sb.writeString((" | " : stdgo.GoString));
            };
            @:check2r _c._writeTo(_sb);
        };
    }
    @:keep
    @:tdfield
    static public function string( _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> = _p;
        var _sb:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        @:check2r _p._writeTo((stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>));
        return (@:check2 _sb.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _append( _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, _command:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> = _p;
        (@:checkr _p ?? throw "null pointer dereference").cmds = ((@:checkr _p ?? throw "null pointer dereference").cmds.__append__(_command));
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return @:_5 __self__.position();
}
