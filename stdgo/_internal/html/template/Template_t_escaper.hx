package stdgo._internal.html.template;
@:structInit @:using(stdgo._internal.html.template.Template_t_escaper_static_extension.T_escaper_static_extension) class T_escaper {
    public var _ns : stdgo.Ref<stdgo._internal.html.template.Template_t_namespace.T_nameSpace> = (null : stdgo.Ref<stdgo._internal.html.template.Template_t_namespace.T_nameSpace>);
    public var _output : stdgo.GoMap<stdgo.GoString, stdgo._internal.html.template.Template_t_context.T_context> = (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.html.template.Template_t_context.T_context>);
    public var _derived : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_template.Template>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_template.Template>>);
    public var _called : stdgo.GoMap<stdgo.GoString, Bool> = (null : stdgo.GoMap<stdgo.GoString, Bool>);
    public var _actionNodeEdits : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>, stdgo.Slice<stdgo.GoString>> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>, stdgo.Slice<stdgo.GoString>>);
    public var _templateNodeEdits : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>, stdgo.GoString> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>, stdgo.GoString>);
    public var _textNodeEdits : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>, stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>, stdgo.Slice<stdgo.GoUInt8>>);
    public var _rangeContext : stdgo.Ref<stdgo._internal.html.template.Template_t_rangecontext.T_rangeContext> = (null : stdgo.Ref<stdgo._internal.html.template.Template_t_rangecontext.T_rangeContext>);
    public function new(?_ns:stdgo.Ref<stdgo._internal.html.template.Template_t_namespace.T_nameSpace>, ?_output:stdgo.GoMap<stdgo.GoString, stdgo._internal.html.template.Template_t_context.T_context>, ?_derived:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_template.Template>>, ?_called:stdgo.GoMap<stdgo.GoString, Bool>, ?_actionNodeEdits:stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>, stdgo.Slice<stdgo.GoString>>, ?_templateNodeEdits:stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>, stdgo.GoString>, ?_textNodeEdits:stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>, stdgo.Slice<stdgo.GoUInt8>>, ?_rangeContext:stdgo.Ref<stdgo._internal.html.template.Template_t_rangecontext.T_rangeContext>) {
        if (_ns != null) this._ns = _ns;
        if (_output != null) this._output = _output;
        if (_derived != null) this._derived = _derived;
        if (_called != null) this._called = _called;
        if (_actionNodeEdits != null) this._actionNodeEdits = _actionNodeEdits;
        if (_templateNodeEdits != null) this._templateNodeEdits = _templateNodeEdits;
        if (_textNodeEdits != null) this._textNodeEdits = _textNodeEdits;
        if (_rangeContext != null) this._rangeContext = _rangeContext;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_escaper(_ns, _output, _derived, _called, _actionNodeEdits, _templateNodeEdits, _textNodeEdits, _rangeContext);
    }
}
