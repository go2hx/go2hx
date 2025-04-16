package stdgo.container.list;
typedef Element = stdgo._internal.container.list.List_element.Element;
typedef List_ = stdgo._internal.container.list.List_list.List;
typedef ElementPointer = stdgo._internal.container.list.List_elementpointer.ElementPointer;
typedef ListPointer = stdgo._internal.container.list.List_listpointer.ListPointer;
/**
    * Package list implements a doubly linked list.
    * 
    * To iterate over a list (where l is a *List):
    * 
    * 	for e := l.Front(); e != nil; e = e.Next() {
    * 		// do something with e.Value
    * 	}
**/
class List {
    /**
        * New returns an initialized list.
    **/
    static public inline function new_():stdgo.Ref<stdgo._internal.container.list.List_list.List> return stdgo._internal.container.list.List_new_.new_();
    static public inline function testList(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.container.list.List_testlist.testList(_t);
    static public inline function testExtending(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.container.list.List_testextending.testExtending(_t);
    static public inline function testRemove(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.container.list.List_testremove.testRemove(_t);
    static public inline function testIssue4103(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.container.list.List_testissue4103.testIssue4103(_t);
    static public inline function testIssue6349(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.container.list.List_testissue6349.testIssue6349(_t);
    static public inline function testMove(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.container.list.List_testmove.testMove(_t);
    /**
        * Test PushFront, PushBack, PushFrontList, PushBackList with uninitialized List
    **/
    static public inline function testZeroList(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.container.list.List_testzerolist.testZeroList(_t);
    /**
        * Test that a list l is not modified when calling InsertBefore with a mark that is not an element of l.
    **/
    static public inline function testInsertBeforeUnknownMark(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.container.list.List_testinsertbeforeunknownmark.testInsertBeforeUnknownMark(_t);
    /**
        * Test that a list l is not modified when calling InsertAfter with a mark that is not an element of l.
    **/
    static public inline function testInsertAfterUnknownMark(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.container.list.List_testinsertafterunknownmark.testInsertAfterUnknownMark(_t);
    /**
        * Test that a list l is not modified when calling MoveAfter or MoveBefore with a mark that is not an element of l.
    **/
    static public inline function testMoveUnknownMark(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.container.list.List_testmoveunknownmark.testMoveUnknownMark(_t);
}
