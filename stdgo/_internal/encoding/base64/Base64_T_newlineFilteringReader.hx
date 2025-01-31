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
@:structInit @:using(stdgo._internal.encoding.base64.Base64_T_newlineFilteringReader_static_extension.T_newlineFilteringReader_static_extension) class T_newlineFilteringReader {
    public var _wrapped : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public function new(?_wrapped:stdgo._internal.io.Io_Reader.Reader) {
        if (_wrapped != null) this._wrapped = _wrapped;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_newlineFilteringReader(_wrapped);
    }
}
