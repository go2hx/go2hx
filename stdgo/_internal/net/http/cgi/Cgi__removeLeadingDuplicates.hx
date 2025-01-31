package stdgo._internal.net.http.cgi;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
import stdgo._internal.errors.Errors;
import stdgo._internal.net.http.Http;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.net.url.Url;
import stdgo._internal.net.Net;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.filepath.Filepath;
import _internal.golang_dot_org.x.net.http.httpguts.Httpguts;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.log.Log;
function _removeLeadingDuplicates(_env:stdgo.Slice<stdgo.GoString>):stdgo.Slice<stdgo.GoString> {
        var _ret = (null : stdgo.Slice<stdgo.GoString>);
        for (_i => _e in _env) {
            var _found = (false : Bool);
            {
                var _eq = (stdgo._internal.strings.Strings_indexByte.indexByte(_e?.__copy__(), (61 : stdgo.GoUInt8)) : stdgo.GoInt);
                if (_eq != ((-1 : stdgo.GoInt))) {
                    var _keq = ((_e.__slice__(0, (_eq + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    for (__0 => _e2 in (_env.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
                        if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_e2?.__copy__(), _keq?.__copy__())) {
                            _found = true;
                            break;
                        };
                    };
                };
            };
            if (!_found) {
                _ret = (_ret.__append__(_e?.__copy__()));
            };
        };
        return _ret;
    }
