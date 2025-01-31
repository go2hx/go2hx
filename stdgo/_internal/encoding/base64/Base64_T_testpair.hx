package stdgo._internal.encoding.base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.encoding.base64.Base64_T_testpair_static_extension.T_testpair_static_extension) class T_testpair {
    public var _decoded : stdgo.GoString = "";
    public var _encoded : stdgo.GoString = "";
    public function new(?_decoded:stdgo.GoString, ?_encoded:stdgo.GoString) {
        if (_decoded != null) this._decoded = _decoded;
        if (_encoded != null) this._encoded = _encoded;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testpair(_decoded, _encoded);
    }
}
