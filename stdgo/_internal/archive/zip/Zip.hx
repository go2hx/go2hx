package stdgo._internal.archive.zip;
@:keep var __init_go2hx__ = {
        try {
            stdgo._internal.archive.zip.Zip__compressors._compressors.store(stdgo.Go.toInterface((0 : stdgo.GoUInt16)), stdgo.Go.toInterface((function(_w:stdgo._internal.io.Io_Writer.Writer):{ var _0 : stdgo._internal.io.Io_WriteCloser.WriteCloser; var _1 : stdgo.Error; } {
                return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.archive.zip.Zip_T_nopCloser.T_nopCloser(_w) : stdgo._internal.archive.zip.Zip_T_nopCloser.T_nopCloser)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_nopCloser.T_nopCloser>)), _1 : (null : stdgo.Error) };
            } : stdgo._internal.archive.zip.Zip_Compressor.Compressor)));
            stdgo._internal.archive.zip.Zip__compressors._compressors.store(stdgo.Go.toInterface((8 : stdgo.GoUInt16)), stdgo.Go.toInterface((function(_w:stdgo._internal.io.Io_Writer.Writer):{ var _0 : stdgo._internal.io.Io_WriteCloser.WriteCloser; var _1 : stdgo.Error; } {
                return { _0 : stdgo._internal.archive.zip.Zip__newFlateWriter._newFlateWriter(_w), _1 : (null : stdgo.Error) };
            } : stdgo._internal.archive.zip.Zip_Compressor.Compressor)));
            stdgo._internal.archive.zip.Zip__decompressors._decompressors.store(stdgo.Go.toInterface((0 : stdgo.GoUInt16)), stdgo.Go.toInterface((stdgo._internal.io.Io_nopCloser.nopCloser : stdgo._internal.archive.zip.Zip_Decompressor.Decompressor)));
            stdgo._internal.archive.zip.Zip__decompressors._decompressors.store(stdgo.Go.toInterface((8 : stdgo.GoUInt16)), stdgo.Go.toInterface((stdgo._internal.archive.zip.Zip__newFlateReader._newFlateReader : stdgo._internal.archive.zip.Zip_Decompressor.Decompressor)));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
