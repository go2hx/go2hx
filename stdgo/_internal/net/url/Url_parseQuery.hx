package stdgo._internal.net.url;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
function parseQuery(_query:stdgo.GoString):{ var _0 : stdgo._internal.net.url.Url_Values.Values; var _1 : stdgo.Error; } {
        var _m = ((({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.url.Url_Values.Values) : stdgo._internal.net.url.Url_Values.Values);
        var _err = (stdgo._internal.net.url.Url__parseQuery._parseQuery(_m, _query?.__copy__()) : stdgo.Error);
        return { _0 : _m, _1 : _err };
    }
