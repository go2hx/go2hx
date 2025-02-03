package stdgo.bufio;
@:structInit @:using(stdgo.bufio.Bufio.Scanner_static_extension) abstract Scanner(stdgo._internal.bufio.Bufio_Scanner.Scanner) from stdgo._internal.bufio.Bufio_Scanner.Scanner to stdgo._internal.bufio.Bufio_Scanner.Scanner {
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._r = v;
        return v;
    }
    public var _split(get, set) : SplitFunc;
    function get__split():SplitFunc return this._split;
    function set__split(v:SplitFunc):SplitFunc {
        this._split = v;
        return v;
    }
    public var _maxTokenSize(get, set) : StdTypes.Int;
    function get__maxTokenSize():StdTypes.Int return this._maxTokenSize;
    function set__maxTokenSize(v:StdTypes.Int):StdTypes.Int {
        this._maxTokenSize = (v : stdgo.GoInt);
        return v;
    }
    public var _token(get, set) : Array<std.UInt>;
    function get__token():Array<std.UInt> return [for (i in this._token) i];
    function set__token(v:Array<std.UInt>):Array<std.UInt> {
        this._token = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _start(get, set) : StdTypes.Int;
    function get__start():StdTypes.Int return this._start;
    function set__start(v:StdTypes.Int):StdTypes.Int {
        this._start = (v : stdgo.GoInt);
        return v;
    }
    public var _end(get, set) : StdTypes.Int;
    function get__end():StdTypes.Int return this._end;
    function set__end(v:StdTypes.Int):StdTypes.Int {
        this._end = (v : stdgo.GoInt);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _empties(get, set) : StdTypes.Int;
    function get__empties():StdTypes.Int return this._empties;
    function set__empties(v:StdTypes.Int):StdTypes.Int {
        this._empties = (v : stdgo.GoInt);
        return v;
    }
    public var _scanCalled(get, set) : Bool;
    function get__scanCalled():Bool return this._scanCalled;
    function set__scanCalled(v:Bool):Bool {
        this._scanCalled = v;
        return v;
    }
    public var _done(get, set) : Bool;
    function get__done():Bool return this._done;
    function set__done(v:Bool):Bool {
        this._done = v;
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_split:SplitFunc, ?_maxTokenSize:StdTypes.Int, ?_token:Array<std.UInt>, ?_buf:Array<std.UInt>, ?_start:StdTypes.Int, ?_end:StdTypes.Int, ?_err:stdgo.Error, ?_empties:StdTypes.Int, ?_scanCalled:Bool, ?_done:Bool) this = new stdgo._internal.bufio.Bufio_Scanner.Scanner(
_r,
_split,
(_maxTokenSize : stdgo.GoInt),
([for (i in _token) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_start : stdgo.GoInt),
(_end : stdgo.GoInt),
(_err : stdgo.Error),
(_empties : stdgo.GoInt),
_scanCalled,
_done);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
