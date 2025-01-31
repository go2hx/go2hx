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
function _zeroMemory(_v:stdgo.Slice<stdgo.GoUInt8>):Void {
        for (_i => _ in _v) {
            _v[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
    }
