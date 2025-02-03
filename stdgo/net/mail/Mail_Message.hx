package stdgo.net.mail;
@:structInit @:using(stdgo.net.mail.Mail.Message_static_extension) abstract Message(stdgo._internal.net.mail.Mail_Message.Message) from stdgo._internal.net.mail.Mail_Message.Message to stdgo._internal.net.mail.Mail_Message.Message {
    public var header(get, set) : Header;
    function get_header():Header return this.header;
    function set_header(v:Header):Header {
        this.header = v;
        return v;
    }
    public var body(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get_body():stdgo._internal.io.Io_Reader.Reader return this.body;
    function set_body(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this.body = v;
        return v;
    }
    public function new(?header:Header, ?body:stdgo._internal.io.Io_Reader.Reader) this = new stdgo._internal.net.mail.Mail_Message.Message(header, body);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
