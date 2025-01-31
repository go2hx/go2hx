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
@:keep @:allow(stdgo._internal.debug.macho.Macho.FatFile_asInterface) class FatFile_static_extension {
    @:keep
    @:tdfield
    static public function close( _ff:stdgo.Ref<stdgo._internal.debug.macho.Macho_FatFile.FatFile>):stdgo.Error {
        @:recv var _ff:stdgo.Ref<stdgo._internal.debug.macho.Macho_FatFile.FatFile> = _ff;
        var _err:stdgo.Error = (null : stdgo.Error);
        if ((@:checkr _ff ?? throw "null pointer dereference")._closer != null) {
            _err = (@:checkr _ff ?? throw "null pointer dereference")._closer.close();
            (@:checkr _ff ?? throw "null pointer dereference")._closer = (null : stdgo._internal.io.Io_Closer.Closer);
        };
        return _err;
    }
}
