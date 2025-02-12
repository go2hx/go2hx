package internal.stringslite;
/**
    * Package stringslite implements a subset of strings,
    * only using packages that may be imported by "os".
    * 
    * Tests for these functions are in the strings package.
**/
class Stringslite {
    static public inline function hasPrefix(_s:String, _prefix:String):Bool {
        final _s = (_s : stdgo.GoString);
        final _prefix = (_prefix : stdgo.GoString);
        return _internal.internal.stringslite.Stringslite_hasprefix.hasPrefix(_s, _prefix);
    }
    static public inline function hasSuffix(_s:String, _suffix:String):Bool {
        final _s = (_s : stdgo.GoString);
        final _suffix = (_suffix : stdgo.GoString);
        return _internal.internal.stringslite.Stringslite_hassuffix.hasSuffix(_s, _suffix);
    }
    static public inline function indexByte(_s:String, _c:std.UInt):StdTypes.Int {
        final _s = (_s : stdgo.GoString);
        final _c = (_c : stdgo.GoUInt8);
        return _internal.internal.stringslite.Stringslite_indexbyte.indexByte(_s, _c);
    }
    static public inline function index(_s:String, _substr:String):StdTypes.Int {
        final _s = (_s : stdgo.GoString);
        final _substr = (_substr : stdgo.GoString);
        return _internal.internal.stringslite.Stringslite_index.index(_s, _substr);
    }
    static public inline function cut(_s:String, _sep:String):stdgo.Tuple.Tuple3<String, String, Bool> {
        final _s = (_s : stdgo.GoString);
        final _sep = (_sep : stdgo.GoString);
        return {
            final obj = _internal.internal.stringslite.Stringslite_cut.cut(_s, _sep);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public inline function cutPrefix(_s:String, _prefix:String):stdgo.Tuple<String, Bool> {
        final _s = (_s : stdgo.GoString);
        final _prefix = (_prefix : stdgo.GoString);
        return {
            final obj = _internal.internal.stringslite.Stringslite_cutprefix.cutPrefix(_s, _prefix);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function cutSuffix(_s:String, _suffix:String):stdgo.Tuple<String, Bool> {
        final _s = (_s : stdgo.GoString);
        final _suffix = (_suffix : stdgo.GoString);
        return {
            final obj = _internal.internal.stringslite.Stringslite_cutsuffix.cutSuffix(_s, _suffix);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function trimPrefix(_s:String, _prefix:String):String {
        final _s = (_s : stdgo.GoString);
        final _prefix = (_prefix : stdgo.GoString);
        return _internal.internal.stringslite.Stringslite_trimprefix.trimPrefix(_s, _prefix);
    }
    static public inline function trimSuffix(_s:String, _suffix:String):String {
        final _s = (_s : stdgo.GoString);
        final _suffix = (_suffix : stdgo.GoString);
        return _internal.internal.stringslite.Stringslite_trimsuffix.trimSuffix(_s, _suffix);
    }
    static public inline function clone(_s:String):String {
        final _s = (_s : stdgo.GoString);
        return _internal.internal.stringslite.Stringslite_clone.clone(_s);
    }
}
