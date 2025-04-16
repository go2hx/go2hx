package stdgo._internal.reflect;
@:structInit @:using(stdgo._internal.reflect.Reflect_t_methodvalue_static_extension.T_methodValue_static_extension) class T_methodValue {
    @:embedded
    public var _makeFuncCtxt : stdgo._internal.reflect.Reflect_t_makefuncctxt.T_makeFuncCtxt = ({} : stdgo._internal.reflect.Reflect_t_makefuncctxt.T_makeFuncCtxt);
    public function new(?_makeFuncCtxt:stdgo._internal.reflect.Reflect_t_makefuncctxt.T_makeFuncCtxt) {
        if (_makeFuncCtxt != null) this._makeFuncCtxt = _makeFuncCtxt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_methodValue(_makeFuncCtxt);
    }
}
