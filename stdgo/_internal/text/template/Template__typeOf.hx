package stdgo._internal.text.template;
function _typeOf(_arg:stdgo.AnyInterface):stdgo.GoString {
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%T" : stdgo.GoString), _arg)?.__copy__();
    }
