package stdgo._internal.internal.profile;
@:structInit @:using(stdgo._internal.internal.profile.Profile_t_functionkey_static_extension.T_functionKey_static_extension) class T_functionKey {
    public var _startLine : stdgo.GoInt64 = 0;
    public var _name : stdgo.GoString = "";
    public var _systemName : stdgo.GoString = "";
    public var _fileName : stdgo.GoString = "";
    public function new(?_startLine:stdgo.GoInt64, ?_name:stdgo.GoString, ?_systemName:stdgo.GoString, ?_fileName:stdgo.GoString) {
        if (_startLine != null) this._startLine = _startLine;
        if (_name != null) this._name = _name;
        if (_systemName != null) this._systemName = _systemName;
        if (_fileName != null) this._fileName = _fileName;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_functionKey(_startLine, _name, _systemName, _fileName);
    }
}
