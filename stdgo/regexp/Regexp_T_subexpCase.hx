package stdgo.regexp;
@:structInit @:using(stdgo.regexp.Regexp.T_subexpCase_static_extension) abstract T_subexpCase(stdgo._internal.regexp.Regexp_T_subexpCase.T_subexpCase) from stdgo._internal.regexp.Regexp_T_subexpCase.T_subexpCase to stdgo._internal.regexp.Regexp_T_subexpCase.T_subexpCase {
    public var _input(get, set) : String;
    function get__input():String return this._input;
    function set__input(v:String):String {
        this._input = (v : stdgo.GoString);
        return v;
    }
    public var _num(get, set) : StdTypes.Int;
    function get__num():StdTypes.Int return this._num;
    function set__num(v:StdTypes.Int):StdTypes.Int {
        this._num = (v : stdgo.GoInt);
        return v;
    }
    public var _names(get, set) : Array<String>;
    function get__names():Array<String> return [for (i in this._names) i];
    function set__names(v:Array<String>):Array<String> {
        this._names = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _indices(get, set) : Array<T_subexpIndex>;
    function get__indices():Array<T_subexpIndex> return [for (i in this._indices) i];
    function set__indices(v:Array<T_subexpIndex>):Array<T_subexpIndex> {
        this._indices = ([for (i in v) i] : stdgo.Slice<stdgo._internal.regexp.Regexp_T_subexpIndex.T_subexpIndex>);
        return v;
    }
    public function new(?_input:String, ?_num:StdTypes.Int, ?_names:Array<String>, ?_indices:Array<T_subexpIndex>) this = new stdgo._internal.regexp.Regexp_T_subexpCase.T_subexpCase((_input : stdgo.GoString), (_num : stdgo.GoInt), ([for (i in _names) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), ([for (i in _indices) i] : stdgo.Slice<stdgo._internal.regexp.Regexp_T_subexpIndex.T_subexpIndex>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
