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
function _writeMutex(_w:stdgo._internal.io.Io_Writer.Writer, _debug:stdgo.GoInt):stdgo.Error {
        return stdgo._internal.runtime.pprof.Pprof__writeProfileInternal._writeProfileInternal(_w, _debug, ("mutex" : stdgo.GoString), stdgo._internal.runtime.Runtime_mutexProfile.mutexProfile);
    }
