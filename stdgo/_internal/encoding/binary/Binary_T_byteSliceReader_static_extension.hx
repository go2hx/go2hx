package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.encoding.binary.Binary.T_byteSliceReader_asInterface) class T_byteSliceReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _br:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_byteSliceReader.T_byteSliceReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _br:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_byteSliceReader.T_byteSliceReader> = _br;
        var _n = (_p.__copyTo__((@:checkr _br ?? throw "null pointer dereference")._remain) : stdgo.GoInt);
        (@:checkr _br ?? throw "null pointer dereference")._remain = ((@:checkr _br ?? throw "null pointer dereference")._remain.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
}
