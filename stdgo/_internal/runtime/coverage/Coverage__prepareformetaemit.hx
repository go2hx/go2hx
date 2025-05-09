package stdgo._internal.runtime.coverage;
function _prepareForMetaEmit():{ var _0 : stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_covmetablob.CovMetaBlob>; var _1 : stdgo.Error; } {
        var _ml = stdgo._internal.runtime.coverage.Coverage__getcovmetalist._getCovMetaList();
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L184"
        if ((_ml.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L185"
            return { _0 : (null : stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_covmetablob.CovMetaBlob>), _1 : (null : stdgo.Error) };
        };
        var _s = (stdgo.Go.setRef(({ _metalist : _ml, _debug : stdgo._internal.os.Os_getenv.getenv(("GOCOVERDEBUG" : stdgo.GoString)) != ((stdgo.Go.str() : stdgo.GoString)) } : stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState)) : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState>);
        stdgo._internal.runtime.coverage.Coverage__capturedosargs._capturedOsArgs = stdgo._internal.runtime.coverage.Coverage__captureosargs._captureOsArgs();
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L197"
        if ((@:checkr _s ?? throw "null pointer dereference")._debug) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L198"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=+= GOCOVERDIR is %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.os.Os_getenv.getenv(("GOCOVERDIR" : stdgo.GoString))));
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L199"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=+= contents of covmetalist:\n" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L200"
            for (_k => _b in _ml) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L201"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=+= slot: %d path: %s " : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_b.pkgPath));
                //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L202"
                if (_b.pkgID != ((-1 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L203"
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), (" hcid: %d" : stdgo.GoString), stdgo.Go.toInterface(_b.pkgID));
                };
                //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L205"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("\n" : stdgo.GoString));
            };
            var _pm = stdgo._internal.runtime.coverage.Coverage__getcovpkgmap._getCovPkgMap();
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L208"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=+= remap table:\n" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L209"
            for (_from => _to in _pm) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L210"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=+= from %d to %d\n" : stdgo.GoString), stdgo.Go.toInterface((_from : stdgo.GoUInt32)), stdgo.Go.toInterface((_to : stdgo.GoUInt32)));
            };
        };
        var _h = (stdgo._internal.crypto.md5.Md5_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
        var _tlen = (stdgo._internal.unsafe.Unsafe_sizeof.sizeof(stdgo.Go.toInterface((new stdgo._internal.internal.coverage.Coverage_metafileheader.MetaFileHeader() : stdgo._internal.internal.coverage.Coverage_metafileheader.MetaFileHeader))) : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L217"
        for (__2 => _entry in _ml) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L218"
            {
                var __tmp__ = _h.write((_entry.hash.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L219"
                    return { _0 : (null : stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_covmetablob.CovMetaBlob>), _1 : _err };
                };
            };
            _tlen = (_tlen + ((_entry.len : stdgo.GoUInt64)) : stdgo.GoUInt64);
            var _ecm = (_entry.counterMode : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode);
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L223"
            if (stdgo._internal.runtime.coverage.Coverage__modeclash._modeClash(_ecm)) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L224"
                return { _0 : (null : stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_covmetablob.CovMetaBlob>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("coverage counter mode clash: package %s uses mode=%d, but package %s uses mode=%s\n" : stdgo.GoString), stdgo.Go.toInterface(_ml[(0 : stdgo.GoInt)].pkgPath), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.runtime.coverage.Coverage__cmode._cmode)), stdgo.Go.toInterface(_entry.pkgPath), stdgo.Go.toInterface(stdgo.Go.asInterface(_ecm))) };
            };
            var _ecg = (_entry.counterGranularity : stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity);
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L227"
            if (stdgo._internal.runtime.coverage.Coverage__granclash._granClash(_ecg)) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L228"
                return { _0 : (null : stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_covmetablob.CovMetaBlob>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("coverage counter granularity clash: package %s uses gran=%d, but package %s uses gran=%s\n" : stdgo.GoString), stdgo.Go.toInterface(_ml[(0 : stdgo.GoInt)].pkgPath), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.runtime.coverage.Coverage__cgran._cgran)), stdgo.Go.toInterface(_entry.pkgPath), stdgo.Go.toInterface(stdgo.Go.asInterface(_ecg))) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L233"
        _h.write(((stdgo._internal.runtime.coverage.Coverage__cmode._cmode.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L234"
        _h.write(((stdgo._internal.runtime.coverage.Coverage__cgran._cgran.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        var _fh = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L238"
        (stdgo._internal.runtime.coverage.Coverage__finalhash._finalHash.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_fh);
        stdgo._internal.runtime.coverage.Coverage__finalhashcomputed._finalHashComputed = true;
        stdgo._internal.runtime.coverage.Coverage__finalmetalen._finalMetaLen = _tlen;
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L242"
        return { _0 : _ml, _1 : (null : stdgo.Error) };
    }
