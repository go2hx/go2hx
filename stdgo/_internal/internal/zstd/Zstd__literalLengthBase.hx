package stdgo._internal.internal.zstd;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.errors.Errors;
var _literalLengthBase : stdgo.Slice<stdgo.GoUInt32> = (new stdgo.Slice<stdgo.GoUInt32>(20, 20, ...[
(16777232u32 : stdgo.GoUInt32),
(16777234u32 : stdgo.GoUInt32),
(16777236u32 : stdgo.GoUInt32),
(16777238u32 : stdgo.GoUInt32),
(33554456u32 : stdgo.GoUInt32),
(33554460u32 : stdgo.GoUInt32),
(50331680u32 : stdgo.GoUInt32),
(50331688u32 : stdgo.GoUInt32),
(67108912u32 : stdgo.GoUInt32),
(100663360u32 : stdgo.GoUInt32),
(117440640u32 : stdgo.GoUInt32),
(134217984u32 : stdgo.GoUInt32),
(150995456u32 : stdgo.GoUInt32),
(167773184u32 : stdgo.GoUInt32),
(184551424u32 : stdgo.GoUInt32),
(201330688u32 : stdgo.GoUInt32),
(218112000u32 : stdgo.GoUInt32),
(234897408u32 : stdgo.GoUInt32),
(251691008u32 : stdgo.GoUInt32),
(268500992u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
