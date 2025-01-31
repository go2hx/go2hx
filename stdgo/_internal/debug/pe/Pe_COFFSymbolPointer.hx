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
@:keep @:follow @:using(stdgo._internal.debug.pe.Pe_COFFSymbol_static_extension.COFFSymbol_static_extension) typedef COFFSymbolPointer = stdgo.Pointer<stdgo._internal.debug.pe.Pe_COFFSymbol.COFFSymbol>;
