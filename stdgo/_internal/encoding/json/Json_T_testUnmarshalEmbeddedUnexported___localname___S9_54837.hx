package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S9_54837_static_extension.T_testUnmarshalEmbeddedUnexported___localname___S9_54837_static_extension) class T_testUnmarshalEmbeddedUnexported___localname___S9_54837 {
    @:embedded
    @:tag("`json:\"embed\"`")
    public var _unexportedWithMethods : stdgo._internal.encoding.json.Json_T_unexportedWithMethods.T_unexportedWithMethods = ({} : stdgo._internal.encoding.json.Json_T_unexportedWithMethods.T_unexportedWithMethods);
    public function new(?_unexportedWithMethods:stdgo._internal.encoding.json.Json_T_unexportedWithMethods.T_unexportedWithMethods) {
        if (_unexportedWithMethods != null) this._unexportedWithMethods = _unexportedWithMethods;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function f() this._unexportedWithMethods.f();
    public function __copy__() {
        return new T_testUnmarshalEmbeddedUnexported___localname___S9_54837(_unexportedWithMethods);
    }
}
