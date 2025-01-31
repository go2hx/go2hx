package stdgo._internal.image.png;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.io.Io;
import stdgo._internal.image.color.Color;
import stdgo._internal.image.Image;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.compress.zlib.Zlib;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
function _paeth(_a:stdgo.GoUInt8, _b:stdgo.GoUInt8, _c:stdgo.GoUInt8):stdgo.GoUInt8 {
        var _pc = (_c : stdgo.GoInt);
        var _pa = ((_b : stdgo.GoInt) - _pc : stdgo.GoInt);
        var _pb = ((_a : stdgo.GoInt) - _pc : stdgo.GoInt);
        _pc = stdgo._internal.image.png.Png__abs._abs((_pa + _pb : stdgo.GoInt));
        _pa = stdgo._internal.image.png.Png__abs._abs(_pa);
        _pb = stdgo._internal.image.png.Png__abs._abs(_pb);
        if (((_pa <= _pb : Bool) && (_pa <= _pc : Bool) : Bool)) {
            return _a;
        } else if ((_pb <= _pc : Bool)) {
            return _b;
        };
        return _c;
    }
