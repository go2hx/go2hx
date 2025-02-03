package stdgo.compress.flate;
@:structInit @:using(stdgo.compress.flate.Flate.T_compressionLevel_static_extension) abstract T_compressionLevel(stdgo._internal.compress.flate.Flate_T_compressionLevel.T_compressionLevel) from stdgo._internal.compress.flate.Flate_T_compressionLevel.T_compressionLevel to stdgo._internal.compress.flate.Flate_T_compressionLevel.T_compressionLevel {
    public var _level(get, set) : StdTypes.Int;
    function get__level():StdTypes.Int return this._level;
    function set__level(v:StdTypes.Int):StdTypes.Int {
        this._level = (v : stdgo.GoInt);
        return v;
    }
    public var _good(get, set) : StdTypes.Int;
    function get__good():StdTypes.Int return this._good;
    function set__good(v:StdTypes.Int):StdTypes.Int {
        this._good = (v : stdgo.GoInt);
        return v;
    }
    public var _lazy(get, set) : StdTypes.Int;
    function get__lazy():StdTypes.Int return this._lazy;
    function set__lazy(v:StdTypes.Int):StdTypes.Int {
        this._lazy = (v : stdgo.GoInt);
        return v;
    }
    public var _nice(get, set) : StdTypes.Int;
    function get__nice():StdTypes.Int return this._nice;
    function set__nice(v:StdTypes.Int):StdTypes.Int {
        this._nice = (v : stdgo.GoInt);
        return v;
    }
    public var _chain(get, set) : StdTypes.Int;
    function get__chain():StdTypes.Int return this._chain;
    function set__chain(v:StdTypes.Int):StdTypes.Int {
        this._chain = (v : stdgo.GoInt);
        return v;
    }
    public var _fastSkipHashing(get, set) : StdTypes.Int;
    function get__fastSkipHashing():StdTypes.Int return this._fastSkipHashing;
    function set__fastSkipHashing(v:StdTypes.Int):StdTypes.Int {
        this._fastSkipHashing = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_level:StdTypes.Int, ?_good:StdTypes.Int, ?_lazy:StdTypes.Int, ?_nice:StdTypes.Int, ?_chain:StdTypes.Int, ?_fastSkipHashing:StdTypes.Int) this = new stdgo._internal.compress.flate.Flate_T_compressionLevel.T_compressionLevel((_level : stdgo.GoInt), (_good : stdgo.GoInt), (_lazy : stdgo.GoInt), (_nice : stdgo.GoInt), (_chain : stdgo.GoInt), (_fastSkipHashing : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
