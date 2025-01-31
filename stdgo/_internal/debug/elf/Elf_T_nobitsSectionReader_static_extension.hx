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
@:keep @:allow(stdgo._internal.debug.elf.Elf.T_nobitsSectionReader_asInterface) class T_nobitsSectionReader_static_extension {
    @:keep
    @:tdfield
    static public function readAt( _:stdgo.Ref<stdgo._internal.debug.elf.Elf_T_nobitsSectionReader.T_nobitsSectionReader>, _p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo.Ref<stdgo._internal.debug.elf.Elf_T_nobitsSectionReader.T_nobitsSectionReader> = _;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("unexpected read from SHT_NOBITS section" : stdgo.GoString)) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
