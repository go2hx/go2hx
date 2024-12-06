package stdgo._internal.text.template;
function jsescapeString(_s:stdgo.GoString):stdgo.GoString {
        if ((stdgo._internal.strings.Strings_indexFunc.indexFunc(_s?.__copy__(), stdgo._internal.text.template.Template__jsIsSpecial._jsIsSpecial) < (0 : stdgo.GoInt) : Bool)) {
            return _s?.__copy__();
        };
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        stdgo._internal.text.template.Template_jsescape.jsescape(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), (_s : stdgo.Slice<stdgo.GoUInt8>));
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
