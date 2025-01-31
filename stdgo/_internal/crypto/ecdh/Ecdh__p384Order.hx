package stdgo._internal.crypto.ecdh;
import stdgo._internal.errors.Errors;
import _internal.crypto.internal.nistec.Nistec;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.io.Io;
var _p384Order : stdgo.Slice<stdgo.GoUInt8> = (new stdgo.Slice<stdgo.GoUInt8>(48, 48, ...[
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(199 : stdgo.GoUInt8),
(99 : stdgo.GoUInt8),
(77 : stdgo.GoUInt8),
(129 : stdgo.GoUInt8),
(244 : stdgo.GoUInt8),
(55 : stdgo.GoUInt8),
(45 : stdgo.GoUInt8),
(223 : stdgo.GoUInt8),
(88 : stdgo.GoUInt8),
(26 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(178 : stdgo.GoUInt8),
(72 : stdgo.GoUInt8),
(176 : stdgo.GoUInt8),
(167 : stdgo.GoUInt8),
(122 : stdgo.GoUInt8),
(236 : stdgo.GoUInt8),
(236 : stdgo.GoUInt8),
(25 : stdgo.GoUInt8),
(106 : stdgo.GoUInt8),
(204 : stdgo.GoUInt8),
(197 : stdgo.GoUInt8),
(41 : stdgo.GoUInt8),
(115 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
