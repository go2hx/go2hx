package stdgo._internal.crypto.des;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.crypto.des.Des_T_desCipher_static_extension.T_desCipher_static_extension) class T_desCipher {
    public var _subkeys : stdgo.GoArray<stdgo.GoUInt64> = new stdgo.GoArray<stdgo.GoUInt64>(16, 16).__setNumber64__();
    public function new(?_subkeys:stdgo.GoArray<stdgo.GoUInt64>) {
        if (_subkeys != null) this._subkeys = _subkeys;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_desCipher(_subkeys);
    }
}
