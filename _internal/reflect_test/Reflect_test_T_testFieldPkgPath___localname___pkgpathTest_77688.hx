package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class T_testFieldPkgPath___localname___pkgpathTest_77688 {
    public var _index : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _pkgPath : stdgo.GoString = "";
    public var _embedded : Bool = false;
    public var _exported : Bool = false;
    public function new(?_index:stdgo.Slice<stdgo.GoInt>, ?_pkgPath:stdgo.GoString, ?_embedded:Bool, ?_exported:Bool) {
        if (_index != null) this._index = _index;
        if (_pkgPath != null) this._pkgPath = _pkgPath;
        if (_embedded != null) this._embedded = _embedded;
        if (_exported != null) this._exported = _exported;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testFieldPkgPath___localname___pkgpathTest_77688(_index, _pkgPath, _embedded, _exported);
    }
}
