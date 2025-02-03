package stdgo.crypto.des;
@:structInit @:using(stdgo.crypto.des.Des.T_tripleDESCipher_static_extension) abstract T_tripleDESCipher(stdgo._internal.crypto.des.Des_T_tripleDESCipher.T_tripleDESCipher) from stdgo._internal.crypto.des.Des_T_tripleDESCipher.T_tripleDESCipher to stdgo._internal.crypto.des.Des_T_tripleDESCipher.T_tripleDESCipher {
    public var _cipher1(get, set) : T_desCipher;
    function get__cipher1():T_desCipher return this._cipher1;
    function set__cipher1(v:T_desCipher):T_desCipher {
        this._cipher1 = v;
        return v;
    }
    public var _cipher2(get, set) : T_desCipher;
    function get__cipher2():T_desCipher return this._cipher2;
    function set__cipher2(v:T_desCipher):T_desCipher {
        this._cipher2 = v;
        return v;
    }
    public var _cipher3(get, set) : T_desCipher;
    function get__cipher3():T_desCipher return this._cipher3;
    function set__cipher3(v:T_desCipher):T_desCipher {
        this._cipher3 = v;
        return v;
    }
    public function new(?_cipher1:T_desCipher, ?_cipher2:T_desCipher, ?_cipher3:T_desCipher) this = new stdgo._internal.crypto.des.Des_T_tripleDESCipher.T_tripleDESCipher(_cipher1, _cipher2, _cipher3);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
