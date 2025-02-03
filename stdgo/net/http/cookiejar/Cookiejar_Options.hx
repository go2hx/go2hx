package stdgo.net.http.cookiejar;
@:structInit @:using(stdgo.net.http.cookiejar.Cookiejar.Options_static_extension) abstract Options(stdgo._internal.net.http.cookiejar.Cookiejar_Options.Options) from stdgo._internal.net.http.cookiejar.Cookiejar_Options.Options to stdgo._internal.net.http.cookiejar.Cookiejar_Options.Options {
    public var publicSuffixList(get, set) : PublicSuffixList;
    function get_publicSuffixList():PublicSuffixList return this.publicSuffixList;
    function set_publicSuffixList(v:PublicSuffixList):PublicSuffixList {
        this.publicSuffixList = v;
        return v;
    }
    public function new(?publicSuffixList:PublicSuffixList) this = new stdgo._internal.net.http.cookiejar.Cookiejar_Options.Options(publicSuffixList);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
