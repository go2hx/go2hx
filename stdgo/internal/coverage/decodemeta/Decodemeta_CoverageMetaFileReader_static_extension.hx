package stdgo.internal.coverage.decodemeta;
class CoverageMetaFileReader_static_extension {
    static public function getPackagePayload(_r:CoverageMetaFileReader, _pkIdx:std.UInt, _payloadbuf:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaFileReader.CoverageMetaFileReader>);
        final _pkIdx = (_pkIdx : stdgo.GoUInt32);
        final _payloadbuf = ([for (i in _payloadbuf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaFileReader_static_extension.CoverageMetaFileReader_static_extension.getPackagePayload(_r, _pkIdx, _payloadbuf);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function getPackageDecoder(_r:CoverageMetaFileReader, _pkIdx:std.UInt, _payloadbuf:Array<std.UInt>):stdgo.Tuple.Tuple3<CoverageMetaDataDecoder, Array<std.UInt>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaFileReader.CoverageMetaFileReader>);
        final _pkIdx = (_pkIdx : stdgo.GoUInt32);
        final _payloadbuf = ([for (i in _payloadbuf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaFileReader_static_extension.CoverageMetaFileReader_static_extension.getPackageDecoder(_r, _pkIdx, _payloadbuf);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public function fileHash(_r:CoverageMetaFileReader):haxe.ds.Vector<std.UInt> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaFileReader.CoverageMetaFileReader>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaFileReader_static_extension.CoverageMetaFileReader_static_extension.fileHash(_r)) i]);
    }
    static public function counterGranularity(_r:CoverageMetaFileReader):stdgo._internal.internal.coverage.Coverage_CounterGranularity.CounterGranularity {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaFileReader.CoverageMetaFileReader>);
        return stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaFileReader_static_extension.CoverageMetaFileReader_static_extension.counterGranularity(_r);
    }
    static public function counterMode(_r:CoverageMetaFileReader):stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaFileReader.CoverageMetaFileReader>);
        return stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaFileReader_static_extension.CoverageMetaFileReader_static_extension.counterMode(_r);
    }
    static public function numPackages(_r:CoverageMetaFileReader):haxe.UInt64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaFileReader.CoverageMetaFileReader>);
        return stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaFileReader_static_extension.CoverageMetaFileReader_static_extension.numPackages(_r);
    }
    static public function _rdUint64(_r:CoverageMetaFileReader):stdgo.Tuple<haxe.UInt64, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaFileReader.CoverageMetaFileReader>);
        return {
            final obj = stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaFileReader_static_extension.CoverageMetaFileReader_static_extension._rdUint64(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readFileHeader(_r:CoverageMetaFileReader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaFileReader.CoverageMetaFileReader>);
        return stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaFileReader_static_extension.CoverageMetaFileReader_static_extension._readFileHeader(_r);
    }
}
