package stdgo._internal.go.types;
function _goTypeName(_typ:stdgo._internal.go.types.Types_type_.Type_):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/go/types/typexpr.go#L210"
        return stdgo._internal.strings.Strings_replaceall.replaceAll(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%T" : stdgo.GoString), stdgo.Go.toInterface(_typ))?.__copy__(), ("types." : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__())?.__copy__();
    }
