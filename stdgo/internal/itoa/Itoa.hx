package stdgo.internal.itoa;
class Itoa {
    /**
        * Itoa converts val to a decimal string.
    **/
    static public inline function itoa(_val:stdgo.GoInt):stdgo.GoString return stdgo._internal.internal.itoa.Itoa_itoa.itoa(_val);
    /**
        * Uitoa converts val to a decimal string.
    **/
    static public inline function uitoa(_val:stdgo.GoUInt):stdgo.GoString return stdgo._internal.internal.itoa.Itoa_uitoa.uitoa(_val);
}
