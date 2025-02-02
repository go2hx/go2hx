package stdgo._internal.runtime.pprof;
@:structInit class T__emitLocation___localname___newFunc_20332 {
    public var _id : stdgo.GoUInt64 = 0;
    public var _name : stdgo.GoString = "";
    public var _file : stdgo.GoString = "";
    public var _startLine : stdgo.GoInt64 = 0;
    public function new(?_id:stdgo.GoUInt64, ?_name:stdgo.GoString, ?_file:stdgo.GoString, ?_startLine:stdgo.GoInt64) {
        if (_id != null) this._id = _id;
        if (_name != null) this._name = _name;
        if (_file != null) this._file = _file;
        if (_startLine != null) this._startLine = _startLine;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T__emitLocation___localname___newFunc_20332(_id, _name, _file, _startLine);
    }
}
