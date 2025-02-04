package stdgo._internal.runtime.pprof;
function _allFrames(_addr:stdgo.GoUIntptr):{ var _0 : stdgo.Slice<stdgo._internal.runtime.Runtime_frame.Frame>; var _1 : stdgo._internal.runtime.pprof.Pprof_t_symbolizeflag.T_symbolizeFlag; } {
        var _frames = stdgo._internal.runtime.Runtime_callersframes.callersFrames((new stdgo.Slice<stdgo.GoUIntptr>(1, 1, ...[_addr]) : stdgo.Slice<stdgo.GoUIntptr>));
        var __tmp__ = @:check2r _frames.next(), _frame:stdgo._internal.runtime.Runtime_frame.Frame = __tmp__._0, _more:Bool = __tmp__._1;
        if (_frame.function_ == (("runtime.goexit" : stdgo.GoString))) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.runtime.Runtime_frame.Frame>), _1 : (0 : stdgo._internal.runtime.pprof.Pprof_t_symbolizeflag.T_symbolizeFlag) };
        };
        var _symbolizeResult = (1 : stdgo._internal.runtime.pprof.Pprof_t_symbolizeflag.T_symbolizeFlag);
        if ((((_frame.pC == ((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) || _frame.function_ == ((stdgo.Go.str() : stdgo.GoString)) : Bool) || _frame.file == ((stdgo.Go.str() : stdgo.GoString)) : Bool) || (_frame.line == (0 : stdgo.GoInt)) : Bool)) {
            _symbolizeResult = (_symbolizeResult | ((2 : stdgo._internal.runtime.pprof.Pprof_t_symbolizeflag.T_symbolizeFlag)) : stdgo._internal.runtime.pprof.Pprof_t_symbolizeflag.T_symbolizeFlag);
        };
        if (_frame.pC == ((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr))) {
            _frame.pC = (_addr - (new stdgo.GoUIntptr(1) : stdgo.GoUIntptr) : stdgo.GoUIntptr);
        };
        var _ret = (new stdgo.Slice<stdgo._internal.runtime.Runtime_frame.Frame>(1, 1, ...[_frame?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_frame.Frame)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_frame.Frame>);
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
