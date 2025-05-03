package stdgo._internal.text.template;
function _stringer(_s:stdgo._internal.fmt.Fmt_stringer.Stringer):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L770"
        return (_s.string() : stdgo.GoString)?.__copy__();
    }
