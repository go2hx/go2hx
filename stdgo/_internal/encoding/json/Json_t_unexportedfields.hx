package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_unexportedfields_static_extension.T_unexportedFields_static_extension) class T_unexportedFields {
    public var name : stdgo.GoString = "";
    @:tag("`json:\"-\"`")
    public var _m : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> = (null : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
    @:tag("`json:\"abcd\"`")
    public var _m2 : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> = (null : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
    @:tag("`json:\"-\"`")
    public var _s : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?name:stdgo.GoString, ?_m:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>, ?_m2:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>, ?_s:stdgo.Slice<stdgo.GoInt>) {
        if (name != null) this.name = name;
        if (_m != null) this._m = _m;
        if (_m2 != null) this._m2 = _m2;
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_unexportedFields(name, _m, _m2, _s);
    }
}
