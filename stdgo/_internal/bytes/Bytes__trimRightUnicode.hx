package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function _trimRightUnicode(_s:stdgo.Slice<stdgo.GoUInt8>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            var __0 = (_s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32), __1 = (1 : stdgo.GoInt);
var _n = __1, _r = __0;
            if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeLastRune.decodeLastRune(_s);
                    _r = @:tmpset0 __tmp__._0;
                    _n = @:tmpset0 __tmp__._1;
                };
            };
            if (!stdgo._internal.bytes.Bytes__containsRune._containsRune(_cutset?.__copy__(), _r)) {
                break;
            };
            _s = (_s.__slice__(0, ((_s.length) - _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _s;
    }
