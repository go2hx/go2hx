package stdgo._internal.html.template;
function _makeEscaper(_n:stdgo.Ref<stdgo._internal.html.template.Template_t_namespace.T_nameSpace>):stdgo._internal.html.template.Template_t_escaper.T_escaper {
        return (new stdgo._internal.html.template.Template_t_escaper.T_escaper(_n, ({
            final x = new stdgo.GoMap.GoStringMap<stdgo._internal.html.template.Template_t_context.T_context>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.html.template.Template_t_context.T_context);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo._internal.html.template.Template_t_context.T_context>), ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.text.template.Template_template.Template>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_template.Template>>), ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>), ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>, stdgo.Slice<stdgo.GoString>>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>, stdgo.Slice<stdgo.GoString>>), ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>, stdgo.GoString>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>, stdgo.GoString>), ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>, stdgo.Slice<stdgo.GoUInt8>>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>, stdgo.Slice<stdgo.GoUInt8>>), null) : stdgo._internal.html.template.Template_t_escaper.T_escaper);
    }
