package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.FieldNode_asInterface) class FieldNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _f:stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _f:stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode> = _f;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L523"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _tr : (@:checkr _f ?? throw "null pointer dereference")._tr, nodeType : (8 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), pos : (@:checkr _f ?? throw "null pointer dereference").pos, ident : ((new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...((@:checkr _f ?? throw "null pointer dereference").ident : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>));
    }
    @:keep
    @:tdfield
    static public function _tree( _f:stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> {
        @:recv var _f:stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode> = _f;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L519"
        return (@:checkr _f ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _f:stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode> = _f;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L512"
        for (__0 => _id in (@:checkr _f ?? throw "null pointer dereference").ident) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L513"
            _sb.writeByte((46 : stdgo.GoUInt8));
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L514"
            _sb.writeString(_id?.__copy__());
        };
    }
    @:keep
    @:tdfield
    static public function string( _f:stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>):stdgo.GoString {
        @:recv var _f:stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode> = _f;
        var _sb:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L507"
        _f._writeTo((stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>));
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L508"
        return (_sb.string() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode):stdgo._internal.text.template.parse.Parse_nodetype.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode):stdgo._internal.text.template.parse.Parse_pos.Pos return @:_5 __self__.position();
}
