package stdgo._internal.net.textproto;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.T_sequencer_asInterface) class T_sequencer_static_extension {
    @:keep
    static public function end( _s:stdgo.Ref<stdgo._internal.net.textproto.Textproto_T_sequencer.T_sequencer>, _id:stdgo.GoUInt):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.textproto.Textproto_T_sequencer.T_sequencer> = _s;
        _s._mu.lock();
        if (_s._id != (_id)) {
            _s._mu.unlock();
            throw stdgo.Go.toInterface(("out of sync" : stdgo.GoString));
        };
        _id++;
        _s._id = _id;
        if (_s._wait == null) {
            _s._wait = ({
                final x = new stdgo.GoMap.GoIntMap<stdgo.Chan<stdgo._internal.net.textproto.Textproto_T__struct_0.T__struct_0>>();
                x.__defaultValue__ = () -> (null : stdgo.Chan<stdgo._internal.net.textproto.Textproto_T__struct_0.T__struct_0>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoUInt, stdgo.Chan<stdgo._internal.net.textproto.Textproto_T__struct_0.T__struct_0>>);
        };
        var __tmp__ = (_s._wait != null && _s._wait.exists(_id) ? { _0 : _s._wait[_id], _1 : true } : { _0 : (null : stdgo.Chan<stdgo._internal.net.textproto.Textproto_T__struct_0.T__struct_0>), _1 : false }), _c:stdgo.Chan<stdgo._internal.net.textproto.Textproto_T__struct_0.T__struct_0> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (_ok) {
            if (_s._wait != null) _s._wait.remove(_id);
        };
        _s._mu.unlock();
        if (_ok) {
            if (_c != null) _c.__close__();
        };
    }
    @:keep
    static public function start( _s:stdgo.Ref<stdgo._internal.net.textproto.Textproto_T_sequencer.T_sequencer>, _id:stdgo.GoUInt):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.textproto.Textproto_T_sequencer.T_sequencer> = _s;
        _s._mu.lock();
        if (_s._id == (_id)) {
            _s._mu.unlock();
            return;
        };
        var _c = (new stdgo.Chan<stdgo._internal.net.textproto.Textproto_T__struct_0.T__struct_0>(0, () -> ({  } : stdgo._internal.net.textproto.Textproto_T__struct_0.T__struct_0)) : stdgo.Chan<stdgo._internal.net.textproto.Textproto_T__struct_0.T__struct_0>);
        if (_s._wait == null) {
            _s._wait = ({
                final x = new stdgo.GoMap.GoIntMap<stdgo.Chan<stdgo._internal.net.textproto.Textproto_T__struct_0.T__struct_0>>();
                x.__defaultValue__ = () -> (null : stdgo.Chan<stdgo._internal.net.textproto.Textproto_T__struct_0.T__struct_0>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoUInt, stdgo.Chan<stdgo._internal.net.textproto.Textproto_T__struct_0.T__struct_0>>);
        };
        _s._wait[_id] = _c;
        _s._mu.unlock();
        _c.__get__();
    }
}
