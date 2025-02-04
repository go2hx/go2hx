package stdgo._internal.html.template;
class T_escaper_asInterface {
    @:keep
    @:tdfield
    public dynamic function _arbitraryTemplate():stdgo.Ref<stdgo._internal.html.template.Template_template.Template> return @:_0 __self__.value._arbitraryTemplate();
    @:keep
    @:tdfield
    public dynamic function _template(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.Template_template.Template> return @:_0 __self__.value._template(_name);
    @:keep
    @:tdfield
    public dynamic function _commit():Void @:_0 __self__.value._commit();
    @:keep
    @:tdfield
    public dynamic function _editTextNode(_n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>, _text:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._editTextNode(_n, _text);
    @:keep
    @:tdfield
    public dynamic function _editTemplateNode(_n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>, _callee:stdgo.GoString):Void @:_0 __self__.value._editTemplateNode(_n, _callee);
    @:keep
    @:tdfield
    public dynamic function _editActionNode(_n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>, _cmds:stdgo.Slice<stdgo.GoString>):Void @:_0 __self__.value._editActionNode(_n, _cmds);
    @:keep
    @:tdfield
    public dynamic function _escapeText(_c:stdgo._internal.html.template.Template_t_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>):stdgo._internal.html.template.Template_t_context.T_context return @:_0 __self__.value._escapeText(_c, _n);
    @:keep
    @:tdfield
    public dynamic function _escapeTemplateBody(_c:stdgo._internal.html.template.Template_t_context.T_context, _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>):{ var _0 : stdgo._internal.html.template.Template_t_context.T_context; var _1 : Bool; } return @:_0 __self__.value._escapeTemplateBody(_c, _t);
    @:keep
    @:tdfield
    public dynamic function _computeOutCtx(_c:stdgo._internal.html.template.Template_t_context.T_context, _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>):stdgo._internal.html.template.Template_t_context.T_context return @:_0 __self__.value._computeOutCtx(_c, _t);
    @:keep
    @:tdfield
    public dynamic function _escapeTree(_c:stdgo._internal.html.template.Template_t_context.T_context, _node:stdgo._internal.text.template.parse.Parse_node.Node, _name:stdgo.GoString, _line:stdgo.GoInt):{ var _0 : stdgo._internal.html.template.Template_t_context.T_context; var _1 : stdgo.GoString; } return @:_0 __self__.value._escapeTree(_c, _node, _name, _line);
    @:keep
    @:tdfield
    public dynamic function _escapeTemplate(_c:stdgo._internal.html.template.Template_t_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>):stdgo._internal.html.template.Template_t_context.T_context return @:_0 __self__.value._escapeTemplate(_c, _n);
    @:keep
    @:tdfield
    public dynamic function _escapeListConditionally(_c:stdgo._internal.html.template.Template_t_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>, _filter:(stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, stdgo._internal.html.template.Template_t_context.T_context) -> Bool):{ var _0 : stdgo._internal.html.template.Template_t_context.T_context; var _1 : Bool; } return @:_0 __self__.value._escapeListConditionally(_c, _n, _filter);
    @:keep
    @:tdfield
    public dynamic function _escapeList(_c:stdgo._internal.html.template.Template_t_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>):stdgo._internal.html.template.Template_t_context.T_context return @:_0 __self__.value._escapeList(_c, _n);
    @:keep
    @:tdfield
    public dynamic function _escapeBranch(_c:stdgo._internal.html.template.Template_t_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_branchnode.BranchNode>, _nodeName:stdgo.GoString):stdgo._internal.html.template.Template_t_context.T_context return @:_0 __self__.value._escapeBranch(_c, _n, _nodeName);
    @:keep
    @:tdfield
    public dynamic function _escapeAction(_c:stdgo._internal.html.template.Template_t_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>):stdgo._internal.html.template.Template_t_context.T_context return @:_0 __self__.value._escapeAction(_c, _n);
    @:keep
    @:tdfield
    public dynamic function _escape(_c:stdgo._internal.html.template.Template_t_context.T_context, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.html.template.Template_t_context.T_context return @:_0 __self__.value._escape(_c, _n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.html.template.Template_t_escaperpointer.T_escaperPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
