package stdgo._internal.text.template;
function jSEscapeString(_s:stdgo.GoString):stdgo.GoString {
        if ((stdgo._internal.strings.Strings_indexfunc.indexFunc(_s?.__copy__(), stdgo._internal.text.template.Template__jsisspecial._jsIsSpecial) < (0 : stdgo.GoInt) : Bool)) {
            return _s?.__copy__();
        };
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        stdgo._internal.text.template.Template_jsescape.jSEscape(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), (_s : stdgo.Slice<stdgo.GoUInt8>));
        return (@:check2 _b.string() : stdgo.GoString)?.__copy__();
    }
