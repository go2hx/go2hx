package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.ChainNode_asInterface) class ChainNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode> = _c;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L578"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _tr : (@:checkr _c ?? throw "null pointer dereference")._tr, nodeType : (3 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), pos : (@:checkr _c ?? throw "null pointer dereference").pos, node : (@:checkr _c ?? throw "null pointer dereference").node, field : ((new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...((@:checkr _c ?? throw "null pointer dereference").field : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.text.template.parse.Parse_chainnode.ChainNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>));
    }
    @:keep
    @:tdfield
    static public function _tree( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode> = _c;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L574"
        return (@:checkr _c ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode> = _c;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L560"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference").node) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L561"
                _sb.writeByte((40 : stdgo.GoUInt8));
                //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L562"
                (@:checkr _c ?? throw "null pointer dereference").node._writeTo(_sb);
                //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L563"
                _sb.writeByte((41 : stdgo.GoUInt8));
            } else {
                //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L565"
                (@:checkr _c ?? throw "null pointer dereference").node._writeTo(_sb);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L567"
        for (__1 => _field in (@:checkr _c ?? throw "null pointer dereference").field) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L568"
            _sb.writeByte((46 : stdgo.GoUInt8));
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L569"
            _sb.writeString(_field?.__copy__());
        };
    }
    @:keep
    @:tdfield
    static public function string( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode> = _c;
        var _sb:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L555"
        _c._writeTo((stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>));
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L556"
        return (_sb.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function add( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>, _field:stdgo.GoString):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode> = _c;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L543"
        if (((_field.length == (0 : stdgo.GoInt)) || (_field[(0 : stdgo.GoInt)] != (46 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L544"
            throw stdgo.Go.toInterface(("no dot in field" : stdgo.GoString));
        };
        _field = (_field.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L547"
        if (_field == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L548"
            throw stdgo.Go.toInterface(("empty field" : stdgo.GoString));
        };
        (@:checkr _c ?? throw "null pointer dereference").field = ((@:checkr _c ?? throw "null pointer dereference").field.__append__(_field?.__copy__()) : stdgo.Slice<stdgo.GoString>);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_chainnode.ChainNode):stdgo._internal.text.template.parse.Parse_nodetype.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_chainnode.ChainNode):stdgo._internal.text.template.parse.Parse_pos.Pos return @:_5 __self__.position();
}
