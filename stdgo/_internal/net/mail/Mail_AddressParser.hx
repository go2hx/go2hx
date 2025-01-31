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
@:structInit @:using(stdgo._internal.net.mail.Mail_AddressParser_static_extension.AddressParser_static_extension) class AddressParser {
    public var wordDecoder : stdgo.Ref<stdgo._internal.mime.Mime_WordDecoder.WordDecoder> = (null : stdgo.Ref<stdgo._internal.mime.Mime_WordDecoder.WordDecoder>);
    public function new(?wordDecoder:stdgo.Ref<stdgo._internal.mime.Mime_WordDecoder.WordDecoder>) {
        if (wordDecoder != null) this.wordDecoder = wordDecoder;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new AddressParser(wordDecoder);
    }
}
