package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.CommandNode_asInterface) class CommandNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode> = _c;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L332"
        if (({
            final value = _c;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L333"
            return stdgo.Go.asInterface(_c);
        };
        var _n = (@:checkr _c ?? throw "null pointer dereference")._tr._newCommand((@:checkr _c ?? throw "null pointer dereference").pos);
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L336"
        for (__0 => _c in (@:checkr _c ?? throw "null pointer dereference").args) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L337"
            _n._append(_c.copy());
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L339"
        return stdgo.Go.asInterface(_n);
    }
    @:keep
    @:tdfield
    static public function _tree( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode> = _c;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L328"
        return (@:checkr _c ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode> = _c;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L313"
        for (_i => _arg in (@:checkr _c ?? throw "null pointer dereference").args) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L314"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L315"
                _sb.writeByte((32 : stdgo.GoUInt8));
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L317"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_arg) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>), _1 : false };
                }, _arg = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L318"
                    _sb.writeByte((40 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L319"
                    _arg._writeTo(_sb);
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L320"
                    _sb.writeByte((41 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L321"
                    continue;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L323"
            _arg._writeTo(_sb);
        };
    }
    @:keep
    @:tdfield
    static public function string( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode> = _c;
        var _sb:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L308"
        _c._writeTo((stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>));
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L309"
        return (_sb.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _append( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>, _arg:stdgo._internal.text.template.parse.Parse_node.Node):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode> = _c;
        (@:checkr _c ?? throw "null pointer dereference").args = ((@:checkr _c ?? throw "null pointer dereference").args.__append__(_arg) : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_commandnode.CommandNode):stdgo._internal.text.template.parse.Parse_nodetype.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_commandnode.CommandNode):stdgo._internal.text.template.parse.Parse_pos.Pos return @:_5 __self__.position();
}
