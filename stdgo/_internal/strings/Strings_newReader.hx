package stdgo._internal.strings;
function newReader(_s:stdgo.GoString):stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader> {
        return (stdgo.Go.setRef((new stdgo._internal.strings.Strings_Reader.Reader(_s?.__copy__(), (0i64 : stdgo.GoInt64), (-1 : stdgo.GoInt)) : stdgo._internal.strings.Strings_Reader.Reader)) : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>);
    }