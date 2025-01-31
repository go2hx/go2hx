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
function _readMainModuleMapping():{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; var _2 : stdgo.Error; } {
        var _start = (0 : stdgo.GoUInt64), _end = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        return {
            final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; var _2 : stdgo.Error; } = { _0 : (0i64 : stdgo.GoUInt64), _1 : (0i64 : stdgo.GoUInt64), _2 : stdgo._internal.errors.Errors_new_.new_(("not implemented" : stdgo.GoString)) };
            _start = __tmp__._0;
            _end = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
