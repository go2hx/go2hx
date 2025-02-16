package stdgo;
/**
    * Package obscuretestdata contains functionality used by tests to more easily
    * work with testdata that must be obscured primarily due to
    * golang.org/issue/34986.
**/
class Obscuretestdata {
    /**
        * Rot13 returns the rot13 encoding or decoding of its input.
    **/
    static public inline function rot13(_data:Array<std.UInt>):Array<std.UInt> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.internal.obscuretestdata.Obscuretestdata_rot13.rot13(_data)) i];
    }
    /**
        * DecodeToTempFile decodes the named file to a temporary location.
        * If successful, it returns the path of the decoded file.
        * The caller is responsible for ensuring that the temporary file is removed.
    **/
    static public inline function decodeToTempFile(_name:String):stdgo.Tuple<String, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.internal.obscuretestdata.Obscuretestdata_decodetotempfile.decodeToTempFile(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ReadFile reads the named file and returns its decoded contents.
    **/
    static public inline function readFile(_name:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.internal.obscuretestdata.Obscuretestdata_readfile.readFile(_name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
