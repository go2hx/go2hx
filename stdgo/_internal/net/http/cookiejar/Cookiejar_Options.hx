package stdgo._internal.net.http.cookiejar;
@:structInit class Options {
    public var publicSuffixList : stdgo._internal.net.http.cookiejar.Cookiejar_PublicSuffixList.PublicSuffixList = (null : stdgo._internal.net.http.cookiejar.Cookiejar_PublicSuffixList.PublicSuffixList);
    public function new(?publicSuffixList:stdgo._internal.net.http.cookiejar.Cookiejar_PublicSuffixList.PublicSuffixList) {
        if (publicSuffixList != null) this.publicSuffixList = publicSuffixList;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Options(publicSuffixList);
    }
}
