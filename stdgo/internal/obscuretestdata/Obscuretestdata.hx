package stdgo.internal.obscuretestdata;
/**
    * Package obscuretestdata contains functionality used by tests to more easily
    * work with testdata that must be obscured primarily due to
    * golang.org/issue/34986.
**/
class Obscuretestdata {
    /**
        * Rot13 returns the rot13 encoding or decoding of its input.
    **/
    static public inline function rot13(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.internal.obscuretestdata.Obscuretestdata_rot13.rot13(_data);
    /**
        * DecodeToTempFile decodes the named file to a temporary location.
        * If successful, it returns the path of the decoded file.
        * The caller is responsible for ensuring that the temporary file is removed.
    **/
    static public inline function decodeToTempFile(_name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return stdgo._internal.internal.obscuretestdata.Obscuretestdata_decodetotempfile.decodeToTempFile(_name);
    /**
        * ReadFile reads the named file and returns its decoded contents.
    **/
    static public inline function readFile(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.internal.obscuretestdata.Obscuretestdata_readfile.readFile(_name);
}
