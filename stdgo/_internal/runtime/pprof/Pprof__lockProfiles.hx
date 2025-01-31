package stdgo._internal.runtime.pprof;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.context.Context;
import stdgo._internal.sort.Sort;
import stdgo._internal.text.tabwriter.Tabwriter;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.strings.Strings;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.internal.abi.Abi;
function _lockProfiles():Void {
        @:check2 stdgo._internal.runtime.pprof.Pprof__profiles._profiles._mu.lock();
        if (stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m == null) {
            stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>);
                x.set(("goroutine" : stdgo.GoString), stdgo._internal.runtime.pprof.Pprof__goroutineProfile._goroutineProfile);
x.set(("threadcreate" : stdgo.GoString), stdgo._internal.runtime.pprof.Pprof__threadcreateProfile._threadcreateProfile);
x.set(("heap" : stdgo.GoString), stdgo._internal.runtime.pprof.Pprof__heapProfile._heapProfile);
x.set(("allocs" : stdgo.GoString), stdgo._internal.runtime.pprof.Pprof__allocsProfile._allocsProfile);
x.set(("block" : stdgo.GoString), stdgo._internal.runtime.pprof.Pprof__blockProfile._blockProfile);
x.set(("mutex" : stdgo.GoString), stdgo._internal.runtime.pprof.Pprof__mutexProfile._mutexProfile);
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>>);
        };
    }
