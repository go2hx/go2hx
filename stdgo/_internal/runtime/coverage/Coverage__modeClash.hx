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
function _modeClash(_m:stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode):Bool {
        if (((_m == (4 : stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode)) || (_m == (5 : stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode)) : Bool)) {
            return false;
        };
        if (stdgo._internal.runtime.coverage.Coverage__cmode._cmode == ((0 : stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode))) {
            stdgo._internal.runtime.coverage.Coverage__cmode._cmode = _m;
            return false;
        };
        return stdgo._internal.runtime.coverage.Coverage__cmode._cmode != (_m);
    }
