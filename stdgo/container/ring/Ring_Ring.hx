package stdgo.container.ring;
/**
    Package ring implements operations on circular lists.
**/
class Ring {
    /**
        New creates a ring of n elements.
    **/
    static public inline function new_(_n:StdTypes.Int):Ring_ {
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.container.ring.Ring_new_.new_(_n);
    }
}
