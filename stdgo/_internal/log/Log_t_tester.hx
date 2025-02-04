package stdgo._internal.log;
@:structInit @:using(stdgo._internal.log.Log_t_tester_static_extension.T_tester_static_extension) class T_tester {
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
