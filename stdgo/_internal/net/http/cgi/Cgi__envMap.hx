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
function _envMap(_env:stdgo.Slice<stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        var _m = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        for (__0 => _kv in _env) {
            {
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_kv?.__copy__(), ("=" : stdgo.GoString)), _k:stdgo.GoString = __tmp__._0, _v:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
                if (_ok) {
                    _m[_k] = _v?.__copy__();
                };
            };
        };
        return _m;
    }
