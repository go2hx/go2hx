package stdgo._internal.text.template;
function _typeOf(_arg:stdgo.AnyInterface):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L253"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%T" : stdgo.GoString), _arg)?.__copy__();
    }
