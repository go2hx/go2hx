package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.ChainNode_asInterface) class ChainNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode> = _c;
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _tr : (@:checkr _c ?? throw "null pointer dereference")._tr, nodeType : (3 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : (@:checkr _c ?? throw "null pointer dereference").pos, node : (@:checkr _c ?? throw "null pointer dereference").node, field : ((new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...((@:checkr _c ?? throw "null pointer dereference").field : Array<stdgo.GoString>))) } : stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode>));
    }
    @:keep
    @:tdfield
    static public function _tree( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode> = _c;
        return (@:checkr _c ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode> = _c;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference").node) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                @:check2r _sb.writeByte((40 : stdgo.GoUInt8));
                (@:checkr _c ?? throw "null pointer dereference").node._writeTo(_sb);
                @:check2r _sb.writeByte((41 : stdgo.GoUInt8));
            } else {
                (@:checkr _c ?? throw "null pointer dereference").node._writeTo(_sb);
            };
        };
        for (__1 => _field in (@:checkr _c ?? throw "null pointer dereference").field) {
            @:check2r _sb.writeByte((46 : stdgo.GoUInt8));
            @:check2r _sb.writeString(_field?.__copy__());
        };
    }
    @:keep
    @:tdfield
    static public function string( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode> = _c;
        var _sb:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        @:check2r _c._writeTo((stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>));
        return (@:check2 _sb.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function add( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode>, _field:stdgo.GoString):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode> = _c;
        if (((_field.length == (0 : stdgo.GoInt)) || (_field[(0 : stdgo.GoInt)] != (46 : stdgo.GoUInt8)) : Bool)) {
            throw stdgo.Go.toInterface(("no dot in field" : stdgo.GoString));
        };
        _field = (_field.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        if (_field == (stdgo.Go.str())) {
            throw stdgo.Go.toInterface(("empty field" : stdgo.GoString));
        };
        (@:checkr _c ?? throw "null pointer dereference").field = ((@:checkr _c ?? throw "null pointer dereference").field.__append__(_field?.__copy__()));
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return @:_5 __self__.position();
}
