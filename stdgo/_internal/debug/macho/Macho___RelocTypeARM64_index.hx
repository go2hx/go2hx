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
var __RelocTypeARM64_index : stdgo.GoArray<stdgo.GoUInt16> = (new stdgo.GoArray<stdgo.GoUInt16>(12, 12, ...[
(0 : stdgo.GoUInt16),
(20 : stdgo.GoUInt16),
(42 : stdgo.GoUInt16),
(62 : stdgo.GoUInt16),
(80 : stdgo.GoUInt16),
(101 : stdgo.GoUInt16),
(128 : stdgo.GoUInt16),
(158 : stdgo.GoUInt16),
(184 : stdgo.GoUInt16),
(212 : stdgo.GoUInt16),
(243 : stdgo.GoUInt16),
(261 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt16>);
