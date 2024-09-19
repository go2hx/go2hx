package stdgo._internal.net.http;
function _relevantCaller():stdgo._internal.runtime.Runtime_Frame.Frame {
        var _pc = (new stdgo.Slice<stdgo.GoUIntptr>((16 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
        var _n = (stdgo._internal.runtime.Runtime_callers.callers((1 : stdgo.GoInt), _pc) : stdgo.GoInt);
        var _frames = stdgo._internal.runtime.Runtime_callersFrames.callersFrames((_pc.__slice__(0, _n) : stdgo.Slice<stdgo.GoUIntptr>));
        var _frame:stdgo._internal.runtime.Runtime_Frame.Frame = ({} : stdgo._internal.runtime.Runtime_Frame.Frame);
        while (true) {
            var __tmp__ = _frames.next(), _frame:stdgo._internal.runtime.Runtime_Frame.Frame = __tmp__._0, _more:Bool = __tmp__._1;
            if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_frame.function_?.__copy__(), ("net/http." : stdgo.GoString))) {
                return _frame?.__copy__();
            };
            if (!_more) {
                break;
            };
        };
        return _frame?.__copy__();
    }
