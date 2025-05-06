package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_basic_static_extension.Basic_static_extension) class Basic {
    public var _kind : stdgo._internal.go.types.Types_basickind.BasicKind = ((0 : stdgo.GoInt) : stdgo._internal.go.types.Types_basickind.BasicKind);
    public var _info : stdgo._internal.go.types.Types_basicinfo.BasicInfo = ((0 : stdgo.GoInt) : stdgo._internal.go.types.Types_basicinfo.BasicInfo);
    public var _name : stdgo.GoString = "";
    public function new(?_kind:stdgo._internal.go.types.Types_basickind.BasicKind, ?_info:stdgo._internal.go.types.Types_basicinfo.BasicInfo, ?_name:stdgo.GoString) {
        if (_kind != null) this._kind = _kind;
        if (_info != null) this._info = _info;
        if (_name != null) this._name = _name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Basic(_kind, _info, _name);
    }
}
