package stdgo._internal.runtime.coverage;
function _emitMetaDataToDirectory(_outdir:stdgo.GoString, _ml:stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_covmetablob.CovMetaBlob>):stdgo.Error {
        var __tmp__ = stdgo._internal.runtime.coverage.Coverage__prepareformetaemit._prepareForMetaEmit(), _ml:stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_covmetablob.CovMetaBlob> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        if ((_ml.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        stdgo._internal.runtime.coverage.Coverage__metadataemitattempted._metaDataEmitAttempted = true;
        var _s = (stdgo.Go.setRef(({ _metalist : _ml, _debug : stdgo._internal.os.Os_getenv.getenv(("GOCOVERDEBUG" : stdgo.GoString)) != ((stdgo.Go.str() : stdgo.GoString)), _outdir : _outdir?.__copy__() } : stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState)) : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState>);
        {
            var _err = (@:check2r _s._openOutputFiles(stdgo._internal.runtime.coverage.Coverage__finalhash._finalHash?.__copy__(), stdgo._internal.runtime.coverage.Coverage__finalmetalen._finalMetaLen, (2 : stdgo._internal.runtime.coverage.Coverage_t_filetype.T_fileType)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if (@:check2r _s._needMetaDataFile()) {
            {
                var _err = (@:check2r _s._emitMetaDataFile(stdgo._internal.runtime.coverage.Coverage__finalhash._finalHash?.__copy__(), stdgo._internal.runtime.coverage.Coverage__finalmetalen._finalMetaLen) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
