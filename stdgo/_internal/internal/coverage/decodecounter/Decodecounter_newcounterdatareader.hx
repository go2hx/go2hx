package stdgo._internal.internal.coverage.decodecounter;
function newCounterDataReader(_fn:stdgo.GoString, _rs:stdgo._internal.io.Io_readseeker.ReadSeeker):{ var _0 : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>; var _1 : stdgo.Error; } {
        var _cdr = (stdgo.Go.setRef(({ _mr : _rs, _u32b : (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _u8b : (new stdgo.Slice<stdgo.GoUInt8>((1 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader)) : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L46"
        {
            var _err = (stdgo._internal.encoding.binary.Binary_read.read(_rs, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _cdr ?? throw "null pointer dereference")._hdr) : stdgo.Ref<stdgo._internal.internal.coverage.Coverage_counterfileheader.CounterFileHeader>)))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L47"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L49"
        if ((@:checkr _cdr ?? throw "null pointer dereference")._debug) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L50"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=-= counter file header: %+v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _cdr ?? throw "null pointer dereference")._hdr)));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L52"
        if (!stdgo._internal.internal.coverage.decodecounter.Decodecounter__checkmagic._checkMagic((@:checkr _cdr ?? throw "null pointer dereference")._hdr.magic?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L53"
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid magic string: not a counter data file" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L55"
        if (((@:checkr _cdr ?? throw "null pointer dereference")._hdr.version > (1u32 : stdgo.GoUInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L56"
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("version data incompatibility: reader is %d data is %d" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((@:checkr _cdr ?? throw "null pointer dereference")._hdr.version)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L60"
        {
            var _err = (_cdr._readFooter() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L61"
                return { _0 : null, _1 : _err };
            };
        };
        var _hsz = (stdgo._internal.unsafe.Unsafe_sizeof.sizeof(stdgo.Go.toInterface((@:checkr _cdr ?? throw "null pointer dereference")._hdr)) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L65"
        {
            var __tmp__ = (@:checkr _cdr ?? throw "null pointer dereference")._mr.seek(_hsz, (0 : stdgo.GoInt)), __54:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L66"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L69"
        {
            var _err = (_cdr._readSegmentPreamble() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L70"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodecounter/decodecounterfile.go#L72"
        return { _0 : _cdr, _1 : (null : stdgo.Error) };
    }
