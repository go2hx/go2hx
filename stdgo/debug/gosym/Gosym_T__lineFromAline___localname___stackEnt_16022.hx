package stdgo.debug.gosym;
@:structInit abstract T__lineFromAline___localname___stackEnt_16022(stdgo._internal.debug.gosym.Gosym_T__lineFromAline___localname___stackEnt_16022.T__lineFromAline___localname___stackEnt_16022) from stdgo._internal.debug.gosym.Gosym_T__lineFromAline___localname___stackEnt_16022.T__lineFromAline___localname___stackEnt_16022 to stdgo._internal.debug.gosym.Gosym_T__lineFromAline___localname___stackEnt_16022.T__lineFromAline___localname___stackEnt_16022 {
    public var _path(get, set) : String;
    function get__path():String return this._path;
    function set__path(v:String):String {
        this._path = (v : stdgo.GoString);
        return v;
    }
    public var _start(get, set) : StdTypes.Int;
    function get__start():StdTypes.Int return this._start;
    function set__start(v:StdTypes.Int):StdTypes.Int {
        this._start = (v : stdgo.GoInt);
        return v;
    }
    public var _offset(get, set) : StdTypes.Int;
    function get__offset():StdTypes.Int return this._offset;
    function set__offset(v:StdTypes.Int):StdTypes.Int {
        this._offset = (v : stdgo.GoInt);
        return v;
    }
    public var _prev(get, set) : T__lineFromAline___localname___stackEnt_16022;
    function get__prev():T__lineFromAline___localname___stackEnt_16022 return this._prev;
    function set__prev(v:T__lineFromAline___localname___stackEnt_16022):T__lineFromAline___localname___stackEnt_16022 {
        this._prev = (v : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_T__lineFromAline___localname___stackEnt_16022.T__lineFromAline___localname___stackEnt_16022>);
        return v;
    }
    public function new(?_path:String, ?_start:StdTypes.Int, ?_offset:StdTypes.Int, ?_prev:T__lineFromAline___localname___stackEnt_16022) this = new stdgo._internal.debug.gosym.Gosym_T__lineFromAline___localname___stackEnt_16022.T__lineFromAline___localname___stackEnt_16022((_path : stdgo.GoString), (_start : stdgo.GoInt), (_offset : stdgo.GoInt), (_prev : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_T__lineFromAline___localname___stackEnt_16022.T__lineFromAline___localname___stackEnt_16022>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
