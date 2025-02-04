package stdgo._internal.runtime.coverage;
function _emitCounterDataToDirectory(_outdir:stdgo.GoString):stdgo.Error {
        var _cl = stdgo._internal.runtime.coverage.Coverage__getcovcounterlist._getCovCounterList();
        if ((_cl.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        if (!stdgo._internal.runtime.coverage.Coverage__finalhashcomputed._finalHashComputed) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("error: meta-data not available (binary not built with -cover?)" : stdgo.GoString));
        };
        var _pm = stdgo._internal.runtime.coverage.Coverage__getcovpkgmap._getCovPkgMap();
        var _s = (stdgo.Go.setRef(({ _counterlist : _cl, _pkgmap : _pm, _outdir : _outdir?.__copy__(), _debug : stdgo._internal.os.Os_getenv.getenv(("GOCOVERDEBUG" : stdgo.GoString)) != ((stdgo.Go.str() : stdgo.GoString)) } : stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState)) : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState>);
        {
            var _err = (@:check2r _s._openOutputFiles(stdgo._internal.runtime.coverage.Coverage__finalhash._finalHash?.__copy__(), stdgo._internal.runtime.coverage.Coverage__finalmetalen._finalMetaLen, (4 : stdgo._internal.runtime.coverage.Coverage_t_filetype.T_fileType)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if (((@:checkr _s ?? throw "null pointer dereference")._cf == null || ((@:checkr _s ?? throw "null pointer dereference")._cf : Dynamic).__nil__)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("counter data output file open failed (no additional info" : stdgo.GoString));
        };
        {
            var _err = (@:check2r _s._emitCounterDataFile(stdgo._internal.runtime.coverage.Coverage__finalhash._finalHash?.__copy__(), stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference")._cf)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (@:check2r (@:checkr _s ?? throw "null pointer dereference")._cf.close() : stdgo.Error);
            if (_err != null) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("closing counter data file: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (stdgo._internal.os.Os_rename.rename((@:checkr _s ?? throw "null pointer dereference")._cftmp?.__copy__(), (@:checkr _s ?? throw "null pointer dereference")._cfname?.__copy__()) : stdgo.Error);
            if (_err != null) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("writing %s: rename from %s failed: %v\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._cfname), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._cftmp), stdgo.Go.toInterface(_err));
            };
        };
        return (null : stdgo.Error);
    }
