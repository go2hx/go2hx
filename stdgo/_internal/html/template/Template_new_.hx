package stdgo._internal.html.template;
function new_(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> {
        var _ns = (stdgo.Go.setRef(({ _set : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>>) } : stdgo._internal.html.template.Template_T_nameSpace.T_nameSpace)) : stdgo.Ref<stdgo._internal.html.template.Template_T_nameSpace.T_nameSpace>);
        (@:checkr _ns ?? throw "null pointer dereference")._esc = stdgo._internal.html.template.Template__makeEscaper._makeEscaper(_ns)?.__copy__();
        var _tmpl = (stdgo.Go.setRef((new stdgo._internal.html.template.Template_Template.Template((null : stdgo.Error), stdgo._internal.text.template.Template_new_.new_(_name?.__copy__()), null, _ns) : stdgo._internal.html.template.Template_Template.Template)) : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
        (@:checkr _tmpl ?? throw "null pointer dereference")._nameSpace._set[_name] = _tmpl;
        return _tmpl;
    }
