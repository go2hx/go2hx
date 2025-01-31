package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function split(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        return stdgo._internal.strings.Strings__genSplit._genSplit(_s?.__copy__(), _sep?.__copy__(), (0 : stdgo.GoInt), (-1 : stdgo.GoInt));
    }
