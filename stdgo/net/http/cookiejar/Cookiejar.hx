package stdgo.net.http.cookiejar;
typedef PublicSuffixList = stdgo._internal.net.http.cookiejar.Cookiejar_publicsuffixlist.PublicSuffixList;
typedef Options = stdgo._internal.net.http.cookiejar.Cookiejar_options.Options;
typedef Jar = stdgo._internal.net.http.cookiejar.Cookiejar_jar.Jar;
typedef OptionsPointer = stdgo._internal.net.http.cookiejar.Cookiejar_optionspointer.OptionsPointer;
typedef JarPointer = stdgo._internal.net.http.cookiejar.Cookiejar_jarpointer.JarPointer;
/**
    * Package cookiejar implements an in-memory RFC 6265-compliant http.CookieJar.
**/
class Cookiejar {
    /**
        * New returns a new cookie jar. A nil *Options is equivalent to a zero
        * Options.
    **/
    static public inline function new_(_o:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_options.Options>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_jar.Jar>; var _1 : stdgo.Error; } return stdgo._internal.net.http.cookiejar.Cookiejar_new_.new_(_o);
}
