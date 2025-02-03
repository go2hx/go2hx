package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_unexportedFields_static_extension) abstract T_unexportedFields(stdgo._internal.encoding.json.Json_T_unexportedFields.T_unexportedFields) from stdgo._internal.encoding.json.Json_T_unexportedFields.T_unexportedFields to stdgo._internal.encoding.json.Json_T_unexportedFields.T_unexportedFields {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var _m(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>;
    function get__m():stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> return this._m;
    function set__m(v:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>):stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> {
        this._m = (v : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
        return v;
    }
    public var _m2(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>;
    function get__m2():stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> return this._m2;
    function set__m2(v:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>):stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> {
        this._m2 = (v : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
        return v;
    }
    public var _s(get, set) : Array<StdTypes.Int>;
    function get__s():Array<StdTypes.Int> return [for (i in this._s) i];
    function set__s(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._s = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?name:String, ?_m:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>, ?_m2:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>, ?_s:Array<StdTypes.Int>) this = new stdgo._internal.encoding.json.Json_T_unexportedFields.T_unexportedFields((name : stdgo.GoString), (_m : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>), (_m2 : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>), ([for (i in _s) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
