package stdgo.internal.coverage.encodemeta;
class CoverageMetaFileWriter_static_extension {
    static public function write(_m:CoverageMetaFileWriter, _finalHash:haxe.ds.Vector<std.UInt>, _blobs:Array<Array<std.UInt>>, _mode:stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode, _granularity:stdgo._internal.internal.coverage.Coverage_CounterGranularity.CounterGranularity):stdgo.Error {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_CoverageMetaFileWriter.CoverageMetaFileWriter>);
        final _finalHash = ([for (i in _finalHash) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        final _blobs = ([for (i in _blobs) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        return stdgo._internal.internal.coverage.encodemeta.Encodemeta_CoverageMetaFileWriter_static_extension.CoverageMetaFileWriter_static_extension.write(_m, _finalHash, _blobs, _mode, _granularity);
    }
}
