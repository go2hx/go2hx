package stdgo._internal.log;
import stdgo._internal.os.Os;
import stdgo._internal.log.internal.Internal;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.testing.Testing;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(stdgo._internal.log.Log_T_tester_static_extension.T_tester_static_extension) class T_tester {
    public var _flag : stdgo.GoInt = 0;
    public var _prefix : stdgo.GoString = "";
    public var _pattern : stdgo.GoString = "";
    public function new(?_flag:stdgo.GoInt, ?_prefix:stdgo.GoString, ?_pattern:stdgo.GoString) {
        if (_flag != null) this._flag = _flag;
        if (_prefix != null) this._prefix = _prefix;
        if (_pattern != null) this._pattern = _pattern;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_tester(_flag, _prefix, _pattern);
    }
}
