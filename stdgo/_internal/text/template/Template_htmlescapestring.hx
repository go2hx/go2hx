package stdgo._internal.text.template;
function hTMLEscapeString(_s:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L641"
        if (!stdgo._internal.strings.Strings_containsany.containsAny(_s?.__copy__(), (stdgo.Go.str("\'\"&<>", 0) : stdgo.GoString)?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L642"
            return _s?.__copy__();
        };
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L645"
        stdgo._internal.text.template.Template_htmlescape.hTMLEscape(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), (_s : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L646"
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
