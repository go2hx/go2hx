package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function indexRune(_s:stdgo.GoString, _r:stdgo.GoInt32):stdgo.GoInt {
        if ((((0 : stdgo.GoInt32) <= _r : Bool) && (_r < (128 : stdgo.GoInt32) : Bool) : Bool)) {
            return stdgo._internal.strings.Strings_indexByte.indexByte(_s?.__copy__(), (_r : stdgo.GoUInt8));
        } else if (_r == ((65533 : stdgo.GoInt32))) {
            for (_i => _r in _s) {
                if (_r == ((65533 : stdgo.GoInt32))) {
                    return _i;
                };
            };
            return (-1 : stdgo.GoInt);
        } else if (!stdgo._internal.unicode.utf8.Utf8_validRune.validRune(_r)) {
            return (-1 : stdgo.GoInt);
        } else {
            return stdgo._internal.strings.Strings_index.index(_s?.__copy__(), (_r : stdgo.GoString)?.__copy__());
        };
    }
