package stdgo._internal.mime;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.os.Os;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
function _initMimeForTests():stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        stdgo._internal.mime.Mime__mimeGlobs._mimeGlobs = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.mime.Mime__typeFiles._typeFiles = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("testdata/test.types" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        return ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            x.set((".T1" : stdgo.GoString), ("application/test" : stdgo.GoString));
x.set((".t2" : stdgo.GoString), ("text/test; charset=utf-8" : stdgo.GoString));
x.set((".png" : stdgo.GoString), ("image/png" : stdgo.GoString));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    }
