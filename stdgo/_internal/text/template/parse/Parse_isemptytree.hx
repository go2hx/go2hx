package stdgo._internal.text.template.parse;
function isEmptyTree(_n:stdgo._internal.text.template.parse.Parse_node.Node):Bool {
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/parse.go#L271"
        {
            final __type__ = _n;
            if (__type__ == null) {
                var _n:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/text/template/parse/parse.go#L273"
                return true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>) : __type__.__underlying__().value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/parse/parse.go#L276"
                return true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode>) : __type__.__underlying__().value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/parse/parse.go#L279"
                for (__0 => _node in (@:checkr _n ?? throw "null pointer dereference").nodes) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/parse.go#L280"
                    if (!stdgo._internal.text.template.parse.Parse_isemptytree.isEmptyTree(_node)) {
                        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/parse.go#L281"
                        return false;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/text/template/parse/parse.go#L284"
                return true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode>) : __type__.__underlying__().value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>) : __type__.__underlying__().value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/parse/parse.go#L288"
                return (stdgo._internal.bytes.Bytes_trimspace.trimSpace((@:checkr _n ?? throw "null pointer dereference").text).length) == ((0 : stdgo.GoInt));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode>) : __type__.__underlying__().value);
            } else {
                var _n:stdgo._internal.text.template.parse.Parse_node.Node = __type__ == null ? (null : stdgo._internal.text.template.parse.Parse_node.Node) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/text/template/parse/parse.go#L291"
                throw stdgo.Go.toInterface((("unknown node: " : stdgo.GoString) + (_n.string() : stdgo.GoString)?.__copy__() : stdgo.GoString));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/parse.go#L293"
        return false;
    }
