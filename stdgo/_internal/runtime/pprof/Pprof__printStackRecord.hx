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
function _printStackRecord(_w:stdgo._internal.io.Io_Writer.Writer, _stk:stdgo.Slice<stdgo.GoUIntptr>, _allFrames:Bool):Void {
        var _show = (_allFrames : Bool);
        var _frames = stdgo._internal.runtime.Runtime_callersFrames.callersFrames(_stk);
        while (true) {
            var __tmp__ = @:check2r _frames.next(), _frame:stdgo._internal.runtime.Runtime_Frame.Frame = __tmp__._0, _more:Bool = __tmp__._1;
            var _name = (_frame.function_?.__copy__() : stdgo.GoString);
            if (_name == (stdgo.Go.str())) {
                _show = true;
                stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("#\t%#x\n" : stdgo.GoString), stdgo.Go.toInterface(_frame.pC));
            } else if (((_name != ("runtime.goexit" : stdgo.GoString)) && ((_show || !stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_name?.__copy__(), ("runtime." : stdgo.GoString)) : Bool)) : Bool)) {
                _show = true;
                stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("#\t%#x\t%s+%#x\t%s:%d\n" : stdgo.GoString), stdgo.Go.toInterface(_frame.pC), stdgo.Go.toInterface(_name), stdgo.Go.toInterface((_frame.pC - _frame.entry : stdgo.GoUIntptr)), stdgo.Go.toInterface(_frame.file), stdgo.Go.toInterface(_frame.line));
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
