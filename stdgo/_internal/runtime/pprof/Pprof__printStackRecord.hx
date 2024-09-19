package stdgo._internal.runtime.pprof;
function _printStackRecord(_w:stdgo._internal.io.Io_Writer.Writer, _stk:stdgo.Slice<stdgo.GoUIntptr>, _allFrames:Bool):Void {
        var _show = (_allFrames : Bool);
        var _frames = stdgo._internal.runtime.Runtime_callersFrames.callersFrames(_stk);
        while (true) {
            var __tmp__ = _frames.next(), _frame:stdgo._internal.runtime.Runtime_Frame.Frame = __tmp__._0, _more:Bool = __tmp__._1;
            var _name = (_frame.function_?.__copy__() : stdgo.GoString);
            if (_name == (stdgo.Go.str())) {
                _show = true;
                stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("#\t%#x\n" : stdgo.GoString), stdgo.Go.toInterface(_frame.pc));
            } else if (((_name != ("runtime.goexit" : stdgo.GoString)) && ((_show || !stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_name?.__copy__(), ("runtime." : stdgo.GoString)) : Bool)) : Bool)) {
                _show = true;
                stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("#\t%#x\t%s+%#x\t%s:%d\n" : stdgo.GoString), stdgo.Go.toInterface(_frame.pc), stdgo.Go.toInterface(_name), stdgo.Go.toInterface((_frame.pc - _frame.entry : stdgo.GoUIntptr)), stdgo.Go.toInterface(_frame.file), stdgo.Go.toInterface(_frame.line));
            };
            if (!_more) {
                break;
            };
        };
        if (!_show) {
            stdgo._internal.runtime.pprof.Pprof__printStackRecord._printStackRecord(_w, _stk, true);
            return;
        };
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("\n" : stdgo.GoString));
    }