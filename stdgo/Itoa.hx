package stdgo;
class Itoa {
    /**
        * Itoa converts val to a decimal string.
    **/
    static public inline function itoa(_val:StdTypes.Int):String {
        final _val = (_val : stdgo.GoInt);
        return stdgo._internal.internal.itoa.Itoa_itoa.itoa(_val);
    }
    /**
        * Uitoa converts val to a decimal string.
    **/
    static public inline function uitoa(_val:std.UInt):String {
        final _val = (_val : stdgo.GoUInt);
        return stdgo._internal.internal.itoa.Itoa_uitoa.uitoa(_val);
    }
}
