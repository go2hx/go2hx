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
@:structInit @:using(stdgo._internal.net.mail.Mail_Message_static_extension.Message_static_extension) class Message {
    public var header : stdgo._internal.net.mail.Mail_Header.Header = (null : stdgo._internal.net.mail.Mail_Header.Header);
    public var body : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public function new(?header:stdgo._internal.net.mail.Mail_Header.Header, ?body:stdgo._internal.io.Io_Reader.Reader) {
        if (header != null) this.header = header;
        if (body != null) this.body = body;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Message(header, body);
    }
}
