package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function isEmptyTree(_n:stdgo._internal.text.template.parse.Parse_Node.Node):Bool {
        {
            final __type__ = _n;
            if (__type__ == null) {
                var _n:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : cast __type__;
                return true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>) : __type__.__underlying__().value;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode>) : __type__.__underlying__().value;
                return true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IfNode.IfNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IfNode.IfNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IfNode.IfNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IfNode.IfNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IfNode.IfNode>) : __type__.__underlying__().value;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>) : __type__.__underlying__().value;
                for (__0 => _node in (@:checkr _n ?? throw "null pointer dereference").nodes) {
                    if (!stdgo._internal.text.template.parse.Parse_isEmptyTree.isEmptyTree(_node)) {
                        return false;
                    };
                };
                return true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode>) : __type__.__underlying__().value;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>) : __type__.__underlying__().value;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>) : __type__.__underlying__().value;
                return (stdgo._internal.bytes.Bytes_trimSpace.trimSpace((@:checkr _n ?? throw "null pointer dereference").text).length) == ((0 : stdgo.GoInt));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_WithNode.WithNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_WithNode.WithNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_WithNode.WithNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_WithNode.WithNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_WithNode.WithNode>) : __type__.__underlying__().value;
            } else {
                var _n:stdgo._internal.text.template.parse.Parse_Node.Node = __type__ == null ? (null : stdgo._internal.text.template.parse.Parse_Node.Node) : cast __type__;
                throw stdgo.Go.toInterface((("unknown node: " : stdgo.GoString) + (_n.string() : stdgo.GoString)?.__copy__() : stdgo.GoString));
            };
        };
        return false;
    }
