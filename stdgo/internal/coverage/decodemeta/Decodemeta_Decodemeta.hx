package stdgo.internal.coverage.decodemeta;
class Decodemeta {
    static public inline function newCoverageMetaDataDecoder(_b:Array<std.UInt>, _readonly:Bool):stdgo.Tuple<CoverageMetaDataDecoder, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.coverage.decodemeta.Decodemeta_newCoverageMetaDataDecoder.newCoverageMetaDataDecoder(_b, _readonly);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewCoverageMetaFileReader returns a new helper object for reading
        the coverage meta-data output file 'f'. The param 'fileView' is a
        read-only slice containing the contents of 'f' obtained by mmap'ing
        the file read-only; 'fileView' may be nil, in which case the helper
        will read the contents of the file using regular file Read
        operations.
    **/
    static public inline function newCoverageMetaFileReader(_f:stdgo._internal.os.Os_File.File, _fileView:Array<std.UInt>):stdgo.Tuple<CoverageMetaFileReader, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        final _fileView = ([for (i in _fileView) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.coverage.decodemeta.Decodemeta_newCoverageMetaFileReader.newCoverageMetaFileReader(_f, _fileView);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
