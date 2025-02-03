package stdgo.html.template;
class T_escaper_static_extension {
    static public function _arbitraryTemplate(_e:T_escaper):Template_ {
        final _e = (_e : stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>);
        return stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._arbitraryTemplate(_e);
    }
    static public function _template(_e:T_escaper, _name:String):stdgo._internal.text.template.Template_Template.Template {
        final _e = (_e : stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._template(_e, _name);
    }
    static public function _commit(_e:T_escaper):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>);
        stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._commit(_e);
    }
    static public function _editTextNode(_e:T_escaper, _n:stdgo._internal.text.template.parse.Parse_TextNode.TextNode, _text:Array<std.UInt>):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>);
        final _n = (_n : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>);
        final _text = ([for (i in _text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._editTextNode(_e, _n, _text);
    }
    static public function _editTemplateNode(_e:T_escaper, _n:stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode, _callee:String):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>);
        final _n = (_n : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>);
        final _callee = (_callee : stdgo.GoString);
        stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._editTemplateNode(_e, _n, _callee);
    }
    static public function _editActionNode(_e:T_escaper, _n:stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode, _cmds:Array<String>):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>);
        final _n = (_n : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>);
        final _cmds = ([for (i in _cmds) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._editActionNode(_e, _n, _cmds);
    }
    static public function _escapeText(_e:T_escaper, _c:T_context, _n:stdgo._internal.text.template.parse.Parse_TextNode.TextNode):T_context {
        final _e = (_e : stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>);
        final _n = (_n : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>);
        return stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._escapeText(_e, _c, _n);
    }
    static public function _escapeTemplateBody(_e:T_escaper, _c:T_context, _t:stdgo._internal.text.template.Template_Template.Template):stdgo.Tuple<T_context, Bool> {
        final _e = (_e : stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>);
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        return {
            final obj = stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._escapeTemplateBody(_e, _c, _t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _computeOutCtx(_e:T_escaper, _c:T_context, _t:stdgo._internal.text.template.Template_Template.Template):T_context {
        final _e = (_e : stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>);
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        return stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._computeOutCtx(_e, _c, _t);
    }
    static public function _escapeTree(_e:T_escaper, _c:T_context, _node:stdgo._internal.text.template.parse.Parse_Node.Node, _name:String, _line:StdTypes.Int):stdgo.Tuple<T_context, String> {
        final _e = (_e : stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>);
        final _name = (_name : stdgo.GoString);
        final _line = (_line : stdgo.GoInt);
        return {
            final obj = stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._escapeTree(_e, _c, _node, _name, _line);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _escapeTemplate(_e:T_escaper, _c:T_context, _n:stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode):T_context {
        final _e = (_e : stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>);
        final _n = (_n : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>);
        return stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._escapeTemplate(_e, _c, _n);
    }
    static public function _escapeListConditionally(_e:T_escaper, _c:T_context, _n:stdgo._internal.text.template.parse.Parse_ListNode.ListNode, _filter:(stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>, stdgo._internal.html.template.Template_T_context.T_context) -> Bool):stdgo.Tuple<T_context, Bool> {
        final _e = (_e : stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>);
        final _n = (_n : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
        final _filter = _filter;
        return {
            final obj = stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._escapeListConditionally(_e, _c, _n, _filter);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _escapeList(_e:T_escaper, _c:T_context, _n:stdgo._internal.text.template.parse.Parse_ListNode.ListNode):T_context {
        final _e = (_e : stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>);
        final _n = (_n : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
        return stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._escapeList(_e, _c, _n);
    }
    static public function _escapeBranch(_e:T_escaper, _c:T_context, _n:stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode, _nodeName:String):T_context {
        final _e = (_e : stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>);
        final _n = (_n : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode>);
        final _nodeName = (_nodeName : stdgo.GoString);
        return stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._escapeBranch(_e, _c, _n, _nodeName);
    }
    static public function _escapeAction(_e:T_escaper, _c:T_context, _n:stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode):T_context {
        final _e = (_e : stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>);
        final _n = (_n : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>);
        return stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._escapeAction(_e, _c, _n);
    }
    static public function _escape(_e:T_escaper, _c:T_context, _n:stdgo._internal.text.template.parse.Parse_Node.Node):T_context {
        final _e = (_e : stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>);
        return stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._escape(_e, _c, _n);
    }
}
