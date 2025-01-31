package stdgo._internal.crypto.sha1;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.crypto.sha1.Sha1_T_unmarshalTest_static_extension.T_unmarshalTest_static_extension) class T_unmarshalTest {
    public var _state : stdgo.GoString = "";
    public var _sum : stdgo.GoString = "";
    public function new(?_state:stdgo.GoString, ?_sum:stdgo.GoString) {
        if (_state != null) this._state = _state;
        if (_sum != null) this._sum = _sum;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_unmarshalTest(_state, _sum);
    }
}
