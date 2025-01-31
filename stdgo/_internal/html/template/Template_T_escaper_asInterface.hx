package stdgo._internal.html.template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.text.template.parse.Parse;
import stdgo._internal.html.Html;
import stdgo._internal.text.template.Template;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
class T_escaper_asInterface {
    @:keep
    @:tdfield
    public dynamic function _arbitraryTemplate():stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> return @:_0 __self__.value._arbitraryTemplate();
    @:keep
    @:tdfield
    public dynamic function _template(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> return @:_0 __self__.value._template(_name);
    @:keep
    @:tdfield
    public dynamic function _commit():Void @:_0 __self__.value._commit();
    @:keep
    @:tdfield
    public dynamic function _editTextNode(_n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>, _text:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._editTextNode(_n, _text);
    @:keep
    @:tdfield
    public dynamic function _editTemplateNode(_n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>, _callee:stdgo.GoString):Void @:_0 __self__.value._editTemplateNode(_n, _callee);
    @:keep
    @:tdfield
    public dynamic function _editActionNode(_n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>, _cmds:stdgo.Slice<stdgo.GoString>):Void @:_0 __self__.value._editActionNode(_n, _cmds);
    @:keep
    @:tdfield
    public dynamic function _escapeText(_c:stdgo._internal.html.template.Template_T_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>):stdgo._internal.html.template.Template_T_context.T_context return @:_0 __self__.value._escapeText(_c, _n);
    @:keep
    @:tdfield
    public dynamic function _escapeTemplateBody(_c:stdgo._internal.html.template.Template_T_context.T_context, _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>):{ var _0 : stdgo._internal.html.template.Template_T_context.T_context; var _1 : Bool; } return @:_0 __self__.value._escapeTemplateBody(_c, _t);
    @:keep
    @:tdfield
    public dynamic function _computeOutCtx(_c:stdgo._internal.html.template.Template_T_context.T_context, _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>):stdgo._internal.html.template.Template_T_context.T_context return @:_0 __self__.value._computeOutCtx(_c, _t);
    @:keep
    @:tdfield
    public dynamic function _escapeTree(_c:stdgo._internal.html.template.Template_T_context.T_context, _node:stdgo._internal.text.template.parse.Parse_Node.Node, _name:stdgo.GoString, _line:stdgo.GoInt):{ var _0 : stdgo._internal.html.template.Template_T_context.T_context; var _1 : stdgo.GoString; } return @:_0 __self__.value._escapeTree(_c, _node, _name, _line);
    @:keep
    @:tdfield
    public dynamic function _escapeTemplate(_c:stdgo._internal.html.template.Template_T_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>):stdgo._internal.html.template.Template_T_context.T_context return @:_0 __self__.value._escapeTemplate(_c, _n);
    @:keep
    @:tdfield
    public dynamic function _escapeListConditionally(_c:stdgo._internal.html.template.Template_T_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>, _filter:(stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>, stdgo._internal.html.template.Template_T_context.T_context) -> Bool):{ var _0 : stdgo._internal.html.template.Template_T_context.T_context; var _1 : Bool; } return @:_0 __self__.value._escapeListConditionally(_c, _n, _filter);
    @:keep
    @:tdfield
    public dynamic function _escapeList(_c:stdgo._internal.html.template.Template_T_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>):stdgo._internal.html.template.Template_T_context.T_context return @:_0 __self__.value._escapeList(_c, _n);
    @:keep
    @:tdfield
    public dynamic function _escapeBranch(_c:stdgo._internal.html.template.Template_T_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode>, _nodeName:stdgo.GoString):stdgo._internal.html.template.Template_T_context.T_context return @:_0 __self__.value._escapeBranch(_c, _n, _nodeName);
    @:keep
    @:tdfield
    public dynamic function _escapeAction(_c:stdgo._internal.html.template.Template_T_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>):stdgo._internal.html.template.Template_T_context.T_context return @:_0 __self__.value._escapeAction(_c, _n);
    @:keep
    @:tdfield
    public dynamic function _escape(_c:stdgo._internal.html.template.Template_T_context.T_context, _n:stdgo._internal.text.template.parse.Parse_Node.Node):stdgo._internal.html.template.Template_T_context.T_context return @:_0 __self__.value._escape(_c, _n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.html.template.Template_T_escaperPointer.T_escaperPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
