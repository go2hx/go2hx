package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
var _offsetExtraBits : stdgo.Slice<stdgo.GoInt8> = (new stdgo.Slice<stdgo.GoInt8>(30, 30, ...[
(0 : stdgo.GoInt8),
(0 : stdgo.GoInt8),
(0 : stdgo.GoInt8),
(0 : stdgo.GoInt8),
(1 : stdgo.GoInt8),
(1 : stdgo.GoInt8),
(2 : stdgo.GoInt8),
(2 : stdgo.GoInt8),
(3 : stdgo.GoInt8),
(3 : stdgo.GoInt8),
(4 : stdgo.GoInt8),
(4 : stdgo.GoInt8),
(5 : stdgo.GoInt8),
(5 : stdgo.GoInt8),
(6 : stdgo.GoInt8),
(6 : stdgo.GoInt8),
(7 : stdgo.GoInt8),
(7 : stdgo.GoInt8),
(8 : stdgo.GoInt8),
(8 : stdgo.GoInt8),
(9 : stdgo.GoInt8),
(9 : stdgo.GoInt8),
(10 : stdgo.GoInt8),
(10 : stdgo.GoInt8),
(11 : stdgo.GoInt8),
(11 : stdgo.GoInt8),
(12 : stdgo.GoInt8),
(12 : stdgo.GoInt8),
(13 : stdgo.GoInt8),
(13 : stdgo.GoInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt8>);
