package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.PipeNode_asInterface) class PipeNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode> = _p;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L251"
        return stdgo.Go.asInterface(_p.copyPipe());
    }
    @:keep
    @:tdfield
    static public function copyPipe( _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode> {
        @:recv var _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode> = _p;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L235"
        if (({
            final value = _p;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L236"
            return _p;
        };
        var _vars = (new stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>>(((@:checkr _p ?? throw "null pointer dereference").decl.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>>);
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L239"
        for (_i => _d in (@:checkr _p ?? throw "null pointer dereference").decl) {
            _vars[(_i : stdgo.GoInt)] = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_d.copy()) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>);
        };
        var _n = (@:checkr _p ?? throw "null pointer dereference")._tr._newPipeline((@:checkr _p ?? throw "null pointer dereference").pos, (@:checkr _p ?? throw "null pointer dereference").line, _vars);
        (@:checkr _n ?? throw "null pointer dereference").isAssign = (@:checkr _p ?? throw "null pointer dereference").isAssign;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L244"
        for (__0 => _c in (@:checkr _p ?? throw "null pointer dereference").cmds) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L245"
            _n._append((stdgo.Go.typeAssert((stdgo.Go.toInterface(_c.copy()) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L247"
        return _n;
    }
    @:keep
    @:tdfield
    static public function _tree( _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> {
        @:recv var _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode> = _p;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L231"
        return (@:checkr _p ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode> = _p;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L213"
        if ((((@:checkr _p ?? throw "null pointer dereference").decl.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L214"
            for (_i => _v in (@:checkr _p ?? throw "null pointer dereference").decl) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L215"
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L216"
                    _sb.writeString((", " : stdgo.GoString));
                };
                //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L218"
                _v._writeTo(_sb);
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L220"
            _sb.writeString((" := " : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L222"
        for (_i => _c in (@:checkr _p ?? throw "null pointer dereference").cmds) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L223"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L224"
                _sb.writeString((" | " : stdgo.GoString));
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L226"
            _c._writeTo(_sb);
        };
    }
    @:keep
    @:tdfield
    static public function string( _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode> = _p;
        var _sb:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L208"
        _p._writeTo((stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>));
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L209"
        return (_sb.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _append( _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>, _command:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode> = _p;
        (@:checkr _p ?? throw "null pointer dereference").cmds = ((@:checkr _p ?? throw "null pointer dereference").cmds.__append__(_command) : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>>);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_pipenode.PipeNode):stdgo._internal.text.template.parse.Parse_nodetype.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_pipenode.PipeNode):stdgo._internal.text.template.parse.Parse_pos.Pos return @:_5 __self__.position();
}
