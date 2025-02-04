package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.CommandNode_asInterface) class CommandNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode> = _c;
        if ((_c == null || (_c : Dynamic).__nil__)) {
            return stdgo.Go.asInterface(_c);
        };
        var _n = @:check2r (@:checkr _c ?? throw "null pointer dereference")._tr._newCommand((@:checkr _c ?? throw "null pointer dereference").pos);
        for (__0 => _c in (@:checkr _c ?? throw "null pointer dereference").args) {
            @:check2r _n._append(_c.copy());
        };
        return stdgo.Go.asInterface(_n);
    }
    @:keep
    @:tdfield
    static public function _tree( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode> = _c;
        return (@:checkr _c ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode> = _c;
        for (_i => _arg in (@:checkr _c ?? throw "null pointer dereference").args) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                @:check2r _sb.writeByte((32 : stdgo.GoUInt8));
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_arg) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>), _1 : false };
                }, _arg = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    @:check2r _sb.writeByte((40 : stdgo.GoUInt8));
                    @:check2r _arg._writeTo(_sb);
                    @:check2r _sb.writeByte((41 : stdgo.GoUInt8));
                    continue;
                };
            };
            _arg._writeTo(_sb);
        };
    }
    @:keep
    @:tdfield
    static public function string( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode> = _c;
        var _sb:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        @:check2r _c._writeTo((stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>));
        return (@:check2 _sb.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _append( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>, _arg:stdgo._internal.text.template.parse.Parse_node.Node):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode> = _c;
        (@:checkr _c ?? throw "null pointer dereference").args = ((@:checkr _c ?? throw "null pointer dereference").args.__append__(_arg));
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_commandnode.CommandNode):stdgo._internal.text.template.parse.Parse_nodetype.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_commandnode.CommandNode):stdgo._internal.text.template.parse.Parse_pos.Pos return @:_5 __self__.position();
}
