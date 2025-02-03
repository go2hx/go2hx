package stdgo.net.http.cookiejar;
/**
    Package cookiejar implements an in-memory RFC 6265-compliant http.CookieJar.
**/
class Cookiejar {
    /**
        New returns a new cookie jar. A nil *Options is equivalent to a zero
        Options.
    **/
    static public inline function new_(_o:Options):stdgo.Tuple<Jar, stdgo.Error> {
        final _o = (_o : stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_Options.Options>);
        return {
            final obj = stdgo._internal.net.http.cookiejar.Cookiejar_new_.new_(_o);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
