package stdgo._internal.crypto.ecdh;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.internal.nistec.Nistec;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.io.Io;
var _p256Order : stdgo.Slice<stdgo.GoUInt8> = (new stdgo.Slice<stdgo.GoUInt8>(32, 32, ...[
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(188 : stdgo.GoUInt8),
(230 : stdgo.GoUInt8),
(250 : stdgo.GoUInt8),
(173 : stdgo.GoUInt8),
(167 : stdgo.GoUInt8),
(23 : stdgo.GoUInt8),
(158 : stdgo.GoUInt8),
(132 : stdgo.GoUInt8),
(243 : stdgo.GoUInt8),
(185 : stdgo.GoUInt8),
(202 : stdgo.GoUInt8),
(194 : stdgo.GoUInt8),
(252 : stdgo.GoUInt8),
(99 : stdgo.GoUInt8),
(37 : stdgo.GoUInt8),
(81 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
