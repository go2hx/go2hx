package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_userTypeInfo_static_extension) abstract T_userTypeInfo(stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo) from stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo to stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo {
    public var _user(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get__user():stdgo._internal.reflect.Reflect_Type_.Type_ return this._user;
    function set__user(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
        this._user = v;
        return v;
    }
    public var _base(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get__base():stdgo._internal.reflect.Reflect_Type_.Type_ return this._base;
    function set__base(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
        this._base = v;
        return v;
    }
    public var _indir(get, set) : StdTypes.Int;
    function get__indir():StdTypes.Int return this._indir;
    function set__indir(v:StdTypes.Int):StdTypes.Int {
        this._indir = (v : stdgo.GoInt);
        return v;
    }
    public var _externalEnc(get, set) : StdTypes.Int;
    function get__externalEnc():StdTypes.Int return this._externalEnc;
    function set__externalEnc(v:StdTypes.Int):StdTypes.Int {
        this._externalEnc = (v : stdgo.GoInt);
        return v;
    }
    public var _externalDec(get, set) : StdTypes.Int;
    function get__externalDec():StdTypes.Int return this._externalDec;
    function set__externalDec(v:StdTypes.Int):StdTypes.Int {
        this._externalDec = (v : stdgo.GoInt);
        return v;
    }
    public var _encIndir(get, set) : StdTypes.Int;
    function get__encIndir():StdTypes.Int return this._encIndir;
    function set__encIndir(v:StdTypes.Int):StdTypes.Int {
        this._encIndir = (v : stdgo.GoInt8);
        return v;
    }
    public var _decIndir(get, set) : StdTypes.Int;
    function get__decIndir():StdTypes.Int return this._decIndir;
    function set__decIndir(v:StdTypes.Int):StdTypes.Int {
        this._decIndir = (v : stdgo.GoInt8);
        return v;
    }
    public function new(?_user:stdgo._internal.reflect.Reflect_Type_.Type_, ?_base:stdgo._internal.reflect.Reflect_Type_.Type_, ?_indir:StdTypes.Int, ?_externalEnc:StdTypes.Int, ?_externalDec:StdTypes.Int, ?_encIndir:StdTypes.Int, ?_decIndir:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo(_user, _base, (_indir : stdgo.GoInt), (_externalEnc : stdgo.GoInt), (_externalDec : stdgo.GoInt), (_encIndir : stdgo.GoInt8), (_decIndir : stdgo.GoInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
