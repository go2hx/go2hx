package stdgo._internal.go.constant;
@:structInit @:using(stdgo._internal.go.constant.Constant_t_maketestcase_static_extension.T_makeTestCase_static_extension) class T_makeTestCase {
    public var _kind : stdgo._internal.go.constant.Constant_kind.Kind = ((0 : stdgo.GoInt) : stdgo._internal.go.constant.Constant_kind.Kind);
    public var _arg : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _want : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?_kind:stdgo._internal.go.constant.Constant_kind.Kind, ?_arg:stdgo.AnyInterface, ?_want:stdgo.AnyInterface) {
        if (_kind != null) this._kind = _kind;
        if (_arg != null) this._arg = _arg;
        if (_want != null) this._want = _want;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_makeTestCase(_kind, _arg, _want);
    }
}
