package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.net.textproto.Textproto_T_dotReader_static_extension.T_dotReader_static_extension) class T_dotReader {
    public var _r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>);
    public var _state : stdgo.GoInt = 0;
    public function new(?_r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>, ?_state:stdgo.GoInt) {
        if (_r != null) this._r = _r;
        if (_state != null) this._state = _state;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dotReader(_r, _state);
    }
}
