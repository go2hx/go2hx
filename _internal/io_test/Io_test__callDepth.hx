package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function _callDepth(_callers:stdgo.Slice<stdgo.GoUIntptr>):stdgo.GoInt {
        var _depth = (0 : stdgo.GoInt);
        var _frames = stdgo._internal.runtime.Runtime_callersFrames.callersFrames(_callers);
        var _more = (true : Bool);
        while (_more) {
            {
                var __tmp__ = _frames.next();
                _more = __tmp__._1;
            };
            _depth++;
        };
        return _depth;
    }
