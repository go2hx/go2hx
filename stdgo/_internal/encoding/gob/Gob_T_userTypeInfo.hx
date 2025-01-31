package stdgo._internal.encoding.gob;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.io.Io;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.sort.Sort;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.encoding.binary.Binary;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_T_userTypeInfo_static_extension.T_userTypeInfo_static_extension) class T_userTypeInfo {
    public var _user : stdgo._internal.reflect.Reflect_Type_.Type_ = (null : stdgo._internal.reflect.Reflect_Type_.Type_);
    public var _base : stdgo._internal.reflect.Reflect_Type_.Type_ = (null : stdgo._internal.reflect.Reflect_Type_.Type_);
    public var _indir : stdgo.GoInt = 0;
    public var _externalEnc : stdgo.GoInt = 0;
    public var _externalDec : stdgo.GoInt = 0;
    public var _encIndir : stdgo.GoInt8 = 0;
    public var _decIndir : stdgo.GoInt8 = 0;
    public function new(?_user:stdgo._internal.reflect.Reflect_Type_.Type_, ?_base:stdgo._internal.reflect.Reflect_Type_.Type_, ?_indir:stdgo.GoInt, ?_externalEnc:stdgo.GoInt, ?_externalDec:stdgo.GoInt, ?_encIndir:stdgo.GoInt8, ?_decIndir:stdgo.GoInt8) {
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
