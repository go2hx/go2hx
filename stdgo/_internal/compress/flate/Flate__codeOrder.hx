package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
var _codeOrder : stdgo.GoArray<stdgo.GoInt> = (new stdgo.GoArray<stdgo.GoInt>(19, 19, ...[
(16 : stdgo.GoInt),
(17 : stdgo.GoInt),
(18 : stdgo.GoInt),
(0 : stdgo.GoInt),
(8 : stdgo.GoInt),
(7 : stdgo.GoInt),
(9 : stdgo.GoInt),
(6 : stdgo.GoInt),
(10 : stdgo.GoInt),
(5 : stdgo.GoInt),
(11 : stdgo.GoInt),
(4 : stdgo.GoInt),
(12 : stdgo.GoInt),
(3 : stdgo.GoInt),
(13 : stdgo.GoInt),
(2 : stdgo.GoInt),
(14 : stdgo.GoInt),
(1 : stdgo.GoInt),
(15 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>);
