package stdgo._internal.archive.zip;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.archive.zip.Zip__zipinsecurepath._zipinsecurepath, __tmp__1 = stdgo._internal.archive.zip.Zip_errFormat.errFormat, __tmp__2 = stdgo._internal.archive.zip.Zip_errAlgorithm.errAlgorithm, __tmp__3 = stdgo._internal.archive.zip.Zip_errChecksum.errChecksum, __tmp__4 = stdgo._internal.archive.zip.Zip_errInsecurePath.errInsecurePath, __tmp__5 = stdgo._internal.archive.zip.Zip__dotFile._dotFile, __tmp__6 = stdgo._internal.archive.zip.Zip__errLongName._errLongName, __tmp__7 = stdgo._internal.archive.zip.Zip__errLongExtra._errLongExtra;
            @:check2 stdgo._internal.archive.zip.Zip__compressors._compressors.store(stdgo.Go.toInterface((0 : stdgo.GoUInt16)), stdgo.Go.toInterface((function(_w:stdgo._internal.io.Io_Writer.Writer):{ var _0 : stdgo._internal.io.Io_WriteCloser.WriteCloser; var _1 : stdgo.Error; } {
                return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.archive.zip.Zip_T_nopCloser.T_nopCloser(_w) : stdgo._internal.archive.zip.Zip_T_nopCloser.T_nopCloser)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_nopCloser.T_nopCloser>)), _1 : (null : stdgo.Error) };
            } : stdgo._internal.archive.zip.Zip_Compressor.Compressor)));
            @:check2 stdgo._internal.archive.zip.Zip__compressors._compressors.store(stdgo.Go.toInterface((8 : stdgo.GoUInt16)), stdgo.Go.toInterface((function(_w:stdgo._internal.io.Io_Writer.Writer):{ var _0 : stdgo._internal.io.Io_WriteCloser.WriteCloser; var _1 : stdgo.Error; } {
                return { _0 : stdgo._internal.archive.zip.Zip__newFlateWriter._newFlateWriter(_w), _1 : (null : stdgo.Error) };
            } : stdgo._internal.archive.zip.Zip_Compressor.Compressor)));
            @:check2 stdgo._internal.archive.zip.Zip__decompressors._decompressors.store(stdgo.Go.toInterface((0 : stdgo.GoUInt16)), stdgo.Go.toInterface((stdgo._internal.io.Io_nopCloser.nopCloser : stdgo._internal.archive.zip.Zip_Decompressor.Decompressor)));
            @:check2 stdgo._internal.archive.zip.Zip__decompressors._decompressors.store(stdgo.Go.toInterface((8 : stdgo.GoUInt16)), stdgo.Go.toInterface((stdgo._internal.archive.zip.Zip__newFlateReader._newFlateReader : stdgo._internal.archive.zip.Zip_Decompressor.Decompressor)));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
