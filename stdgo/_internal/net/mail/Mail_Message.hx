package stdgo._internal.net.mail;
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
