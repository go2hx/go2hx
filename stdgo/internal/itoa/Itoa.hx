package stdgo.internal.itoa;
class Itoa {
    /**
        Itoa converts val to a decimal string.
    **/
    static public function itoa(_val:StdTypes.Int):String {
        return stdgo._internal.internal.itoa.Itoa_itoa.itoa(_val);
    }
    /**
        Uitoa converts val to a decimal string.
    **/
    static public function uitoa(_val:std.UInt):String {
        return stdgo._internal.internal.itoa.Itoa_uitoa.uitoa(_val);
    }
}
