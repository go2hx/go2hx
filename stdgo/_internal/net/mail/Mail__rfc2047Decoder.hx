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
var _rfc2047Decoder : stdgo._internal.mime.Mime_WordDecoder.WordDecoder = ({ charsetReader : function(_charset:stdgo.GoString, _input:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; } {
        return { _0 : (null : stdgo._internal.io.Io_Reader.Reader), _1 : stdgo.Go.asInterface((_charset : stdgo._internal.net.mail.Mail_T_charsetError.T_charsetError)) };
    } } : stdgo._internal.mime.Mime_WordDecoder.WordDecoder);
