package stdgo.net.http;
class Pusher_static_extension {
    static public function push(t:stdgo._internal.net.http.Http_Pusher.Pusher, _target:String, _opts:PushOptions):stdgo.Error {
        final _target = (_target : stdgo.GoString);
        final _opts = (_opts : stdgo.Ref<stdgo._internal.net.http.Http_PushOptions.PushOptions>);
        return stdgo._internal.net.http.Http_Pusher_static_extension.Pusher_static_extension.push(t, _target, _opts);
    }
}
