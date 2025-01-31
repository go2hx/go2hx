package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.NodeType_asInterface) class NodeType_static_extension {
    @:keep
    @:tdfield
    static public function type( _t:stdgo._internal.text.template.parse.Parse_NodeType.NodeType):stdgo._internal.text.template.parse.Parse_NodeType.NodeType {
        @:recv var _t:stdgo._internal.text.template.parse.Parse_NodeType.NodeType = _t;
        return _t;
    }
}
