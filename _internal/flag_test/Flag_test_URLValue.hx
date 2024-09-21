package _internal.flag_test;
import stdgo._internal.flag.Flag;
@:structInit @:using(_internal.flag_test.Flag_test_URLValue_static_extension.URLValue_static_extension) class URLValue {
    public var url : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = (null : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
    public function new(?url:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>) {
        if (url != null) this.url = url;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new URLValue(url);
    }
}
