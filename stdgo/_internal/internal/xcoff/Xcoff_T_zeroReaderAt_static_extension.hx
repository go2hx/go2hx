package stdgo._internal.internal.xcoff;
import stdgo._internal.os.Os;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.debug.dwarf.Dwarf;
@:keep @:allow(stdgo._internal.internal.xcoff.Xcoff.T_zeroReaderAt_asInterface) class T_zeroReaderAt_static_extension {
    @:keep
    @:tdfield
    static public function readAt( _w:stdgo._internal.internal.xcoff.Xcoff_T_zeroReaderAt.T_zeroReaderAt, _p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo._internal.internal.xcoff.Xcoff_T_zeroReaderAt.T_zeroReaderAt = _w?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        for (_i => _ in _p) {
            _p[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_p.length), _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
