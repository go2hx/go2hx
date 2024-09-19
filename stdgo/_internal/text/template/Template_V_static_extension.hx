package stdgo._internal.text.template;
@:keep @:allow(stdgo._internal.text.template.Template.V_asInterface) class V_static_extension {
    @:keep
    static public function string( _v:stdgo.Ref<stdgo._internal.text.template.Template_V.V>):stdgo.GoString {
        @:recv var _v:stdgo.Ref<stdgo._internal.text.template.Template_V.V> = _v;
        if (_v == null || (_v : Dynamic).__nil__) {
            return ("nilV" : stdgo.GoString);
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("<%d>" : stdgo.GoString), stdgo.Go.toInterface(_v._j))?.__copy__();
    }
}
