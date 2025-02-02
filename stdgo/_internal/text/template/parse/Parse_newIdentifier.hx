package stdgo._internal.text.template.parse;
function newIdentifier(_ident:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode> {
        return (stdgo.Go.setRef(({ nodeType : (9 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), ident : _ident?.__copy__() } : stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>);
    }
