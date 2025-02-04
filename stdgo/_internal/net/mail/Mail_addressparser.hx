package stdgo._internal.net.mail;
@:structInit @:using(stdgo._internal.net.mail.Mail_addressparser_static_extension.AddressParser_static_extension) class AddressParser {
    public var wordDecoder : stdgo.Ref<stdgo._internal.mime.Mime_worddecoder.WordDecoder> = (null : stdgo.Ref<stdgo._internal.mime.Mime_worddecoder.WordDecoder>);
    public function new(?wordDecoder:stdgo.Ref<stdgo._internal.mime.Mime_worddecoder.WordDecoder>) {
        if (wordDecoder != null) this.wordDecoder = wordDecoder;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new AddressParser(wordDecoder);
    }
}
