package stdgo.html.template;
@:structInit @:using(stdgo.html.template.Template.T_escaper_static_extension) abstract T_escaper(stdgo._internal.html.template.Template_T_escaper.T_escaper) from stdgo._internal.html.template.Template_T_escaper.T_escaper to stdgo._internal.html.template.Template_T_escaper.T_escaper {
    public var _ns(get, set) : T_nameSpace;
    function get__ns():T_nameSpace return this._ns;
    function set__ns(v:T_nameSpace):T_nameSpace {
        this._ns = (v : stdgo.Ref<stdgo._internal.html.template.Template_T_nameSpace.T_nameSpace>);
        return v;
    }
    public var _output(get, set) : stdgo.GoMap<stdgo.GoString, stdgo._internal.html.template.Template_T_context.T_context>;
    function get__output():stdgo.GoMap<stdgo.GoString, stdgo._internal.html.template.Template_T_context.T_context> return this._output;
    function set__output(v:stdgo.GoMap<stdgo.GoString, stdgo._internal.html.template.Template_T_context.T_context>):stdgo.GoMap<stdgo.GoString, stdgo._internal.html.template.Template_T_context.T_context> {
        this._output = (v : stdgo.GoMap<stdgo.GoString, stdgo._internal.html.template.Template_T_context.T_context>);
        return v;
    }
    public var _derived(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>>;
    function get__derived():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>> return this._derived;
    function set__derived(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>> {
        this._derived = (v : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>>);
        return v;
    }
    public var _called(get, set) : stdgo.GoMap<stdgo.GoString, Bool>;
    function get__called():stdgo.GoMap<stdgo.GoString, Bool> return this._called;
    function set__called(v:stdgo.GoMap<stdgo.GoString, Bool>):stdgo.GoMap<stdgo.GoString, Bool> {
        this._called = (v : stdgo.GoMap<stdgo.GoString, Bool>);
        return v;
    }
    public var _actionNodeEdits(get, set) : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>, stdgo.Slice<stdgo.GoString>>;
    function get__actionNodeEdits():stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>, stdgo.Slice<stdgo.GoString>> return this._actionNodeEdits;
    function set__actionNodeEdits(v:stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>, stdgo.Slice<stdgo.GoString>>):stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>, stdgo.Slice<stdgo.GoString>> {
        this._actionNodeEdits = (v : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>, stdgo.Slice<stdgo.GoString>>);
        return v;
    }
    public var _templateNodeEdits(get, set) : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>, stdgo.GoString>;
    function get__templateNodeEdits():stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>, stdgo.GoString> return this._templateNodeEdits;
    function set__templateNodeEdits(v:stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>, stdgo.GoString>):stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>, stdgo.GoString> {
        this._templateNodeEdits = (v : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>, stdgo.GoString>);
        return v;
    }
    public var _textNodeEdits(get, set) : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>, stdgo.Slice<stdgo.GoUInt8>>;
    function get__textNodeEdits():stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>, stdgo.Slice<stdgo.GoUInt8>> return this._textNodeEdits;
    function set__textNodeEdits(v:stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>, stdgo.Slice<stdgo.GoUInt8>>):stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>, stdgo.Slice<stdgo.GoUInt8>> {
        this._textNodeEdits = (v : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>, stdgo.Slice<stdgo.GoUInt8>>);
        return v;
    }
    public var _rangeContext(get, set) : T_rangeContext;
    function get__rangeContext():T_rangeContext return this._rangeContext;
    function set__rangeContext(v:T_rangeContext):T_rangeContext {
        this._rangeContext = (v : stdgo.Ref<stdgo._internal.html.template.Template_T_rangeContext.T_rangeContext>);
        return v;
    }
    public function new(?_ns:T_nameSpace, ?_output:stdgo.GoMap<stdgo.GoString, stdgo._internal.html.template.Template_T_context.T_context>, ?_derived:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>>, ?_called:stdgo.GoMap<stdgo.GoString, Bool>, ?_actionNodeEdits:stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>, stdgo.Slice<stdgo.GoString>>, ?_templateNodeEdits:stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>, stdgo.GoString>, ?_textNodeEdits:stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>, stdgo.Slice<stdgo.GoUInt8>>, ?_rangeContext:T_rangeContext) this = new stdgo._internal.html.template.Template_T_escaper.T_escaper((_ns : stdgo.Ref<stdgo._internal.html.template.Template_T_nameSpace.T_nameSpace>), (_output : stdgo.GoMap<stdgo.GoString, stdgo._internal.html.template.Template_T_context.T_context>), (_derived : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>>), (_called : stdgo.GoMap<stdgo.GoString, Bool>), (_actionNodeEdits : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>, stdgo.Slice<stdgo.GoString>>), (_templateNodeEdits : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>, stdgo.GoString>), (_textNodeEdits : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>, stdgo.Slice<stdgo.GoUInt8>>), (_rangeContext : stdgo.Ref<stdgo._internal.html.template.Template_T_rangeContext.T_rangeContext>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
