package stdgo._internal.debug.gosym;
@:structInit class T__lineFromAline___localname___stackEnt_16022 {
    public var _path : stdgo.GoString = "";
    public var _start : stdgo.GoInt = 0;
    public var _offset : stdgo.GoInt = 0;
    public var _prev : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_t__linefromaline___localname___stackent_16022.T__lineFromAline___localname___stackEnt_16022> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_t__linefromaline___localname___stackent_16022.T__lineFromAline___localname___stackEnt_16022>);
    public function new(?_path:stdgo.GoString, ?_start:stdgo.GoInt, ?_offset:stdgo.GoInt, ?_prev:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_t__linefromaline___localname___stackent_16022.T__lineFromAline___localname___stackEnt_16022>) {
        if (_path != null) this._path = _path;
        if (_start != null) this._start = _start;
        if (_offset != null) this._offset = _offset;
        if (_prev != null) this._prev = _prev;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T__lineFromAline___localname___stackEnt_16022(_path, _start, _offset, _prev);
    }
}
