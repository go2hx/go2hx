package stdgo.maps;
/**
    * Package maps defines various functions useful with maps of any type.
**/
class Maps {
    /**
        * Equal reports whether two maps contain the same key/value pairs.
        * Values are compared using ==.
    **/
    static public inline function equal(_m1:Dynamic, _m2:Dynamic):Bool {
        return stdgo._internal.maps.Maps_equal.equal(_m1, _m2);
    }
    /**
        * EqualFunc is like Equal, but compares values using eq.
        * Keys are still compared with ==.
    **/
    static public inline function equalFunc(_m1:Dynamic, _m2:Dynamic, _eq:(Dynamic, Dynamic) -> Bool):Bool {
        final _eq = _eq;
        return stdgo._internal.maps.Maps_equalfunc.equalFunc(_m1, _m2, _eq);
    }
    /**
        * Clone returns a copy of m.  This is a shallow clone:
        * the new keys and values are set using ordinary assignment.
    **/
    static public inline function clone(_m:Dynamic):Dynamic {
        return stdgo._internal.maps.Maps_clone.clone(_m);
    }
    /**
        * Copy copies all key/value pairs in src adding them to dst.
        * When a key in src is already present in dst,
        * the value in dst will be overwritten by the value associated
        * with the key in src.
    **/
    static public inline function copy(_dst:Dynamic, _src:Dynamic):Void {
        stdgo._internal.maps.Maps_copy.copy(_dst, _src);
    }
    /**
        * DeleteFunc deletes any key/value pairs from m for which del returns true.
    **/
    static public inline function deleteFunc(_m:Dynamic, _del:(Dynamic, Dynamic) -> Bool):Void {
        final _del = _del;
        stdgo._internal.maps.Maps_deletefunc.deleteFunc(_m, _del);
    }
}
