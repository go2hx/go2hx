package stdgo._internal.text.template;
function jSEscapeString(_s:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L724"
        if ((stdgo._internal.strings.Strings_indexfunc.indexFunc(_s?.__copy__(), stdgo._internal.text.template.Template__jsisspecial._jsIsSpecial) < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L725"
            return _s?.__copy__();
        };
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L728"
        stdgo._internal.text.template.Template_jsescape.jSEscape(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), (_s : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L729"
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
