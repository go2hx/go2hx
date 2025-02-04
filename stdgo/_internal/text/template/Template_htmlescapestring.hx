package stdgo._internal.text.template;
function hTMLEscapeString(_s:stdgo.GoString):stdgo.GoString {
        if (!stdgo._internal.strings.Strings_containsany.containsAny(_s?.__copy__(), (stdgo.Go.str("\'\"&<>", 0) : stdgo.GoString)?.__copy__())) {
            return _s?.__copy__();
        };
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        stdgo._internal.text.template.Template_htmlescape.hTMLEscape(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), (_s : stdgo.Slice<stdgo.GoUInt8>));
        return (@:check2 _b.string() : stdgo.GoString)?.__copy__();
    }
