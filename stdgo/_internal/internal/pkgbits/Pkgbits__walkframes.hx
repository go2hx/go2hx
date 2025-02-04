package stdgo._internal.internal.pkgbits;
function _walkFrames(_pcs:stdgo.Slice<stdgo.GoUIntptr>, _visit:stdgo._internal.internal.pkgbits.Pkgbits_t_framevisitor.T_frameVisitor):Void {
        if ((_pcs.length) == ((0 : stdgo.GoInt))) {
            return;
        };
        var _frames = stdgo._internal.runtime.Runtime_callersframes.callersFrames(_pcs);
        while (true) {
            var __tmp__ = @:check2r _frames.next(), _frame:stdgo._internal.runtime.Runtime_frame.Frame = __tmp__._0, _more:Bool = __tmp__._1;
            _visit(_frame.file?.__copy__(), _frame.line, _frame.function_?.__copy__(), (_frame.pC - _frame.entry : stdgo.GoUIntptr));
            if (!_more) {
                return;
            };
        };
    }
