package stdgo._internal.reflect;
@:structInit @:using(stdgo._internal.reflect.Reflect_Method_static_extension.Method_static_extension) class Method {
    public var name : stdgo.GoString = "";
    public var pkgPath : stdgo.GoString = "";
    public var type : stdgo._internal.reflect.Reflect_Type_.Type_ = (null : stdgo._internal.reflect.Reflect_Type_.Type_);
    public var func : stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
    public var index : stdgo.GoInt = 0;
    public function new(?name:stdgo.GoString, ?pkgPath:stdgo.GoString, ?type:stdgo._internal.reflect.Reflect_Type_.Type_, ?func:stdgo._internal.reflect.Reflect_Value.Value, ?index:stdgo.GoInt) {
        if (name != null) this.name = name;
        if (pkgPath != null) this.pkgPath = pkgPath;
        if (type != null) this.type = type;
        if (func != null) this.func = func;
        if (index != null) this.index = index;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Method(name, pkgPath, type, func, index);
    }
}
