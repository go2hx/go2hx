package stdgo.internal.coverage.encodemeta;
typedef CoverageMetaDataBuilder = stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder;
typedef CoverageMetaFileWriter = stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetafilewriter.CoverageMetaFileWriter;
typedef CoverageMetaDataBuilderPointer = stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilderpointer.CoverageMetaDataBuilderPointer;
typedef CoverageMetaFileWriterPointer = stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetafilewriterpointer.CoverageMetaFileWriterPointer;
class Encodemeta {
    static public inline function newCoverageMetaDataBuilder(_pkgpath:stdgo.GoString, _pkgname:stdgo.GoString, _modulepath:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder>; var _1 : stdgo.Error; } return stdgo._internal.internal.coverage.encodemeta.Encodemeta_newcoveragemetadatabuilder.newCoverageMetaDataBuilder(_pkgpath, _pkgname, _modulepath);
    /**
        * HashFuncDesc computes an md5 sum of a coverage.FuncDesc and returns
        * a digest for it.
    **/
    static public inline function hashFuncDesc(_f:stdgo.Ref<stdgo._internal.internal.coverage.Coverage_funcdesc.FuncDesc>):stdgo.GoArray<stdgo.GoUInt8> return stdgo._internal.internal.coverage.encodemeta.Encodemeta_hashfuncdesc.hashFuncDesc(_f);
    static public inline function newCoverageMetaFileWriter(_mfname:stdgo.GoString, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetafilewriter.CoverageMetaFileWriter> return stdgo._internal.internal.coverage.encodemeta.Encodemeta_newcoveragemetafilewriter.newCoverageMetaFileWriter(_mfname, _w);
}
