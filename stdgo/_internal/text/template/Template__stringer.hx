package stdgo._internal.text.template;
function _stringer(_s:stdgo._internal.fmt.Fmt_Stringer.Stringer):stdgo.GoString {
        return (_s.string() : stdgo.GoString)?.__copy__();
    }
