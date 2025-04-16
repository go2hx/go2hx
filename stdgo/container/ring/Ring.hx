package stdgo.container.ring;
typedef Ring_ = stdgo._internal.container.ring.Ring_ring.Ring;
typedef RingPointer = stdgo._internal.container.ring.Ring_ringpointer.RingPointer;
/**
    * Package ring implements operations on circular lists.
**/
class Ring {
    /**
        * New creates a ring of n elements.
    **/
    static public inline function new_(_n:stdgo.GoInt):stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> return stdgo._internal.container.ring.Ring_new_.new_(_n);
    static public inline function testCornerCases(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.container.ring.Ring_testcornercases.testCornerCases(_t);
    static public inline function testNew(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.container.ring.Ring_testnew.testNew(_t);
    static public inline function testLink1(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.container.ring.Ring_testlink1.testLink1(_t);
    static public inline function testLink2(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.container.ring.Ring_testlink2.testLink2(_t);
    static public inline function testLink3(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.container.ring.Ring_testlink3.testLink3(_t);
    static public inline function testUnlink(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.container.ring.Ring_testunlink.testUnlink(_t);
    static public inline function testLinkUnlink(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.container.ring.Ring_testlinkunlink.testLinkUnlink(_t);
    /**
        * Test that calling Move() on an empty Ring initializes it.
    **/
    static public inline function testMoveEmptyRing(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.container.ring.Ring_testmoveemptyring.testMoveEmptyRing(_t);
}
