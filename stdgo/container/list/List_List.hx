package stdgo.container.list;
/**
    Package list implements a doubly linked list.
    
    To iterate over a list (where l is a *List):
    
    	for e := l.Front(); e != nil; e = e.Next() {
    		// do something with e.Value
    	}
**/
class List {
    /**
        New returns an initialized list.
    **/
    static public inline function new_():List_ {
        return stdgo._internal.container.list.List_new_.new_();
    }
}
