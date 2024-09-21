package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:structInit class T_readLineResult {
    public var _line : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _isPrefix : Bool = false;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_line:stdgo.Slice<stdgo.GoUInt8>, ?_isPrefix:Bool, ?_err:stdgo.Error) {
        if (_line != null) this._line = _line;
        if (_isPrefix != null) this._isPrefix = _isPrefix;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_readLineResult(_line, _isPrefix, _err);
    }
}
