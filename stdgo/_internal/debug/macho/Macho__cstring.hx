package stdgo._internal.debug.macho;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.compress.zlib.Zlib;
import stdgo._internal.debug.dwarf.Dwarf;
function _cstring(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        var _i = (stdgo._internal.bytes.Bytes_indexByte.indexByte(_b, (0 : stdgo.GoUInt8)) : stdgo.GoInt);
        if (_i == ((-1 : stdgo.GoInt))) {
            _i = (_b.length);
        };
        return ((_b.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
