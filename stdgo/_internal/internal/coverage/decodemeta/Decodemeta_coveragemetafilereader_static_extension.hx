package stdgo._internal.internal.coverage.decodemeta;
@:keep @:allow(stdgo._internal.internal.coverage.decodemeta.Decodemeta.CoverageMetaFileReader_asInterface) class CoverageMetaFileReader_static_extension {
    @:keep
    @:tdfield
    static public function getPackagePayload( _r:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader>, _pkIdx:stdgo.GoUInt32, _payloadbuf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader> = _r;
        if (((_pkIdx : stdgo.GoUInt64) >= (@:checkr _r ?? throw "null pointer dereference")._hdr.entries : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("GetPackagePayload: illegal pkg index %d" : stdgo.GoString), stdgo.Go.toInterface(_pkIdx)) };
        };
        var _off = ((@:checkr _r ?? throw "null pointer dereference")._pkgOffsets[(_pkIdx : stdgo.GoInt)] : stdgo.GoUInt64);
        var _len = ((@:checkr _r ?? throw "null pointer dereference")._pkgLengths[(_pkIdx : stdgo.GoInt)] : stdgo.GoUInt64);
        if ((@:checkr _r ?? throw "null pointer dereference")._debug) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=-= for pk %d, off=%d len=%d\n" : stdgo.GoString), stdgo.Go.toInterface(_pkIdx), stdgo.Go.toInterface(_off), stdgo.Go.toInterface(_len));
        };
        if ((@:checkr _r ?? throw "null pointer dereference")._fileView != null) {
            return { _0 : ((@:checkr _r ?? throw "null pointer dereference")._fileView.__slice__(_off, (_off + _len : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
        };
        var _payload = (_payloadbuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        if ((_payload.capacity < (_len : stdgo.GoInt) : Bool)) {
            _payload = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _len).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        _payload = (_payload.__append__(...((new stdgo.Slice<stdgo.GoUInt8>((_len : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        {
            var __tmp__ = @:check2r (@:checkr _r ?? throw "null pointer dereference")._f.seek((_off : stdgo.GoInt64), (0 : stdgo.GoInt)), __19:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(stdgo.Go.asInterface((@:checkr _r ?? throw "null pointer dereference")._f), _payload), __22:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        return { _0 : _payload, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function getPackageDecoder( _r:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader>, _pkIdx:stdgo.GoUInt32, _payloadbuf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader> = _r;
        var __tmp__ = @:check2r _r.getPackagePayload(_pkIdx, _payloadbuf), _pp:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((@:checkr _r ?? throw "null pointer dereference")._debug) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=-= pkidx=%d payload length is %d hash=%s\n" : stdgo.GoString), stdgo.Go.toInterface(_pkIdx), stdgo.Go.toInterface((_pp.length)), stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.crypto.md5.Md5_sum.sum(_pp)))));
        };
        if (_err != null) {
            return { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _err };
        };
        var __tmp__ = stdgo._internal.internal.coverage.decodemeta.Decodemeta_newcoveragemetadatadecoder.newCoverageMetaDataDecoder(_pp, (@:checkr _r ?? throw "null pointer dereference")._fileView != null), _mdd:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _err };
        };
        return { _0 : _mdd, _1 : _pp, _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function fileHash( _r:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader>):stdgo.GoArray<stdgo.GoUInt8> {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._hdr.metaFileHash?.__copy__();
    }
    @:keep
    @:tdfield
    static public function counterGranularity( _r:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader>):stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._hdr.cGranularity;
    }
    @:keep
    @:tdfield
    static public function counterMode( _r:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader>):stdgo._internal.internal.coverage.Coverage_countermode.CounterMode {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._hdr.cMode;
    }
    @:keep
    @:tdfield
    static public function numPackages( _r:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader>):stdgo.GoUInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._hdr.entries;
    }
    @:keep
    @:tdfield
    static public function _rdUint64( _r:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader>):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._tmp = ((@:checkr _r ?? throw "null pointer dereference")._tmp.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _r ?? throw "null pointer dereference")._tmp = ((@:checkr _r ?? throw "null pointer dereference")._tmp.__append__(...((new stdgo.Slice<stdgo.GoUInt8>((8 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        var __tmp__ = @:check2r (@:checkr _r ?? throw "null pointer dereference")._fileRdr.read((@:checkr _r ?? throw "null pointer dereference")._tmp), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : _err };
        };
        if (_n != ((8 : stdgo.GoInt))) {
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("premature end of file on read" : stdgo.GoString)) };
        };
        var _v = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64((@:checkr _r ?? throw "null pointer dereference")._tmp) : stdgo.GoUInt64);
        return { _0 : _v, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _readFileHeader( _r:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader> = _r;
        var _err:stdgo.Error = (null : stdgo.Error);
        (@:checkr _r ?? throw "null pointer dereference")._fileRdr = stdgo._internal.bufio.Bufio_newreader.newReader(stdgo.Go.asInterface((@:checkr _r ?? throw "null pointer dereference")._f));
        {
            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface((@:checkr _r ?? throw "null pointer dereference")._fileRdr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _r ?? throw "null pointer dereference")._hdr) : stdgo.Ref<stdgo._internal.internal.coverage.Coverage_metafileheader.MetaFileHeader>)))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _m = (@:checkr _r ?? throw "null pointer dereference")._hdr.magic?.__copy__();
        var _g = stdgo._internal.internal.coverage.Coverage_covmetamagic.covMetaMagic?.__copy__();
        if ((((_m[(0 : stdgo.GoInt)] != (_g[((0 : stdgo.GoInt) : stdgo.GoInt)]) || _m[(1 : stdgo.GoInt)] != (_g[((1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) || _m[(2 : stdgo.GoInt)] != (_g[((2 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) || (_m[(3 : stdgo.GoInt)] != _g[(3 : stdgo.GoInt)]) : Bool)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("invalid meta-data file magic string" : stdgo.GoString));
        };
        if (((@:checkr _r ?? throw "null pointer dereference")._hdr.version > (1u32 : stdgo.GoUInt32) : Bool)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("meta-data file withn unknown version %d (expected %d)" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._hdr.version), stdgo.Go.toInterface((1 : stdgo.GoInt)));
        };
        (@:checkr _r ?? throw "null pointer dereference")._pkgOffsets = (new stdgo.Slice<stdgo.GoUInt64>(((@:checkr _r ?? throw "null pointer dereference")._hdr.entries : stdgo.GoInt).toBasic(), 0).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        {
            var _i = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            while ((_i < (@:checkr _r ?? throw "null pointer dereference")._hdr.entries : Bool)) {
                {
                    {
                        var __tmp__ = @:check2r _r._rdUint64();
                        (@:checkr _r ?? throw "null pointer dereference")._pkgOffsets[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        return _err;
                    };
                };
if (((@:checkr _r ?? throw "null pointer dereference")._pkgOffsets[(_i : stdgo.GoInt)] > (@:checkr _r ?? throw "null pointer dereference")._hdr.totalLength : Bool)) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("insane pkg offset %d: %d > totlen %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._pkgOffsets[(_i : stdgo.GoInt)]), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._hdr.totalLength));
                };
                _i++;
            };
        };
        (@:checkr _r ?? throw "null pointer dereference")._pkgLengths = (new stdgo.Slice<stdgo.GoUInt64>(((@:checkr _r ?? throw "null pointer dereference")._hdr.entries : stdgo.GoInt).toBasic(), 0).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        {
            var _i = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            while ((_i < (@:checkr _r ?? throw "null pointer dereference")._hdr.entries : Bool)) {
                {
                    {
                        var __tmp__ = @:check2r _r._rdUint64();
                        (@:checkr _r ?? throw "null pointer dereference")._pkgLengths[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        return _err;
                    };
                };
if (((@:checkr _r ?? throw "null pointer dereference")._pkgLengths[(_i : stdgo.GoInt)] > (@:checkr _r ?? throw "null pointer dereference")._hdr.totalLength : Bool)) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("insane pkg length %d: %d > totlen %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._pkgLengths[(_i : stdgo.GoInt)]), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._hdr.totalLength));
                };
                _i++;
            };
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>(((@:checkr _r ?? throw "null pointer dereference")._hdr.strTabLength : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = @:check2r (@:checkr _r ?? throw "null pointer dereference")._fileRdr.read(_b), _nr:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        if (_nr != (((@:checkr _r ?? throw "null pointer dereference")._hdr.strTabLength : stdgo.GoInt))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("error: short read on string table" : stdgo.GoString));
        };
        var _slr = stdgo._internal.internal.coverage.slicereader.Slicereader_newreader.newReader(_b, false);
        (@:checkr _r ?? throw "null pointer dereference")._strtab = stdgo._internal.internal.coverage.stringtab.Stringtab_newreader.newReader(_slr);
        @:check2r (@:checkr _r ?? throw "null pointer dereference")._strtab.read();
        if ((@:checkr _r ?? throw "null pointer dereference")._debug) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=-= read-in header is: %+v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((_r : stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader))));
        };
        return (null : stdgo.Error);
    }
}
