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
function _profileWriter(_w:stdgo._internal.io.Io_Writer.Writer):Void {
        var _b = stdgo._internal.runtime.pprof.Pprof__newProfileBuilder._newProfileBuilder(_w);
        var _err:stdgo.Error = (null : stdgo.Error);
        while (true) {
            stdgo._internal.time.Time_sleep.sleep((100000000i64 : stdgo._internal.time.Time_Duration.Duration));
            var __tmp__ = stdgo._internal.runtime.pprof.Pprof__readProfile._readProfile(), _data:stdgo.Slice<stdgo.GoUInt64> = __tmp__._0, _tags:stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer> = __tmp__._1, _eof:Bool = __tmp__._2;
            {
                var _e = (@:check2r _b._addCPUData(_data, _tags) : stdgo.Error);
                if (((_e != null) && (_err == null) : Bool)) {
                    _err = _e;
                };
            };
            if (_eof) {
                break;
            };
        };
        if (_err != null) {
            throw stdgo.Go.toInterface((("runtime/pprof: converting profile: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString));
        };
        @:check2r _b._build();
        stdgo._internal.runtime.pprof.Pprof__cpu._cpu._done.__send__(true);
    }
