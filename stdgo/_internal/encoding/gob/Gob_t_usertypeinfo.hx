package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_usertypeinfo_static_extension.T_userTypeInfo_static_extension) class T_userTypeInfo {
    public var _user : stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
    public var _base : stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
    public var _indir : stdgo.GoInt = 0;
    public var _externalEnc : stdgo.GoInt = 0;
    public var _externalDec : stdgo.GoInt = 0;
    public var _encIndir : stdgo.GoInt8 = 0;
    public var _decIndir : stdgo.GoInt8 = 0;
    public function new(?_user:stdgo._internal.reflect.Reflect_type_.Type_, ?_base:stdgo._internal.reflect.Reflect_type_.Type_, ?_indir:stdgo.GoInt, ?_externalEnc:stdgo.GoInt, ?_externalDec:stdgo.GoInt, ?_encIndir:stdgo.GoInt8, ?_decIndir:stdgo.GoInt8) {
        if (_user != null) this._user = _user;
        if (_base != null) this._base = _base;
        if (_indir != null) this._indir = _indir;
        if (_externalEnc != null) this._externalEnc = _externalEnc;
        if (_externalDec != null) this._externalDec = _externalDec;
        if (_encIndir != null) this._encIndir = _encIndir;
        if (_decIndir != null) this._decIndir = _decIndir;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_userTypeInfo(_user, _base, _indir, _externalEnc, _externalDec, _encIndir, _decIndir);
    }
}
