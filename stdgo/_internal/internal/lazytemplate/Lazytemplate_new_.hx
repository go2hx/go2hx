package stdgo._internal.internal.lazytemplate;
function new_(_name:stdgo.GoString, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.internal.lazytemplate.Lazytemplate_template.Template> {
        var _lt = (stdgo.Go.setRef(({ _name : _name?.__copy__(), _text : _text?.__copy__() } : stdgo._internal.internal.lazytemplate.Lazytemplate_template.Template)) : stdgo.Ref<stdgo._internal.internal.lazytemplate.Lazytemplate_template.Template>);
        if (stdgo._internal.internal.lazytemplate.Lazytemplate__intest._inTest) {
            @:check2r _lt._tp();
        };
        return _lt;
    }
