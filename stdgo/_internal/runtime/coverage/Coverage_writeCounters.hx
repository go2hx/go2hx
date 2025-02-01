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
function writeCounters(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        if (_w == null) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("error: nil writer in WriteCounters" : stdgo.GoString));
        };
        if (stdgo._internal.runtime.coverage.Coverage__cmode._cmode != ((3 : stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("WriteCounters invoked for program built with -covermode=%s (please use -covermode=atomic)" : stdgo.GoString), stdgo.Go.toInterface((stdgo._internal.runtime.coverage.Coverage__cmode._cmode.string() : stdgo.GoString)));
        };
        var _cl = stdgo._internal.runtime.coverage.Coverage__getCovCounterList._getCovCounterList();
        if ((_cl.length) == ((0 : stdgo.GoInt))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("program not built with -cover" : stdgo.GoString));
        };
        if (!stdgo._internal.runtime.coverage.Coverage__finalHashComputed._finalHashComputed) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("meta-data not written yet, unable to write counter data" : stdgo.GoString));
        };
        var _pm = stdgo._internal.runtime.coverage.Coverage__getCovPkgMap._getCovPkgMap();
        var _s = (stdgo.Go.setRef(({ _counterlist : _cl, _pkgmap : _pm } : stdgo._internal.runtime.coverage.Coverage_T_emitState.T_emitState)) : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_T_emitState.T_emitState>);
        return @:check2r _s._emitCounterDataToWriter(_w);
    }
