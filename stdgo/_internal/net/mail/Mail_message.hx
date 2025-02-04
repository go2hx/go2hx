package stdgo._internal.net.mail;
@:structInit @:using(stdgo._internal.net.mail.Mail_message_static_extension.Message_static_extension) class Message {
    public var header : stdgo._internal.net.mail.Mail_header.Header = (null : stdgo._internal.net.mail.Mail_header.Header);
    public var body : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public function new(?header:stdgo._internal.net.mail.Mail_header.Header, ?body:stdgo._internal.io.Io_reader.Reader) {
        if (header != null) this.header = header;
        if (body != null) this.body = body;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Message(header, body);
    }
}
