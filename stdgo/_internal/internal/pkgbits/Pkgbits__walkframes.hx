package stdgo._internal.internal.pkgbits;
function _walkFrames(_pcs:stdgo.Slice<stdgo.GoUIntptr>, _visit:stdgo._internal.internal.pkgbits.Pkgbits_t_framevisitor.T_frameVisitor):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/sync.go#L31"
        if ((_pcs.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/sync.go#L32"
            return;
        };
        var _frames = stdgo._internal.runtime.Runtime_callersframes.callersFrames(_pcs);
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/sync.go#L36"
        while (true) {
            var __tmp__ = _frames.next(), _frame:stdgo._internal.runtime.Runtime_frame.Frame = __tmp__._0, _more:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/sync.go#L38"
            _visit(_frame.file?.__copy__(), _frame.line, _frame.function_?.__copy__(), (_frame.pC - _frame.entry : stdgo.GoUIntptr));
            //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/sync.go#L39"
            if (!_more) {
                //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/sync.go#L40"
                return;
            };
        };
    }
