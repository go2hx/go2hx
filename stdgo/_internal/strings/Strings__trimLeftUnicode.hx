package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function _trimLeftUnicode(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString {
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            var __0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32), __1 = (1 : stdgo.GoInt);
var _n = __1, _r = __0;
            if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_s?.__copy__());
                    _r = @:tmpset0 __tmp__._0;
                    _n = @:tmpset0 __tmp__._1;
                };
            };
            if (!stdgo._internal.strings.Strings_containsRune.containsRune(_cutset?.__copy__(), _r)) {
                break;
            };
            _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
