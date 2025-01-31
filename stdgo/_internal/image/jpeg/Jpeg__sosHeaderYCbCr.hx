package stdgo._internal.image.jpeg;
import stdgo._internal.image.color.Color;
import stdgo._internal.image.Image;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.image.internal.imageutil.Imageutil;
var _sosHeaderYCbCr : stdgo.Slice<stdgo.GoUInt8> = (new stdgo.Slice<stdgo.GoUInt8>(14, 14, ...[
(255 : stdgo.GoUInt8),
(218 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(17 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(17 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(63 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
