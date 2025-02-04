package stdgo._internal.net.url;
@:structInit @:using(stdgo._internal.net.url.Url_url_static_extension.URL_static_extension) class URL {
    public var scheme : stdgo.GoString = "";
    public var opaque : stdgo.GoString = "";
    public var user : stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo> = (null : stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo>);
    public var host : stdgo.GoString = "";
    public var path : stdgo.GoString = "";
    public var rawPath : stdgo.GoString = "";
    public var omitHost : Bool = false;
    public var forceQuery : Bool = false;
    public var rawQuery : stdgo.GoString = "";
    public var fragment : stdgo.GoString = "";
    public var rawFragment : stdgo.GoString = "";
    public function new(?scheme:stdgo.GoString, ?opaque:stdgo.GoString, ?user:stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo>, ?host:stdgo.GoString, ?path:stdgo.GoString, ?rawPath:stdgo.GoString, ?omitHost:Bool, ?forceQuery:Bool, ?rawQuery:stdgo.GoString, ?fragment:stdgo.GoString, ?rawFragment:stdgo.GoString) {
        if (scheme != null) this.scheme = scheme;
        if (opaque != null) this.opaque = opaque;
        if (user != null) this.user = user;
        if (host != null) this.host = host;
        if (path != null) this.path = path;
        if (rawPath != null) this.rawPath = rawPath;
        if (omitHost != null) this.omitHost = omitHost;
        if (forceQuery != null) this.forceQuery = forceQuery;
        if (rawQuery != null) this.rawQuery = rawQuery;
        if (fragment != null) this.fragment = fragment;
        if (rawFragment != null) this.rawFragment = rawFragment;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new URL(
scheme,
opaque,
user,
host,
path,
rawPath,
omitHost,
forceQuery,
rawQuery,
fragment,
rawFragment);
    }
}
