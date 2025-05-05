package stdgo._internal.text.template;
@:keep @:allow(stdgo._internal.text.template.Template.U_asInterface) class U_static_extension {
    @:keep
    @:tdfield
    static public function trueFalse( _u:stdgo.Ref<stdgo._internal.text.template.Template_u.U>, _b:Bool):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.text.template.Template_u.U> = _u;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L246"
        if (_b) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L247"
            return ("true" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L249"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
}
