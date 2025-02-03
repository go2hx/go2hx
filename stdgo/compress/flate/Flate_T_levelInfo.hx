package stdgo.compress.flate;
@:structInit @:using(stdgo.compress.flate.Flate.T_levelInfo_static_extension) abstract T_levelInfo(stdgo._internal.compress.flate.Flate_T_levelInfo.T_levelInfo) from stdgo._internal.compress.flate.Flate_T_levelInfo.T_levelInfo to stdgo._internal.compress.flate.Flate_T_levelInfo.T_levelInfo {
    public var _level(get, set) : StdTypes.Int;
    function get__level():StdTypes.Int return this._level;
    function set__level(v:StdTypes.Int):StdTypes.Int {
        this._level = (v : stdgo.GoInt32);
        return v;
    }
    public var _lastFreq(get, set) : StdTypes.Int;
    function get__lastFreq():StdTypes.Int return this._lastFreq;
    function set__lastFreq(v:StdTypes.Int):StdTypes.Int {
        this._lastFreq = (v : stdgo.GoInt32);
        return v;
    }
    public var _nextCharFreq(get, set) : StdTypes.Int;
    function get__nextCharFreq():StdTypes.Int return this._nextCharFreq;
    function set__nextCharFreq(v:StdTypes.Int):StdTypes.Int {
        this._nextCharFreq = (v : stdgo.GoInt32);
        return v;
    }
    public var _nextPairFreq(get, set) : StdTypes.Int;
    function get__nextPairFreq():StdTypes.Int return this._nextPairFreq;
    function set__nextPairFreq(v:StdTypes.Int):StdTypes.Int {
        this._nextPairFreq = (v : stdgo.GoInt32);
        return v;
    }
    public var _needed(get, set) : StdTypes.Int;
    function get__needed():StdTypes.Int return this._needed;
    function set__needed(v:StdTypes.Int):StdTypes.Int {
        this._needed = (v : stdgo.GoInt32);
        return v;
    }
    public function new(?_level:StdTypes.Int, ?_lastFreq:StdTypes.Int, ?_nextCharFreq:StdTypes.Int, ?_nextPairFreq:StdTypes.Int, ?_needed:StdTypes.Int) this = new stdgo._internal.compress.flate.Flate_T_levelInfo.T_levelInfo((_level : stdgo.GoInt32), (_lastFreq : stdgo.GoInt32), (_nextCharFreq : stdgo.GoInt32), (_nextPairFreq : stdgo.GoInt32), (_needed : stdgo.GoInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
