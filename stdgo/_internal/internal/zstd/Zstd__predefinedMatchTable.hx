package stdgo._internal.internal.zstd;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.errors.Errors;
var _predefinedMatchTable : stdgo.GoArray<stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry> = (new stdgo.GoArray<stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>(64, 64, ...[
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((3u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((4u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((5u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (32 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((6u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((8u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((9u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((11u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((13u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((16u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((19u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((22u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((25u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((28u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((31u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((34u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((37u32 : stdgo.GoUInt32), (1 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((41u32 : stdgo.GoUInt32), (1 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((47u32 : stdgo.GoUInt32), (2 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((59u32 : stdgo.GoUInt32), (3 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((83u32 : stdgo.GoUInt32), (4 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((131u32 : stdgo.GoUInt32), (7 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((515u32 : stdgo.GoUInt32), (9 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((4u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (16 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((5u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((6u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (32 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((7u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((9u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (32 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((10u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((12u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((15u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((18u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((21u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((24u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((27u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((30u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((33u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((35u32 : stdgo.GoUInt32), (1 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((39u32 : stdgo.GoUInt32), (1 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((43u32 : stdgo.GoUInt32), (2 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((51u32 : stdgo.GoUInt32), (3 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((67u32 : stdgo.GoUInt32), (4 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((99u32 : stdgo.GoUInt32), (5 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((259u32 : stdgo.GoUInt32), (8 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((4u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (32 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((4u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (48 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((5u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (16 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((7u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (32 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((8u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (32 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((10u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (32 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((11u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (32 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((14u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((17u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((20u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((23u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((26u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((29u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((32u32 : stdgo.GoUInt32), (0 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((65539u32 : stdgo.GoUInt32), (16 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((32771u32 : stdgo.GoUInt32), (15 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((16387u32 : stdgo.GoUInt32), (14 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((8195u32 : stdgo.GoUInt32), (13 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((4099u32 : stdgo.GoUInt32), (12 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((2051u32 : stdgo.GoUInt32), (11 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry),
(new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((1027u32 : stdgo.GoUInt32), (10 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (0 : stdgo.GoUInt16)) : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry)].concat([for (i in 64 ... (64 > 64 ? 64 : 64 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry)])) : stdgo.GoArray<stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>);
