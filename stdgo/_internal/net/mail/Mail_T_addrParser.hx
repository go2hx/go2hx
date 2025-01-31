package stdgo._internal.net.mail;
import stdgo._internal.errors.Errors;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.log.Log;
@:structInit @:using(stdgo._internal.net.mail.Mail_T_addrParser_static_extension.T_addrParser_static_extension) class T_addrParser {
    public var _s : stdgo.GoString = "";
    public var _dec : stdgo.Ref<stdgo._internal.mime.Mime_WordDecoder.WordDecoder> = (null : stdgo.Ref<stdgo._internal.mime.Mime_WordDecoder.WordDecoder>);
    public function new(?_s:stdgo.GoString, ?_dec:stdgo.Ref<stdgo._internal.mime.Mime_WordDecoder.WordDecoder>) {
        if (_s != null) this._s = _s;
        if (_dec != null) this._dec = _dec;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_addrParser(_s, _dec);
    }
}
