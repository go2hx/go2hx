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
@:keep @:allow(stdgo._internal.debug.pe.Pe.SectionHeader32_asInterface) class SectionHeader32_static_extension {
    @:keep
    @:tdfield
    static public function _fullName( _sh:stdgo.Ref<stdgo._internal.debug.pe.Pe_SectionHeader32.SectionHeader32>, _st:stdgo._internal.debug.pe.Pe_StringTable.StringTable):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _sh:stdgo.Ref<stdgo._internal.debug.pe.Pe_SectionHeader32.SectionHeader32> = _sh;
        if ((@:checkr _sh ?? throw "null pointer dereference").name[(0 : stdgo.GoInt)] != ((47 : stdgo.GoUInt8))) {
            return { _0 : stdgo._internal.debug.pe.Pe__cstring._cstring(((@:checkr _sh ?? throw "null pointer dereference").name.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(stdgo._internal.debug.pe.Pe__cstring._cstring(((@:checkr _sh ?? throw "null pointer dereference").name.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__()), _i:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
        };
        return _st.string((_i : stdgo.GoUInt32));
    }
}
