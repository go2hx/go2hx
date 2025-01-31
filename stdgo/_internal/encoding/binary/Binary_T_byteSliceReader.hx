package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
@:structInit @:using(stdgo._internal.encoding.binary.Binary_T_byteSliceReader_static_extension.T_byteSliceReader_static_extension) class T_byteSliceReader {
    public var _remain : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_remain:stdgo.Slice<stdgo.GoUInt8>) {
        if (_remain != null) this._remain = _remain;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_byteSliceReader(_remain);
    }
}
