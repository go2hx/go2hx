package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.compress.flate.Flate_T_levelInfo_static_extension.T_levelInfo_static_extension) class T_levelInfo {
    public var _level : stdgo.GoInt32 = 0;
    public var _lastFreq : stdgo.GoInt32 = 0;
    public var _nextCharFreq : stdgo.GoInt32 = 0;
    public var _nextPairFreq : stdgo.GoInt32 = 0;
    public var _needed : stdgo.GoInt32 = 0;
    public function new(?_level:stdgo.GoInt32, ?_lastFreq:stdgo.GoInt32, ?_nextCharFreq:stdgo.GoInt32, ?_nextPairFreq:stdgo.GoInt32, ?_needed:stdgo.GoInt32) {
        if (_level != null) this._level = _level;
        if (_lastFreq != null) this._lastFreq = _lastFreq;
        if (_nextCharFreq != null) this._nextCharFreq = _nextCharFreq;
        if (_nextPairFreq != null) this._nextPairFreq = _nextPairFreq;
        if (_needed != null) this._needed = _needed;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_levelInfo(_level, _lastFreq, _nextCharFreq, _nextPairFreq, _needed);
    }
}
