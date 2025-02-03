package stdgo.container.ring;
class Ring_static_extension {
    static public function do_(_r:Ring_, _f:stdgo.AnyInterface -> Void):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring>);
        final _f = _f;
        stdgo._internal.container.ring.Ring_Ring_static_extension.Ring_static_extension.do_(_r, _f);
    }
    static public function len(_r:Ring_):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring>);
        return stdgo._internal.container.ring.Ring_Ring_static_extension.Ring_static_extension.len(_r);
    }
    static public function unlink(_r:Ring_, _n:StdTypes.Int):Ring_ {
        final _r = (_r : stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.container.ring.Ring_Ring_static_extension.Ring_static_extension.unlink(_r, _n);
    }
    static public function link(_r:Ring_, _s:Ring_):Ring_ {
        final _r = (_r : stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring>);
        final _s = (_s : stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring>);
        return stdgo._internal.container.ring.Ring_Ring_static_extension.Ring_static_extension.link(_r, _s);
    }
    static public function move(_r:Ring_, _n:StdTypes.Int):Ring_ {
        final _r = (_r : stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.container.ring.Ring_Ring_static_extension.Ring_static_extension.move(_r, _n);
    }
    static public function prev(_r:Ring_):Ring_ {
        final _r = (_r : stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring>);
        return stdgo._internal.container.ring.Ring_Ring_static_extension.Ring_static_extension.prev(_r);
    }
    static public function next(_r:Ring_):Ring_ {
        final _r = (_r : stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring>);
        return stdgo._internal.container.ring.Ring_Ring_static_extension.Ring_static_extension.next(_r);
    }
    static public function _init(_r:Ring_):Ring_ {
        final _r = (_r : stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring>);
        return stdgo._internal.container.ring.Ring_Ring_static_extension.Ring_static_extension._init(_r);
    }
}
