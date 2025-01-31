package stdgo._internal.internal.zstd;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.errors.Errors;
var _seqCodeInfo : stdgo.GoArray<stdgo._internal.internal.zstd.Zstd_T_seqCodeInfoData.T_seqCodeInfoData> = {
        var s:stdgo.GoArray<stdgo._internal.internal.zstd.Zstd_T_seqCodeInfoData.T_seqCodeInfoData> = new stdgo.GoArray<stdgo._internal.internal.zstd.Zstd_T_seqCodeInfoData.T_seqCodeInfoData>(3, 3, ...[for (i in 0 ... 3) ({} : stdgo._internal.internal.zstd.Zstd_T_seqCodeInfoData.T_seqCodeInfoData)]);
        s[0] = ({ _predefTable : (stdgo._internal.internal.zstd.Zstd__predefinedLiteralTable._predefinedLiteralTable.__slice__(0) : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>), _predefTableBits : (6 : stdgo.GoInt), _maxSym : (35 : stdgo.GoInt), _maxBits : (9 : stdgo.GoInt), _toBaseline : stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._makeLiteralBaselineFSE } : stdgo._internal.internal.zstd.Zstd_T_seqCodeInfoData.T_seqCodeInfoData);
        s[1] = ({ _predefTable : (stdgo._internal.internal.zstd.Zstd__predefinedOffsetTable._predefinedOffsetTable.__slice__(0) : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>), _predefTableBits : (5 : stdgo.GoInt), _maxSym : (31 : stdgo.GoInt), _maxBits : (8 : stdgo.GoInt), _toBaseline : stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._makeOffsetBaselineFSE } : stdgo._internal.internal.zstd.Zstd_T_seqCodeInfoData.T_seqCodeInfoData);
        s[2] = ({ _predefTable : (stdgo._internal.internal.zstd.Zstd__predefinedMatchTable._predefinedMatchTable.__slice__(0) : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>), _predefTableBits : (6 : stdgo.GoInt), _maxSym : (52 : stdgo.GoInt), _maxBits : (9 : stdgo.GoInt), _toBaseline : stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._makeMatchBaselineFSE } : stdgo._internal.internal.zstd.Zstd_T_seqCodeInfoData.T_seqCodeInfoData);
        s;
    };
