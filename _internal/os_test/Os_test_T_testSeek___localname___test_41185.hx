package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
@:structInit class T_testSeek___localname___test_41185 {
    public var _in : stdgo.GoInt64 = 0;
    public var _whence : stdgo.GoInt = 0;
    public var _out : stdgo.GoInt64 = 0;
    public function new(?_in:stdgo.GoInt64, ?_whence:stdgo.GoInt, ?_out:stdgo.GoInt64) {
        if (_in != null) this._in = _in;
        if (_whence != null) this._whence = _whence;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testSeek___localname___test_41185(_in, _whence, _out);
    }
}
