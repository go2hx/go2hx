package stdgo.net.mail;
@:structInit @:using(stdgo.net.mail.Mail.AddressParser_static_extension) abstract AddressParser(stdgo._internal.net.mail.Mail_AddressParser.AddressParser) from stdgo._internal.net.mail.Mail_AddressParser.AddressParser to stdgo._internal.net.mail.Mail_AddressParser.AddressParser {
    public var wordDecoder(get, set) : stdgo._internal.mime.Mime_WordDecoder.WordDecoder;
    function get_wordDecoder():stdgo._internal.mime.Mime_WordDecoder.WordDecoder return this.wordDecoder;
    function set_wordDecoder(v:stdgo._internal.mime.Mime_WordDecoder.WordDecoder):stdgo._internal.mime.Mime_WordDecoder.WordDecoder {
        this.wordDecoder = (v : stdgo.Ref<stdgo._internal.mime.Mime_WordDecoder.WordDecoder>);
        return v;
    }
    public function new(?wordDecoder:stdgo._internal.mime.Mime_WordDecoder.WordDecoder) this = new stdgo._internal.net.mail.Mail_AddressParser.AddressParser((wordDecoder : stdgo.Ref<stdgo._internal.mime.Mime_WordDecoder.WordDecoder>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
