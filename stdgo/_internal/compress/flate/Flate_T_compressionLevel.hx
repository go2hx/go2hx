package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.compress.flate.Flate_T_compressionLevel_static_extension.T_compressionLevel_static_extension) class T_compressionLevel {
    public var _level : stdgo.GoInt = 0;
    public var _good : stdgo.GoInt = 0;
    public var _lazy : stdgo.GoInt = 0;
    public var _nice : stdgo.GoInt = 0;
    public var _chain : stdgo.GoInt = 0;
    public var _fastSkipHashing : stdgo.GoInt = 0;
    public function new(?_level:stdgo.GoInt, ?_good:stdgo.GoInt, ?_lazy:stdgo.GoInt, ?_nice:stdgo.GoInt, ?_chain:stdgo.GoInt, ?_fastSkipHashing:stdgo.GoInt) {
        if (_level != null) this._level = _level;
        if (_good != null) this._good = _good;
        if (_lazy != null) this._lazy = _lazy;
        if (_nice != null) this._nice = _nice;
        if (_chain != null) this._chain = _chain;
        if (_fastSkipHashing != null) this._fastSkipHashing = _fastSkipHashing;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_compressionLevel(_level, _good, _lazy, _nice, _chain, _fastSkipHashing);
    }
}
