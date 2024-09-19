package stdgo._internal.text.template;
function htmlescapeString(_s:stdgo.GoString):stdgo.GoString {
        if (!stdgo._internal.strings.Strings_containsAny.containsAny(_s?.__copy__(), stdgo.Go.str("\'\"&<>", 0)?.__copy__())) {
            return _s?.__copy__();
        };
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        stdgo._internal.text.template.Template_htmlescape.htmlescape(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), (_s : stdgo.Slice<stdgo.GoUInt8>));
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
