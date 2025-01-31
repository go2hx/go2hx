package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function newReader(_s:stdgo.GoString):stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader> {
        return (stdgo.Go.setRef((new stdgo._internal.strings.Strings_Reader.Reader(_s?.__copy__(), (0i64 : stdgo.GoInt64), (-1 : stdgo.GoInt)) : stdgo._internal.strings.Strings_Reader.Reader)) : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>);
    }
