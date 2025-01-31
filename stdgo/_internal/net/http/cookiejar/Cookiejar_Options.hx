package stdgo._internal.net.http.cookiejar;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.http.internal.ascii.Ascii;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.net.http.cookiejar.Cookiejar_Options_static_extension.Options_static_extension) class Options {
    public var publicSuffixList : stdgo._internal.net.http.cookiejar.Cookiejar_PublicSuffixList.PublicSuffixList = (null : stdgo._internal.net.http.cookiejar.Cookiejar_PublicSuffixList.PublicSuffixList);
    public function new(?publicSuffixList:stdgo._internal.net.http.cookiejar.Cookiejar_PublicSuffixList.PublicSuffixList) {
        if (publicSuffixList != null) this.publicSuffixList = publicSuffixList;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Options(publicSuffixList);
    }
}
