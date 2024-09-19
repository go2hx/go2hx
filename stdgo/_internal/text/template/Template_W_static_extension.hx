package stdgo._internal.text.template;
@:keep @:allow(stdgo._internal.text.template.Template.W_asInterface) class W_static_extension {
    @:keep
    static public function error( _w:stdgo.Ref<stdgo._internal.text.template.Template_W.W>):stdgo.GoString {
        @:recv var _w:stdgo.Ref<stdgo._internal.text.template.Template_W.W> = _w;
        if (_w == null || (_w : Dynamic).__nil__) {
            return ("nilW" : stdgo.GoString);
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("[%d]" : stdgo.GoString), stdgo.Go.toInterface(_w._k))?.__copy__();
    }
}
