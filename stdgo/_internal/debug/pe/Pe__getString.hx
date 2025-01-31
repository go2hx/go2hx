package stdgo._internal.debug.pe;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.compress.zlib.Zlib;
import stdgo._internal.debug.dwarf.Dwarf;
import stdgo._internal.strconv.Strconv;
function _getString(_section:stdgo.Slice<stdgo.GoUInt8>, _start:stdgo.GoInt):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        if (((_start < (0 : stdgo.GoInt) : Bool) || (_start >= (_section.length) : Bool) : Bool)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : false };
        };
        {
            var _end = (_start : stdgo.GoInt);
            while ((_end < (_section.length) : Bool)) {
                if (_section[(_end : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                    return { _0 : ((_section.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString).__copy__(), _1 : true };
                };
                _end++;
            };
        };
        return { _0 : stdgo.Go.str()?.__copy__(), _1 : false };
    }
