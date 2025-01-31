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
@:keep @:allow(stdgo._internal.debug.pe.Pe.Section_asInterface) class Section_static_extension {
    @:keep
    @:tdfield
    static public function open( _s:stdgo.Ref<stdgo._internal.debug.pe.Pe_Section.Section>):stdgo._internal.io.Io_ReadSeeker.ReadSeeker {
        @:recv var _s:stdgo.Ref<stdgo._internal.debug.pe.Pe_Section.Section> = _s;
        return stdgo.Go.asInterface(stdgo._internal.io.Io_newSectionReader.newSectionReader(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference")._sr), (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64)));
    }
    @:keep
    @:tdfield
    static public function data( _s:stdgo.Ref<stdgo._internal.debug.pe.Pe_Section.Section>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.debug.pe.Pe_Section.Section> = _s;
        return stdgo._internal.internal.saferio.Saferio_readDataAt.readDataAt(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference")._sr), ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.size : stdgo.GoUInt64), (0i64 : stdgo.GoInt64));
    }
    @:embedded
    @:embeddededffieldsffun
    public static function readAt( __self__:stdgo._internal.debug.pe.Pe_Section.Section, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.readAt(_0, _1);
}
