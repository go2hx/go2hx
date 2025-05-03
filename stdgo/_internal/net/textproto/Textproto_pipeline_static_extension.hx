package stdgo._internal.net.textproto;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.Pipeline_asInterface) class Pipeline_static_extension {
    @:keep
    @:tdfield
    static public function endResponse( _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_pipeline.Pipeline>, _id:stdgo.GoUInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_pipeline.Pipeline> = _p;
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/pipeline.go#L65"
        (@:checkr _p ?? throw "null pointer dereference")._response.end(_id);
    }
    @:keep
    @:tdfield
    static public function startResponse( _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_pipeline.Pipeline>, _id:stdgo.GoUInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_pipeline.Pipeline> = _p;
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/pipeline.go#L59"
        (@:checkr _p ?? throw "null pointer dereference")._response.start(_id);
    }
    @:keep
    @:tdfield
    static public function endRequest( _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_pipeline.Pipeline>, _id:stdgo.GoUInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_pipeline.Pipeline> = _p;
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/pipeline.go#L53"
        (@:checkr _p ?? throw "null pointer dereference")._request.end(_id);
    }
    @:keep
    @:tdfield
    static public function startRequest( _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_pipeline.Pipeline>, _id:stdgo.GoUInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_pipeline.Pipeline> = _p;
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/pipeline.go#L47"
        (@:checkr _p ?? throw "null pointer dereference")._request.start(_id);
    }
    @:keep
    @:tdfield
    static public function next( _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_pipeline.Pipeline>):stdgo.GoUInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_pipeline.Pipeline> = _p;
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/pipeline.go#L37"
        (@:checkr _p ?? throw "null pointer dereference")._mu.lock();
        var _id = ((@:checkr _p ?? throw "null pointer dereference")._id : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/pipeline.go#L39"
        (@:checkr _p ?? throw "null pointer dereference")._id++;
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/pipeline.go#L40"
        (@:checkr _p ?? throw "null pointer dereference")._mu.unlock();
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/pipeline.go#L41"
        return _id;
    }
}
