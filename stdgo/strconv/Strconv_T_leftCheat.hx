package stdgo.strconv;
@:structInit @:using(stdgo.strconv.Strconv.T_leftCheat_static_extension) abstract T_leftCheat(stdgo._internal.strconv.Strconv_T_leftCheat.T_leftCheat) from stdgo._internal.strconv.Strconv_T_leftCheat.T_leftCheat to stdgo._internal.strconv.Strconv_T_leftCheat.T_leftCheat {
    public var _delta(get, set) : StdTypes.Int;
    function get__delta():StdTypes.Int return this._delta;
    function set__delta(v:StdTypes.Int):StdTypes.Int {
        this._delta = (v : stdgo.GoInt);
        return v;
    }
    public var _cutoff(get, set) : String;
    function get__cutoff():String return this._cutoff;
    function set__cutoff(v:String):String {
        this._cutoff = (v : stdgo.GoString);
        return v;
    }
    public function new(?_delta:StdTypes.Int, ?_cutoff:String) this = new stdgo._internal.strconv.Strconv_T_leftCheat.T_leftCheat((_delta : stdgo.GoInt), (_cutoff : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
