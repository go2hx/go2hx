package stdgo._internal.net.http.fcgi;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.os.Os;
import stdgo._internal.net.http.Http;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.http.cgi.Cgi;
import stdgo._internal.context.Context;
function _readString(_s:stdgo.Slice<stdgo.GoUInt8>, _size:stdgo.GoUInt32):stdgo.GoString {
        if ((_size > (_s.length : stdgo.GoUInt32) : Bool)) {
            return stdgo.Go.str()?.__copy__();
        };
        return ((_s.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
