package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function trimSpace(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _start = (0 : stdgo.GoInt);
        while ((_start < (_s.length) : Bool)) {
            var _c = (_s[(_start : stdgo.GoInt)] : stdgo.GoUInt8);
if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                return stdgo._internal.bytes.Bytes_trimFunc.trimFunc((_s.__slice__(_start) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.unicode.Unicode_isSpace.isSpace);
            };
if (stdgo._internal.bytes.Bytes__asciiSpace._asciiSpace[(_c : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                break;
            };
            _start++;
        };
        var _stop = (_s.length : stdgo.GoInt);
        while ((_stop > _start : Bool)) {
            var _c = (_s[(_stop - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                return stdgo._internal.bytes.Bytes_trimFunc.trimFunc((_s.__slice__(_start, _stop) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.unicode.Unicode_isSpace.isSpace);
            };
if (stdgo._internal.bytes.Bytes__asciiSpace._asciiSpace[(_c : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                break;
            };
            _stop--;
        };
        if (_start == (_stop)) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        return (_s.__slice__(_start, _stop) : stdgo.Slice<stdgo.GoUInt8>);
    }
