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
@:structInit @:using(stdgo._internal.crypto.sha1.Sha1_T_sha1Test_static_extension.T_sha1Test_static_extension) class T_sha1Test {
    public var _out : stdgo.GoString = "";
    public var _in : stdgo.GoString = "";
    public var _halfState : stdgo.GoString = "";
    public function new(?_out:stdgo.GoString, ?_in:stdgo.GoString, ?_halfState:stdgo.GoString) {
        if (_out != null) this._out = _out;
        if (_in != null) this._in = _in;
        if (_halfState != null) this._halfState = _halfState;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_sha1Test(_out, _in, _halfState);
    }
}
