package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
var _codegenOrder : stdgo.Slice<stdgo.GoUInt32> = (new stdgo.Slice<stdgo.GoUInt32>(19, 19, ...[
(16u32 : stdgo.GoUInt32),
(17u32 : stdgo.GoUInt32),
(18u32 : stdgo.GoUInt32),
(0u32 : stdgo.GoUInt32),
(8u32 : stdgo.GoUInt32),
(7u32 : stdgo.GoUInt32),
(9u32 : stdgo.GoUInt32),
(6u32 : stdgo.GoUInt32),
(10u32 : stdgo.GoUInt32),
(5u32 : stdgo.GoUInt32),
(11u32 : stdgo.GoUInt32),
(4u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(3u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(2u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(1u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
