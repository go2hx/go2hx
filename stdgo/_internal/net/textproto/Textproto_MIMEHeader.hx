package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
@:named @:using(stdgo._internal.net.textproto.Textproto_MIMEHeader_static_extension.MIMEHeader_static_extension) typedef MIMEHeader = stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>;
