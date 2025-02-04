package stdgo._internal.text.template;
function must(_t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>, _err:stdgo.Error):stdgo.Ref<stdgo._internal.text.template.Template_template.Template> {
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        return _t;
    }
