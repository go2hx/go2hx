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
function _initMimeUnix():Void {
        for (__0 => _filename in stdgo._internal.mime.Mime__mimeGlobs._mimeGlobs) {
            {
                var _err = (stdgo._internal.mime.Mime__loadMimeGlobsFile._loadMimeGlobsFile(_filename?.__copy__()) : stdgo.Error);
                if (_err == null) {
                    return;
                };
            };
        };
        for (__1 => _filename in stdgo._internal.mime.Mime__typeFiles._typeFiles) {
            stdgo._internal.mime.Mime__loadMimeFile._loadMimeFile(_filename?.__copy__());
        };
    }
