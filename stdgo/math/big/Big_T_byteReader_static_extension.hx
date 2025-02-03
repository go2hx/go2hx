package stdgo.math.big;
class T_byteReader_static_extension {
    static public function unreadByte(_r:T_byteReader):stdgo.Error {
        return stdgo._internal.math.big.Big_T_byteReader_static_extension.T_byteReader_static_extension.unreadByte(_r);
    }
    static public function readByte(_r:T_byteReader):stdgo.Tuple<std.UInt, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big_T_byteReader_static_extension.T_byteReader_static_extension.readByte(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function width(__self__:stdgo._internal.math.big.Big_T_byteReader.T_byteReader):stdgo.Tuple<StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.math.big.Big_T_byteReader_static_extension.T_byteReader_static_extension.width(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function unreadRune(__self__:stdgo._internal.math.big.Big_T_byteReader.T_byteReader):stdgo.Error {
        return stdgo._internal.math.big.Big_T_byteReader_static_extension.T_byteReader_static_extension.unreadRune(__self__);
    }
    public static function token(__self__:stdgo._internal.math.big.Big_T_byteReader.T_byteReader, _0:Bool, _1:stdgo.GoInt32 -> Bool):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _1 = _1;
        return {
            final obj = stdgo._internal.math.big.Big_T_byteReader_static_extension.T_byteReader_static_extension.token(__self__, _0, _1);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function skipSpace(__self__:stdgo._internal.math.big.Big_T_byteReader.T_byteReader):Void {
        stdgo._internal.math.big.Big_T_byteReader_static_extension.T_byteReader_static_extension.skipSpace(__self__);
    }
    public static function readRune(__self__:stdgo._internal.math.big.Big_T_byteReader.T_byteReader):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big_T_byteReader_static_extension.T_byteReader_static_extension.readRune(__self__);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function read(__self__:stdgo._internal.math.big.Big_T_byteReader.T_byteReader, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.math.big.Big_T_byteReader_static_extension.T_byteReader_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
