package stdgo._internal.bufio;
@:structInit @:using(stdgo._internal.bufio.Bufio_scanner_static_extension.Scanner_static_extension) class Scanner {
    public var _r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var _split : stdgo._internal.bufio.Bufio_splitfunc.SplitFunc = (null : stdgo._internal.bufio.Bufio_splitfunc.SplitFunc);
    public var _maxTokenSize : stdgo.GoInt = 0;
    public var _token : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _start : stdgo.GoInt = 0;
    public var _end : stdgo.GoInt = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _empties : stdgo.GoInt = 0;
    public var _scanCalled : Bool = false;
    public var _done : Bool = false;
    public function new(?_r:stdgo._internal.io.Io_reader.Reader, ?_split:stdgo._internal.bufio.Bufio_splitfunc.SplitFunc, ?_maxTokenSize:stdgo.GoInt, ?_token:stdgo.Slice<stdgo.GoUInt8>, ?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_start:stdgo.GoInt, ?_end:stdgo.GoInt, ?_err:stdgo.Error, ?_empties:stdgo.GoInt, ?_scanCalled:Bool, ?_done:Bool) {
        if (_r != null) this._r = _r;
        if (_split != null) this._split = _split;
        if (_maxTokenSize != null) this._maxTokenSize = _maxTokenSize;
        if (_token != null) this._token = _token;
        if (_buf != null) this._buf = _buf;
        if (_start != null) this._start = _start;
        if (_end != null) this._end = _end;
        if (_err != null) this._err = _err;
        if (_empties != null) this._empties = _empties;
        if (_scanCalled != null) this._scanCalled = _scanCalled;
        if (_done != null) this._done = _done;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Scanner(
_r,
_split,
_maxTokenSize,
_token,
_buf,
_start,
_end,
_err,
_empties,
_scanCalled,
_done);
    }
}
