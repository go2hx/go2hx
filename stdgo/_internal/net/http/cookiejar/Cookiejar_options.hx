package stdgo._internal.net.http.cookiejar;
@:structInit @:using(stdgo._internal.net.http.cookiejar.Cookiejar_options_static_extension.Options_static_extension) class Options {
    public var publicSuffixList : stdgo._internal.net.http.cookiejar.Cookiejar_publicsuffixlist.PublicSuffixList = (null : stdgo._internal.net.http.cookiejar.Cookiejar_publicsuffixlist.PublicSuffixList);
    public function new(?publicSuffixList:stdgo._internal.net.http.cookiejar.Cookiejar_publicsuffixlist.PublicSuffixList) {
        if (publicSuffixList != null) this.publicSuffixList = publicSuffixList;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Options(publicSuffixList);
    }
}
