package stdgo._internal.runtime.coverage;
function writeCounters(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        if (_w == null) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("error: nil writer in WriteCounters" : stdgo.GoString));
        };
        if (stdgo._internal.runtime.coverage.Coverage__cmode._cmode != ((3 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("WriteCounters invoked for program built with -covermode=%s (please use -covermode=atomic)" : stdgo.GoString), stdgo.Go.toInterface((stdgo._internal.runtime.coverage.Coverage__cmode._cmode.string() : stdgo.GoString)));
        };
        var _cl = stdgo._internal.runtime.coverage.Coverage__getcovcounterlist._getCovCounterList();
        if ((_cl.length) == ((0 : stdgo.GoInt))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("program not built with -cover" : stdgo.GoString));
        };
        if (!stdgo._internal.runtime.coverage.Coverage__finalhashcomputed._finalHashComputed) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("meta-data not written yet, unable to write counter data" : stdgo.GoString));
        };
        var _pm = stdgo._internal.runtime.coverage.Coverage__getcovpkgmap._getCovPkgMap();
        var _s = (stdgo.Go.setRef(({ _counterlist : _cl, _pkgmap : _pm } : stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState)) : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState>);
        return @:check2r _s._emitCounterDataToWriter(_w);
    }
