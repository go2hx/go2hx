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
@:keep @:follow @:using(stdgo._internal.debug.macho.Macho_FormatError_static_extension.FormatError_static_extension) typedef FormatErrorPointer = stdgo.Pointer<stdgo._internal.debug.macho.Macho_FormatError.FormatError>;
