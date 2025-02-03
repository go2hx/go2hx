package stdgo.regexp;
@:structInit @:using(stdgo.regexp.Regexp.T_subexpIndex_static_extension) abstract T_subexpIndex(stdgo._internal.regexp.Regexp_T_subexpIndex.T_subexpIndex) from stdgo._internal.regexp.Regexp_T_subexpIndex.T_subexpIndex to stdgo._internal.regexp.Regexp_T_subexpIndex.T_subexpIndex {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _index(get, set) : StdTypes.Int;
    function get__index():StdTypes.Int return this._index;
    function set__index(v:StdTypes.Int):StdTypes.Int {
        this._index = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_name:String, ?_index:StdTypes.Int) this = new stdgo._internal.regexp.Regexp_T_subexpIndex.T_subexpIndex((_name : stdgo.GoString), (_index : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
