package stdgo._internal.net.rpc;
import stdgo._internal.errors.Errors;
import stdgo._internal.html.template.Template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.encoding.gob.Gob;
import stdgo._internal.net.Net;
import stdgo._internal.io.Io;
import stdgo._internal.net.http.Http;
import stdgo._internal.go.token.Token;
import stdgo._internal.log.Log;
import stdgo._internal.sort.Sort;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
function _isExportedOrBuiltinType(_t:stdgo._internal.reflect.Reflect_Type_.Type_):Bool {
        while (_t.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            _t = _t.elem();
        };
        return (stdgo._internal.go.token.Token_isExported.isExported(_t.name()?.__copy__()) || (_t.pkgPath() == stdgo.Go.str()) : Bool);
    }
