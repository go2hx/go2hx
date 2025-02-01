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
function _emitMetaDataToDirectory(_outdir:stdgo.GoString, _ml:stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_CovMetaBlob.CovMetaBlob>):stdgo.Error {
        var __tmp__ = stdgo._internal.runtime.coverage.Coverage__prepareForMetaEmit._prepareForMetaEmit(), _ml:stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_CovMetaBlob.CovMetaBlob> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        if ((_ml.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        stdgo._internal.runtime.coverage.Coverage__metaDataEmitAttempted._metaDataEmitAttempted = true;
        var _s = (stdgo.Go.setRef(({ _metalist : _ml, _debug : stdgo._internal.os.Os_getenv.getenv(("GOCOVERDEBUG" : stdgo.GoString)) != (stdgo.Go.str()), _outdir : _outdir?.__copy__() } : stdgo._internal.runtime.coverage.Coverage_T_emitState.T_emitState)) : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_T_emitState.T_emitState>);
        {
            var _err = (@:check2r _s._openOutputFiles(stdgo._internal.runtime.coverage.Coverage__finalHash._finalHash?.__copy__(), stdgo._internal.runtime.coverage.Coverage__finalMetaLen._finalMetaLen, (2 : stdgo._internal.runtime.coverage.Coverage_T_fileType.T_fileType)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if (@:check2r _s._needMetaDataFile()) {
            {
                var _err = (@:check2r _s._emitMetaDataFile(stdgo._internal.runtime.coverage.Coverage__finalHash._finalHash?.__copy__(), stdgo._internal.runtime.coverage.Coverage__finalMetaLen._finalMetaLen) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
