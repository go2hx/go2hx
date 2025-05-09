package stdgo._internal.net.textproto;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.T_sequencer_asInterface) class T_sequencer_static_extension {
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_sequencer.T_sequencer>, _id:stdgo.GoUInt):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_sequencer.T_sequencer> = _s;
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/pipeline.go#L100"
        (@:checkr _s ?? throw "null pointer dereference")._mu.lock();
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/pipeline.go#L101"
        if ((@:checkr _s ?? throw "null pointer dereference")._id != (_id)) {
            //"file:///home/runner/.go/go1.21.3/src/net/textproto/pipeline.go#L102"
            (@:checkr _s ?? throw "null pointer dereference")._mu.unlock();
            //"file:///home/runner/.go/go1.21.3/src/net/textproto/pipeline.go#L103"
            throw stdgo.Go.toInterface(("out of sync" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/pipeline.go#L105"
        _id++;
        (@:checkr _s ?? throw "null pointer dereference")._id = _id;
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/pipeline.go#L107"
        if ((@:checkr _s ?? throw "null pointer dereference")._wait == null) {
            (@:checkr _s ?? throw "null pointer dereference")._wait = (({
                final x = new stdgo.GoMap.GoIntMap<stdgo.Chan<stdgo._internal.net.textproto.Textproto_t__struct_0.T__struct_0>>();
                x.__defaultValue__ = () -> (null : stdgo.Chan<stdgo._internal.net.textproto.Textproto_t__struct_0.T__struct_0>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoUInt, stdgo.Chan<stdgo._internal.net.textproto.Textproto_t__struct_0.T__struct_0>>) : stdgo.GoMap<stdgo.GoUInt, stdgo.Chan<stdgo._internal.net.textproto.Textproto_t__struct_0.T__struct_0>>);
        };
        var __tmp__ = ((@:checkr _s ?? throw "null pointer dereference")._wait != null && (@:checkr _s ?? throw "null pointer dereference")._wait.__exists__(_id) ? { _0 : (@:checkr _s ?? throw "null pointer dereference")._wait[_id], _1 : true } : { _0 : (null : stdgo.Chan<stdgo._internal.net.textproto.Textproto_t__struct_0.T__struct_0>), _1 : false }), _c:stdgo.Chan<stdgo._internal.net.textproto.Textproto_t__struct_0.T__struct_0> = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/pipeline.go#L111"
        if (_ok) {
            //"file:///home/runner/.go/go1.21.3/src/net/textproto/pipeline.go#L112"
            if ((@:checkr _s ?? throw "null pointer dereference")._wait != null) (@:checkr _s ?? throw "null pointer dereference")._wait.__remove__(_id);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/pipeline.go#L114"
        (@:checkr _s ?? throw "null pointer dereference")._mu.unlock();
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/pipeline.go#L115"
        if (_ok) {
            //"file:///home/runner/.go/go1.21.3/src/net/textproto/pipeline.go#L116"
            if (_c != null) _c.__close__();
        };
    }
    @:keep
    @:tdfield
    static public function start( _s:stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_sequencer.T_sequencer>, _id:stdgo.GoUInt):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_sequencer.T_sequencer> = _s;
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/pipeline.go#L82"
        (@:checkr _s ?? throw "null pointer dereference")._mu.lock();
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/pipeline.go#L83"
        if ((@:checkr _s ?? throw "null pointer dereference")._id == (_id)) {
            //"file:///home/runner/.go/go1.21.3/src/net/textproto/pipeline.go#L84"
            (@:checkr _s ?? throw "null pointer dereference")._mu.unlock();
            //"file:///home/runner/.go/go1.21.3/src/net/textproto/pipeline.go#L85"
            return;
        };
        var _c = (new stdgo.Chan<stdgo._internal.net.textproto.Textproto_t__struct_0.T__struct_0>(0, () -> ({  } : stdgo._internal.net.textproto.Textproto_t__struct_0.T__struct_0)) : stdgo.Chan<stdgo._internal.net.textproto.Textproto_t__struct_0.T__struct_0>);
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/pipeline.go#L88"
        if ((@:checkr _s ?? throw "null pointer dereference")._wait == null) {
            (@:checkr _s ?? throw "null pointer dereference")._wait = (({
                final x = new stdgo.GoMap.GoIntMap<stdgo.Chan<stdgo._internal.net.textproto.Textproto_t__struct_0.T__struct_0>>();
                x.__defaultValue__ = () -> (null : stdgo.Chan<stdgo._internal.net.textproto.Textproto_t__struct_0.T__struct_0>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoUInt, stdgo.Chan<stdgo._internal.net.textproto.Textproto_t__struct_0.T__struct_0>>) : stdgo.GoMap<stdgo.GoUInt, stdgo.Chan<stdgo._internal.net.textproto.Textproto_t__struct_0.T__struct_0>>);
        };
        (@:checkr _s ?? throw "null pointer dereference")._wait[_id] = _c;
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/pipeline.go#L92"
        (@:checkr _s ?? throw "null pointer dereference")._mu.unlock();
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/pipeline.go#L93"
        _c.__get__();
    }
}
