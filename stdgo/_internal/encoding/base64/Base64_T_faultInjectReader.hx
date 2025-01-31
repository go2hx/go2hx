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
@:structInit @:using(stdgo._internal.encoding.base64.Base64_T_faultInjectReader_static_extension.T_faultInjectReader_static_extension) class T_faultInjectReader {
    public var _source : stdgo.GoString = "";
    public var _nextc : stdgo.Chan<stdgo._internal.encoding.base64.Base64_T_nextRead.T_nextRead> = (null : stdgo.Chan<stdgo._internal.encoding.base64.Base64_T_nextRead.T_nextRead>);
    public function new(?_source:stdgo.GoString, ?_nextc:stdgo.Chan<stdgo._internal.encoding.base64.Base64_T_nextRead.T_nextRead>) {
        if (_source != null) this._source = _source;
        if (_nextc != null) this._nextc = _nextc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_faultInjectReader(_source, _nextc);
    }
}
