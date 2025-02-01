package stdgo._internal.internal.coverage.encodemeta;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.internal.coverage.uleb128.Uleb128;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.internal.coverage.Coverage;
@:structInit @:using(stdgo._internal.internal.coverage.encodemeta.Encodemeta_T_funcDesc_static_extension.T_funcDesc_static_extension) class T_funcDesc {
    public var _encoded : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_encoded:stdgo.Slice<stdgo.GoUInt8>) {
        if (_encoded != null) this._encoded = _encoded;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_funcDesc(_encoded);
    }
}
