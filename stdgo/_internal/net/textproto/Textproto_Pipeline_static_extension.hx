package stdgo._internal.net.textproto;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.Pipeline_asInterface) class Pipeline_static_extension {
    @:keep
    static public function endResponse( _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline>, _id:stdgo.GoUInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline> = _p;
        _p._response.end(_id);
    }
    @:keep
    static public function startResponse( _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline>, _id:stdgo.GoUInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline> = _p;
        _p._response.start(_id);
    }
    @:keep
    static public function endRequest( _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline>, _id:stdgo.GoUInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline> = _p;
        _p._request.end(_id);
    }
    @:keep
    static public function startRequest( _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline>, _id:stdgo.GoUInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline> = _p;
        _p._request.start(_id);
    }
    @:keep
    static public function next( _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline>):stdgo.GoUInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline> = _p;
        _p._mu.lock();
        var _id = (_p._id : stdgo.GoUInt);
        _p._id++;
        _p._mu.unlock();
        return _id;
    }
}
