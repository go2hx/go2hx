package stdgo._internal.debug.elf;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.debug.dwarf.Dwarf;
import stdgo._internal.compress.zlib.Zlib;
import stdgo._internal.internal.zstd.Zstd;
@:keep @:allow(stdgo._internal.debug.elf.Elf.Prog_asInterface) class Prog_static_extension {
    @:keep
    @:tdfield
    static public function open( _p:stdgo.Ref<stdgo._internal.debug.elf.Elf_Prog.Prog>):stdgo._internal.io.Io_ReadSeeker.ReadSeeker {
        @:recv var _p:stdgo.Ref<stdgo._internal.debug.elf.Elf_Prog.Prog> = _p;
        return stdgo.Go.asInterface(stdgo._internal.io.Io_newSectionReader.newSectionReader(stdgo.Go.asInterface((@:checkr _p ?? throw "null pointer dereference")._sr), (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64)));
    }
    @:embedded
    @:embeddededffieldsffun
    public static function readAt( __self__:stdgo._internal.debug.elf.Elf_Prog.Prog, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.readAt(_0, _1);
}
