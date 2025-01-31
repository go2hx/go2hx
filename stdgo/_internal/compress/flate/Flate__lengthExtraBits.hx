package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
var _lengthExtraBits : stdgo.Slice<stdgo.GoInt8> = (new stdgo.Slice<stdgo.GoInt8>(29, 29, ...[
(0 : stdgo.GoInt8),
(0 : stdgo.GoInt8),
(0 : stdgo.GoInt8),
(0 : stdgo.GoInt8),
(0 : stdgo.GoInt8),
(0 : stdgo.GoInt8),
(0 : stdgo.GoInt8),
(0 : stdgo.GoInt8),
(1 : stdgo.GoInt8),
(1 : stdgo.GoInt8),
(1 : stdgo.GoInt8),
(1 : stdgo.GoInt8),
(2 : stdgo.GoInt8),
(2 : stdgo.GoInt8),
(2 : stdgo.GoInt8),
(2 : stdgo.GoInt8),
(3 : stdgo.GoInt8),
(3 : stdgo.GoInt8),
(3 : stdgo.GoInt8),
(3 : stdgo.GoInt8),
(4 : stdgo.GoInt8),
(4 : stdgo.GoInt8),
(4 : stdgo.GoInt8),
(4 : stdgo.GoInt8),
(5 : stdgo.GoInt8),
(5 : stdgo.GoInt8),
(5 : stdgo.GoInt8),
(5 : stdgo.GoInt8),
(0 : stdgo.GoInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt8>);
