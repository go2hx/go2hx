package stdgo._internal.text.template;
@:keep @:allow(stdgo._internal.text.template.Template.V_asInterface) class V_static_extension {
    @:keep
    @:tdfield
    static public function string( _v:stdgo.Ref<stdgo._internal.text.template.Template_v.V>):stdgo.GoString {
        @:recv var _v:stdgo.Ref<stdgo._internal.text.template.Template_v.V> = _v;
        if (({
            final value = _v;
            (value == null || (value : Dynamic).__nil__);
        })) {
            return ("nilV" : stdgo.GoString);
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("<%d>" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _v ?? throw "null pointer dereference")._j))?.__copy__();
    }
}
