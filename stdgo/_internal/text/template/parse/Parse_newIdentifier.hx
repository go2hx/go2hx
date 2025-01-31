package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function newIdentifier(_ident:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode> {
        return (stdgo.Go.setRef(({ nodeType : (9 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), ident : _ident?.__copy__() } : stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>);
    }
