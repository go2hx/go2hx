package stdgo._internal.crypto.des;
@:structInit @:using(stdgo._internal.crypto.des.Des_t_tripledescipher_static_extension.T_tripleDESCipher_static_extension) class T_tripleDESCipher {
    public var _cipher1 : stdgo._internal.crypto.des.Des_t_descipher.T_desCipher = ({} : stdgo._internal.crypto.des.Des_t_descipher.T_desCipher);
    public var _cipher2 : stdgo._internal.crypto.des.Des_t_descipher.T_desCipher = ({} : stdgo._internal.crypto.des.Des_t_descipher.T_desCipher);
    public var _cipher3 : stdgo._internal.crypto.des.Des_t_descipher.T_desCipher = ({} : stdgo._internal.crypto.des.Des_t_descipher.T_desCipher);
    public function new(?_cipher1:stdgo._internal.crypto.des.Des_t_descipher.T_desCipher, ?_cipher2:stdgo._internal.crypto.des.Des_t_descipher.T_desCipher, ?_cipher3:stdgo._internal.crypto.des.Des_t_descipher.T_desCipher) {
        if (_cipher1 != null) this._cipher1 = _cipher1;
        if (_cipher2 != null) this._cipher2 = _cipher2;
        if (_cipher3 != null) this._cipher3 = _cipher3;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_tripleDESCipher(_cipher1, _cipher2, _cipher3);
    }
}
