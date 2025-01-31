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
function _allFrames(_addr:stdgo.GoUIntptr):{ var _0 : stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame>; var _1 : stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag; } {
        var _frames = stdgo._internal.runtime.Runtime_callersFrames.callersFrames((new stdgo.Slice<stdgo.GoUIntptr>(1, 1, ...[_addr]) : stdgo.Slice<stdgo.GoUIntptr>));
        var __tmp__ = @:check2r _frames.next(), _frame:stdgo._internal.runtime.Runtime_Frame.Frame = __tmp__._0, _more:Bool = __tmp__._1;
        if (_frame.function_ == (("runtime.goexit" : stdgo.GoString))) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame>), _1 : (0 : stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag) };
        };
        var _symbolizeResult = (1 : stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag);
        if ((((_frame.pC == ((0 : stdgo.GoUIntptr)) || _frame.function_ == (stdgo.Go.str()) : Bool) || _frame.file == (stdgo.Go.str()) : Bool) || (_frame.line == (0 : stdgo.GoInt)) : Bool)) {
            _symbolizeResult = (_symbolizeResult | ((2 : stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag)) : stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag);
        };
        if (_frame.pC == ((0 : stdgo.GoUIntptr))) {
            _frame.pC = (_addr - (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
        };
        var _ret = (new stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame>(1, 1, ...[_frame?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_Frame.Frame)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame>);
        while (((_frame.function_ != ("runtime.goexit" : stdgo.GoString)) && _more : Bool)) {
            {
                var __tmp__ = @:check2r _frames.next();
                _frame = @:tmpset0 __tmp__._0?.__copy__();
                _more = @:tmpset0 __tmp__._1;
            };
            _ret = (_ret.__append__(_frame?.__copy__()));
        };
        return { _0 : _ret, _1 : _symbolizeResult };
    }
