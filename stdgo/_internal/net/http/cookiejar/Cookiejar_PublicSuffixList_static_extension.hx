package stdgo._internal.net.http.cookiejar;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.http.internal.ascii.Ascii;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
@:keep class PublicSuffixList_static_extension {
    @:interfacetypeffun
    static public function string(t:stdgo._internal.net.http.cookiejar.Cookiejar_PublicSuffixList.PublicSuffixList):stdgo.GoString return t.string();
    @:interfacetypeffun
    static public function publicSuffix(t:stdgo._internal.net.http.cookiejar.Cookiejar_PublicSuffixList.PublicSuffixList, _domain:stdgo.GoString):stdgo.GoString return t.publicSuffix(_domain);
}
