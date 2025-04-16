package stdgo.internal.coverage.decodemeta;
typedef CoverageMetaDataDecoder = stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder;
typedef CoverageMetaFileReader = stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader;
typedef CoverageMetaDataDecoderPointer = stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoderpointer.CoverageMetaDataDecoderPointer;
typedef CoverageMetaFileReaderPointer = stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereaderpointer.CoverageMetaFileReaderPointer;
class Decodemeta {
    static public inline function newCoverageMetaDataDecoder(_b:stdgo.Slice<stdgo.GoUInt8>, _readonly:Bool):{ var _0 : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder>; var _1 : stdgo.Error; } return stdgo._internal.internal.coverage.decodemeta.Decodemeta_newcoveragemetadatadecoder.newCoverageMetaDataDecoder(_b, _readonly);
    /**
        * NewCoverageMetaFileReader returns a new helper object for reading
        * the coverage meta-data output file 'f'. The param 'fileView' is a
        * read-only slice containing the contents of 'f' obtained by mmap'ing
        * the file read-only; 'fileView' may be nil, in which case the helper
        * will read the contents of the file using regular file Read
        * operations.
    **/
    static public inline function newCoverageMetaFileReader(_f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _fileView:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader>; var _1 : stdgo.Error; } return stdgo._internal.internal.coverage.decodemeta.Decodemeta_newcoveragemetafilereader.newCoverageMetaFileReader(_f, _fileView);
}
