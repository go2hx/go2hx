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
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.runtime.pprof.Pprof__errBadELF._errBadELF, __tmp__1 = stdgo._internal.runtime.pprof.Pprof__errNoBuildID._errNoBuildID, __tmp__2 = stdgo._internal.runtime.pprof.Pprof__space._space, __tmp__3 = stdgo._internal.runtime.pprof.Pprof__newline._newline, __tmp__4 = stdgo._internal.runtime.pprof.Pprof__goroutineProfile._goroutineProfile, __tmp__5 = stdgo._internal.runtime.pprof.Pprof__threadcreateProfile._threadcreateProfile, __tmp__6 = stdgo._internal.runtime.pprof.Pprof__heapProfile._heapProfile, __tmp__7 = stdgo._internal.runtime.pprof.Pprof__allocsProfile._allocsProfile, __tmp__8 = stdgo._internal.runtime.pprof.Pprof__blockProfile._blockProfile, __tmp__9 = stdgo._internal.runtime.pprof.Pprof__mutexProfile._mutexProfile;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
