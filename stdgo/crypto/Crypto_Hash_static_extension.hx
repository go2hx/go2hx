package stdgo.crypto;
class Hash_static_extension {
    static public function available(_h:Hash):Bool {
        return stdgo._internal.crypto.Crypto_Hash_static_extension.Hash_static_extension.available(_h);
    }
    static public function new_(_h:Hash):stdgo._internal.hash.Hash_Hash.Hash {
        return stdgo._internal.crypto.Crypto_Hash_static_extension.Hash_static_extension.new_(_h);
    }
    static public function size(_h:Hash):StdTypes.Int {
        return stdgo._internal.crypto.Crypto_Hash_static_extension.Hash_static_extension.size(_h);
    }
    static public function string(_h:Hash):String {
        return stdgo._internal.crypto.Crypto_Hash_static_extension.Hash_static_extension.string(_h);
    }
    static public function hashFunc(_h:Hash):Hash {
        return stdgo._internal.crypto.Crypto_Hash_static_extension.Hash_static_extension.hashFunc(_h);
    }
}
