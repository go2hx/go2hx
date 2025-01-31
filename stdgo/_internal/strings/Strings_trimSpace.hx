package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function trimSpace(_s:stdgo.GoString):stdgo.GoString {
        var _start = (0 : stdgo.GoInt);
        while ((_start < (_s.length) : Bool)) {
            var _c = (_s[(_start : stdgo.GoInt)] : stdgo.GoUInt8);
if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                return stdgo._internal.strings.Strings_trimFunc.trimFunc((_s.__slice__(_start) : stdgo.GoString).__copy__(), stdgo._internal.unicode.Unicode_isSpace.isSpace).__copy__();
            };
if (stdgo._internal.strings.Strings__asciiSpace._asciiSpace[(_c : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                break;
            };
            _start++;
        };
        var _stop = (_s.length : stdgo.GoInt);
        while ((_stop > _start : Bool)) {
            var _c = (_s[(_stop - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                return stdgo._internal.strings.Strings_trimRightFunc.trimRightFunc((_s.__slice__(_start, _stop) : stdgo.GoString).__copy__(), stdgo._internal.unicode.Unicode_isSpace.isSpace).__copy__();
            };
if (stdgo._internal.strings.Strings__asciiSpace._asciiSpace[(_c : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                break;
            };
            _stop--;
        };
        return (_s.__slice__(_start, _stop) : stdgo.GoString)?.__copy__();
    }
