package stdgo._internal.internal.xcoff;
import stdgo._internal.os.Os;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.debug.dwarf.Dwarf;
function _cstring(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            _i = (0 : stdgo.GoInt);
            while (((_i < (_b.length) : Bool) && (_b[(_i : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) : Bool)) {
                {};
                _i++;
            };
        };
        return ((_b.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
