package _internal.text.template_test;
@:structInit class T_templateFile {
    public var _name : stdgo.GoString = "";
    public var _contents : stdgo.GoString = "";
    public function new(?_name:stdgo.GoString, ?_contents:stdgo.GoString) {
        if (_name != null) this._name = _name;
        if (_contents != null) this._contents = _contents;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_templateFile(_name, _contents);
    }
}
