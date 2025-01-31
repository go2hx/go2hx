package stdgo._internal.internal.pkgbits;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.go.constant.Constant;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.strconv.Strconv;
function _walkFrames(_pcs:stdgo.Slice<stdgo.GoUIntptr>, _visit:stdgo._internal.internal.pkgbits.Pkgbits_T_frameVisitor.T_frameVisitor):Void {
        if ((_pcs.length) == ((0 : stdgo.GoInt))) {
            return;
        };
        var _frames = stdgo._internal.runtime.Runtime_callersFrames.callersFrames(_pcs);
        while (true) {
            var __tmp__ = @:check2r _frames.next(), _frame:stdgo._internal.runtime.Runtime_Frame.Frame = __tmp__._0, _more:Bool = __tmp__._1;
            _visit(_frame.file?.__copy__(), _frame.line, _frame.function_?.__copy__(), (_frame.pC - _frame.entry : stdgo.GoUIntptr));
            if (!_more) {
                return;
            };
        };
    }
