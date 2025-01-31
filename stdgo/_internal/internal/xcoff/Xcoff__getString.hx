package stdgo._internal.internal.xcoff;
import stdgo._internal.os.Os;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.debug.dwarf.Dwarf;
function _getString(_st:stdgo.Slice<stdgo.GoUInt8>, _offset:stdgo.GoUInt32):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        if (((_offset < (4u32 : stdgo.GoUInt32) : Bool) || ((_offset : stdgo.GoInt) >= (_st.length) : Bool) : Bool)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : false };
        };
        return { _0 : stdgo._internal.internal.xcoff.Xcoff__cstring._cstring((_st.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__(), _1 : true };
    }
