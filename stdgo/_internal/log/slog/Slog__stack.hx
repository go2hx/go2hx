package stdgo._internal.log.slog;
function _stack(_skip:stdgo.GoInt, _nFrames:stdgo.GoInt):stdgo.GoString {
        var _pcs = (new stdgo.Slice<stdgo.GoUIntptr>((_nFrames + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
        var _n = (stdgo._internal.runtime.Runtime_callers.callers((_skip + (1 : stdgo.GoInt) : stdgo.GoInt), _pcs) : stdgo.GoInt);
        if (_n == ((0 : stdgo.GoInt))) {
            return ("(no stack)" : stdgo.GoString);
        };
        var _frames = stdgo._internal.runtime.Runtime_callersframes.callersFrames((_pcs.__slice__(0, _n) : stdgo.Slice<stdgo.GoUIntptr>));
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        var _i = (0 : stdgo.GoInt);
        while (true) {
            var __tmp__ = @:check2r _frames.next(), _frame:stdgo._internal.runtime.Runtime_frame.Frame = __tmp__._0, _more:Bool = __tmp__._1;
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), ("called from %s (%s:%d)\n" : stdgo.GoString), stdgo.Go.toInterface(_frame.function_), stdgo.Go.toInterface(_frame.file), stdgo.Go.toInterface(_frame.line));
            if (!_more) {
                break;
            };
            _i++;
            if ((_i >= _nFrames : Bool)) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), ("(rest of stack elided)\n" : stdgo.GoString));
                break;
            };
        };
        return (@:check2 _b.string() : stdgo.GoString)?.__copy__();
    }
