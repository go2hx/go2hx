package stdgo._internal.encoding.gob;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.io.Io;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.sort.Sort;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.encoding.binary.Binary;
var _encodeT : stdgo.Slice<stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT> = (new stdgo.Slice<stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT>(14, 14, ...[
(new stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT((0i64 : stdgo.GoUInt64), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT),
(new stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT((15i64 : stdgo.GoUInt64), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(15 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT),
(new stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT((255i64 : stdgo.GoUInt64), (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT),
(new stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT((65535i64 : stdgo.GoUInt64), (new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(254 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT),
(new stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT((16777215i64 : stdgo.GoUInt64), (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(253 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT),
(new stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT((4294967295i64 : stdgo.GoUInt64), (new stdgo.Slice<stdgo.GoUInt8>(5, 5, ...[(252 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT),
(new stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT((1099511627775i64 : stdgo.GoUInt64), (new stdgo.Slice<stdgo.GoUInt8>(6, 6, ...[(251 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT),
(new stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT((281474976710655i64 : stdgo.GoUInt64), (new stdgo.Slice<stdgo.GoUInt8>(7, 7, ...[(250 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT),
(new stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT((72057594037927935i64 : stdgo.GoUInt64), (new stdgo.Slice<stdgo.GoUInt8>(8, 8, ...[(249 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT),
(new stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT((-1i64 : stdgo.GoUInt64), (new stdgo.Slice<stdgo.GoUInt8>(9, 9, ...[(248 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT),
(new stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT((4369i64 : stdgo.GoUInt64), (new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(254 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT),
(new stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT((1229782938247303441i64 : stdgo.GoUInt64), (new stdgo.Slice<stdgo.GoUInt8>(9, 9, ...[(248 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT),
(new stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT((-8608480567731124088i64 : stdgo.GoUInt64), (new stdgo.Slice<stdgo.GoUInt8>(9, 9, ...[(248 : stdgo.GoUInt8), (136 : stdgo.GoUInt8), (136 : stdgo.GoUInt8), (136 : stdgo.GoUInt8), (136 : stdgo.GoUInt8), (136 : stdgo.GoUInt8), (136 : stdgo.GoUInt8), (136 : stdgo.GoUInt8), (136 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT),
(new stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT((-9223372036854775808i64 : stdgo.GoUInt64), (new stdgo.Slice<stdgo.GoUInt8>(9, 9, ...[(248 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT)].concat([for (i in 14 ... (14 > 14 ? 14 : 14 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT)])) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT>);
