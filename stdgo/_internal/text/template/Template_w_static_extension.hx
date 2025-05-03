package stdgo._internal.text.template;
@:keep @:allow(stdgo._internal.text.template.Template.W_asInterface) class W_static_extension {
    @:keep
    @:tdfield
    static public function error( _w:stdgo.Ref<stdgo._internal.text.template.Template_w.W>):stdgo.GoString {
        @:recv var _w:stdgo.Ref<stdgo._internal.text.template.Template_w.W> = _w;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L116"
        if (({
            final value = _w;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L117"
            return ("nilW" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L119"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("[%d]" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _w ?? throw "null pointer dereference")._k))?.__copy__();
    }
}
