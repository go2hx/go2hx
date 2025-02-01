package stdgo._internal.runtime.coverage;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.internal.coverage.encodemeta.Encodemeta;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.coverage.Coverage;
import stdgo._internal.internal.coverage.pods.Pods;
import stdgo._internal.internal.coverage.cformat.Cformat;
import stdgo._internal.strings.Strings;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.time.Time;
import stdgo._internal.internal.coverage.encodecounter.Encodecounter;
import stdgo._internal.internal.coverage.decodemeta.Decodemeta;
import stdgo._internal.internal.coverage.decodecounter.Decodecounter;
import stdgo._internal.encoding.json.Json;
function _prepareForMetaEmit():{ var _0 : stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_CovMetaBlob.CovMetaBlob>; var _1 : stdgo.Error; } {
        var _ml = stdgo._internal.runtime.coverage.Coverage__getCovMetaList._getCovMetaList();
        if ((_ml.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_CovMetaBlob.CovMetaBlob>), _1 : (null : stdgo.Error) };
        };
        var _s = (stdgo.Go.setRef(({ _metalist : _ml, _debug : stdgo._internal.os.Os_getenv.getenv(("GOCOVERDEBUG" : stdgo.GoString)) != (stdgo.Go.str()) } : stdgo._internal.runtime.coverage.Coverage_T_emitState.T_emitState)) : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_T_emitState.T_emitState>);
        stdgo._internal.runtime.coverage.Coverage__capturedOsArgs._capturedOsArgs = stdgo._internal.runtime.coverage.Coverage__captureOsArgs._captureOsArgs();
        if ((@:checkr _s ?? throw "null pointer dereference")._debug) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=+= GOCOVERDIR is %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.os.Os_getenv.getenv(("GOCOVERDIR" : stdgo.GoString))));
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=+= contents of covmetalist:\n" : stdgo.GoString));
            for (_k => _b in _ml) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=+= slot: %d path: %s " : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_b.pkgPath));
                if (_b.pkgID != ((-1 : stdgo.GoInt))) {
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), (" hcid: %d" : stdgo.GoString), stdgo.Go.toInterface(_b.pkgID));
                };
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("\n" : stdgo.GoString));
            };
            var _pm = stdgo._internal.runtime.coverage.Coverage__getCovPkgMap._getCovPkgMap();
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=+= remap table:\n" : stdgo.GoString));
            for (_from => _to in _pm) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=+= from %d to %d\n" : stdgo.GoString), stdgo.Go.toInterface((_from : stdgo.GoUInt32)), stdgo.Go.toInterface((_to : stdgo.GoUInt32)));
            };
        };
        var _h = (stdgo._internal.crypto.md5.Md5_new_.new_() : stdgo._internal.hash.Hash_Hash.Hash);
        var _tlen = (stdgo._internal.unsafe.Unsafe_sizeof.sizeof(stdgo.Go.toInterface((new stdgo._internal.internal.coverage.Coverage_MetaFileHeader.MetaFileHeader() : stdgo._internal.internal.coverage.Coverage_MetaFileHeader.MetaFileHeader))) : stdgo.GoUInt64);
        for (__2 => _entry in _ml) {
            {
                var __tmp__ = _h.write((_entry.hash.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_CovMetaBlob.CovMetaBlob>), _1 : _err };
                };
            };
            _tlen = (_tlen + ((_entry.len : stdgo.GoUInt64)) : stdgo.GoUInt64);
            var _ecm = (_entry.counterMode : stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode);
            if (stdgo._internal.runtime.coverage.Coverage__modeClash._modeClash(_ecm)) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_CovMetaBlob.CovMetaBlob>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("coverage counter mode clash: package %s uses mode=%d, but package %s uses mode=%s\n" : stdgo.GoString), stdgo.Go.toInterface(_ml[(0 : stdgo.GoInt)].pkgPath), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.runtime.coverage.Coverage__cmode._cmode)), stdgo.Go.toInterface(_entry.pkgPath), stdgo.Go.toInterface(stdgo.Go.asInterface(_ecm))) };
            };
            var _ecg = (_entry.counterGranularity : stdgo._internal.internal.coverage.Coverage_CounterGranularity.CounterGranularity);
            if (stdgo._internal.runtime.coverage.Coverage__granClash._granClash(_ecg)) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_CovMetaBlob.CovMetaBlob>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("coverage counter granularity clash: package %s uses gran=%d, but package %s uses gran=%s\n" : stdgo.GoString), stdgo.Go.toInterface(_ml[(0 : stdgo.GoInt)].pkgPath), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.runtime.coverage.Coverage__cgran._cgran)), stdgo.Go.toInterface(_entry.pkgPath), stdgo.Go.toInterface(stdgo.Go.asInterface(_ecg))) };
            };
        };
        _h.write(((stdgo._internal.runtime.coverage.Coverage__cmode._cmode.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        _h.write(((stdgo._internal.runtime.coverage.Coverage__cgran._cgran.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        var _fh = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        (stdgo._internal.runtime.coverage.Coverage__finalHash._finalHash.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_fh);
        stdgo._internal.runtime.coverage.Coverage__finalHashComputed._finalHashComputed = true;
        stdgo._internal.runtime.coverage.Coverage__finalMetaLen._finalMetaLen = _tlen;
        return { _0 : _ml, _1 : (null : stdgo.Error) };
    }
