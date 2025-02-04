package stdgo._internal.text.template;
function testEmptyTemplateCloneCrash(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _t1 = stdgo._internal.text.template.Template_new_.new_(("base" : stdgo.GoString));
        @:check2r _t1.clone();
    }
