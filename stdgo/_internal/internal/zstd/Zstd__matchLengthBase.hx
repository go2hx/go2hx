package stdgo._internal.internal.zstd;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.errors.Errors;
var _matchLengthBase : stdgo.Slice<stdgo.GoUInt32> = (new stdgo.Slice<stdgo.GoUInt32>(21, 21, ...[
(16777251u32 : stdgo.GoUInt32),
(16777253u32 : stdgo.GoUInt32),
(16777255u32 : stdgo.GoUInt32),
(16777257u32 : stdgo.GoUInt32),
(33554475u32 : stdgo.GoUInt32),
(33554479u32 : stdgo.GoUInt32),
(50331699u32 : stdgo.GoUInt32),
(50331707u32 : stdgo.GoUInt32),
(67108931u32 : stdgo.GoUInt32),
(67108947u32 : stdgo.GoUInt32),
(83886179u32 : stdgo.GoUInt32),
(117440643u32 : stdgo.GoUInt32),
(134217987u32 : stdgo.GoUInt32),
(150995459u32 : stdgo.GoUInt32),
(167773187u32 : stdgo.GoUInt32),
(184551427u32 : stdgo.GoUInt32),
(201330691u32 : stdgo.GoUInt32),
(218112003u32 : stdgo.GoUInt32),
(234897411u32 : stdgo.GoUInt32),
(251691011u32 : stdgo.GoUInt32),
(268500995u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
