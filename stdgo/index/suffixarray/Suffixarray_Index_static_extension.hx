package stdgo.index.suffixarray;
class Index_static_extension {
    static public function findAllIndex(_x:Index, _r:stdgo._internal.regexp.Regexp_Regexp.Regexp, _n:StdTypes.Int):Array<Array<StdTypes.Int>> {
        final _x = (_x : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_Index.Index>);
        final _r = (_r : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.index.suffixarray.Suffixarray_Index_static_extension.Index_static_extension.findAllIndex(_x, _r, _n)) [for (i in i) i]];
    }
    static public function lookup(_x:Index, _s:Array<std.UInt>, _n:StdTypes.Int):Array<StdTypes.Int> {
        final _x = (_x : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_Index.Index>);
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.index.suffixarray.Suffixarray_Index_static_extension.Index_static_extension.lookup(_x, _s, _n)) i];
    }
    static public function _lookupAll(_x:Index, _s:Array<std.UInt>):T_ints {
        final _x = (_x : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_Index.Index>);
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.index.suffixarray.Suffixarray_Index_static_extension.Index_static_extension._lookupAll(_x, _s);
    }
    static public function _at(_x:Index, _i:StdTypes.Int):Array<std.UInt> {
        final _x = (_x : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_Index.Index>);
        final _i = (_i : stdgo.GoInt);
        return [for (i in stdgo._internal.index.suffixarray.Suffixarray_Index_static_extension.Index_static_extension._at(_x, _i)) i];
    }
    static public function bytes(_x:Index):Array<std.UInt> {
        final _x = (_x : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_Index.Index>);
        return [for (i in stdgo._internal.index.suffixarray.Suffixarray_Index_static_extension.Index_static_extension.bytes(_x)) i];
    }
    static public function write(_x:Index, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        final _x = (_x : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_Index.Index>);
        return stdgo._internal.index.suffixarray.Suffixarray_Index_static_extension.Index_static_extension.write(_x, _w);
    }
    static public function read(_x:Index, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Error {
        final _x = (_x : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_Index.Index>);
        return stdgo._internal.index.suffixarray.Suffixarray_Index_static_extension.Index_static_extension.read(_x, _r);
    }
}
