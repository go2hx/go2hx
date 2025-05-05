package stdgo._internal.internal.coverage.encodemeta;
@:keep @:allow(stdgo._internal.internal.coverage.encodemeta.Encodemeta.CoverageMetaFileWriter_asInterface) class CoverageMetaFileWriter_static_extension {
    @:keep
    @:tdfield
    static public function write( _m:stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetafilewriter.CoverageMetaFileWriter>, _finalHash:stdgo.GoArray<stdgo.GoUInt8>, _blobs:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, _mode:stdgo._internal.internal.coverage.Coverage_countermode.CounterMode, _granularity:stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity):stdgo.Error {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetafilewriter.CoverageMetaFileWriter> = _m;
        var _mhsz = (stdgo._internal.unsafe.Unsafe_sizeof.sizeof(stdgo.Go.toInterface((new stdgo._internal.internal.coverage.Coverage_metafileheader.MetaFileHeader() : stdgo._internal.internal.coverage.Coverage_metafileheader.MetaFileHeader))) : stdgo.GoUInt64);
        var _stSize = ((@:checkr _m ?? throw "null pointer dereference")._stab.size() : stdgo.GoUInt32);
        var _stOffset = (_mhsz + (((16 : stdgo.GoInt) * (_blobs.length) : stdgo.GoInt) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _preambleLength = (_stOffset + (_stSize : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L48"
        if ((@:checkr _m ?? throw "null pointer dereference")._debug) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L49"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=+= sizeof(MetaFileHeader)=%d\n" : stdgo.GoString), stdgo.Go.toInterface(_mhsz));
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L50"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=+= preambleLength=%d stSize=%d\n" : stdgo.GoString), stdgo.Go.toInterface(_preambleLength), stdgo.Go.toInterface(_stSize));
        };
        var _tlen = (_preambleLength : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L55"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_blobs.length) : Bool)) {
                _tlen = (_tlen + ((_blobs[(_i : stdgo.GoInt)].length : stdgo.GoUInt64)) : stdgo.GoUInt64);
                _i++;
            };
        };
        var _mh = ({ magic : stdgo._internal.internal.coverage.Coverage_covmetamagic.covMetaMagic?.__copy__(), version : (1u32 : stdgo.GoUInt32), totalLength : _tlen, entries : (_blobs.length : stdgo.GoUInt64), metaFileHash : _finalHash?.__copy__(), strTabOffset : (_stOffset : stdgo.GoUInt32), strTabLength : _stSize, cMode : _mode, cGranularity : _granularity } : stdgo._internal.internal.coverage.Coverage_metafileheader.MetaFileHeader);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L72"
        {
            _err = stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface((@:checkr _m ?? throw "null pointer dereference")._w), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_mh)));
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L73"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("error writing %s: %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference")._mfname), stdgo.Go.toInterface(_err));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L76"
        if ((@:checkr _m ?? throw "null pointer dereference")._debug) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L77"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=+= len(blobs) is %d\n" : stdgo.GoString), stdgo.Go.toInterface(_mh.entries));
        };
        var _off = (_preambleLength : stdgo.GoUInt64);
        var _off2 = (_mhsz : stdgo.GoUInt64);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((8 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L84"
        for (__6 => _blob in _blobs) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L85"
            stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.putUint64(_buf, _off);
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L86"
            {
                {
                    var __tmp__ = (@:checkr _m ?? throw "null pointer dereference")._w.write(_buf);
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L87"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("error writing %s: %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference")._mfname), stdgo.Go.toInterface(_err));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L89"
            if ((@:checkr _m ?? throw "null pointer dereference")._debug) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L90"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=+= pkg offset %d 0x%x\n" : stdgo.GoString), stdgo.Go.toInterface(_off), stdgo.Go.toInterface(_off));
            };
            _off = (_off + ((_blob.length : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _off2 = (_off2 + ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L95"
        for (__7 => _blob in _blobs) {
            var _bl = (_blob.length : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L97"
            stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.putUint64(_buf, _bl);
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L98"
            {
                {
                    var __tmp__ = (@:checkr _m ?? throw "null pointer dereference")._w.write(_buf);
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L99"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("error writing %s: %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference")._mfname), stdgo.Go.toInterface(_err));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L101"
            if ((@:checkr _m ?? throw "null pointer dereference")._debug) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L102"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=+= pkg len %d 0x%x\n" : stdgo.GoString), stdgo.Go.toInterface(_bl), stdgo.Go.toInterface(_bl));
            };
            _off2 = (_off2 + ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L108"
        {
            _err = (@:checkr _m ?? throw "null pointer dereference")._stab.write(stdgo.Go.asInterface((@:checkr _m ?? throw "null pointer dereference")._w));
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L109"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L113"
        for (_k => _blob in _blobs) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L114"
            if ((@:checkr _m ?? throw "null pointer dereference")._debug) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L115"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=+= writing blob %d len %d at off=%d hash %s\n" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface((_blob.length)), stdgo.Go.toInterface(_off2), stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.crypto.md5.Md5_sum.sum(_blob)))));
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L117"
            {
                {
                    var __tmp__ = (@:checkr _m ?? throw "null pointer dereference")._w.write(_blob);
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L118"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("error writing %s: %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference")._mfname), stdgo.Go.toInterface(_err));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L120"
            if ((@:checkr _m ?? throw "null pointer dereference")._debug) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L121"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=+= wrote package payload of %d bytes\n" : stdgo.GoString), stdgo.Go.toInterface((_blob.length)));
            };
            _off2 = (_off2 + ((_blob.length : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L128"
        {
            _err = (@:checkr _m ?? throw "null pointer dereference")._w.flush();
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L129"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("error writing %s: %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference")._mfname), stdgo.Go.toInterface(_err));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encodefile.go#L131"
        return (null : stdgo.Error);
    }
}
