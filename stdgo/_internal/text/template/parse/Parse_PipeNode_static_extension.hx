package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.PipeNode_asInterface) class PipeNode_static_extension {
    @:keep
    static public function copy( _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> = _p;
        return stdgo.Go.asInterface(_p.copyPipe());
    }
    @:keep
    static public function copyPipe( _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> {
        @:recv var _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> = _p;
        if (_p == null || (_p : Dynamic).__nil__) {
            return _p;
        };
        var _vars = (new stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>>((_p.decl.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>>);
        for (_i => _d in _p.decl) {
            _vars[(_i : stdgo.GoInt)] = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_d.copy()) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>);
        };
        var _n = _p._tr._newPipeline(_p.pos, _p.line, _vars);
        _n.isAssign = _p.isAssign;
        for (__0 => _c in _p.cmds) {
            _n._append((stdgo.Go.typeAssert((stdgo.Go.toInterface(_c.copy()) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>));
        };
        return _n;
    }
    @:keep
    static public function _tree( _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> = _p;
        return _p._tr;
    }
    @:keep
    static public function _writeTo( _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> = _p;
        if (((_p.decl.length) > (0 : stdgo.GoInt) : Bool)) {
            for (_i => _v in _p.decl) {
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    _sb.writeString((", " : stdgo.GoString));
                };
                _v._writeTo(_sb);
            };
            _sb.writeString((" := " : stdgo.GoString));
        };
        for (_i => _c in _p.cmds) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _sb.writeString((" | " : stdgo.GoString));
            };
            _c._writeTo(_sb);
        };
    }
    @:keep
    static public function string( _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> = _p;
        var _sb:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        _p._writeTo((stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>));
        return (_sb.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _append( _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, _command:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> = _p;
        _p.cmds = (_p.cmds.__append__(_command));
    }
    @:embedded
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return __self__.type();
    @:embedded
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return __self__.position();
}
