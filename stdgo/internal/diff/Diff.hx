package stdgo.internal.diff;
@:structInit abstract T_pair(stdgo._internal.internal.diff.Diff_T_pair.T_pair) from stdgo._internal.internal.diff.Diff_T_pair.T_pair to stdgo._internal.internal.diff.Diff_T_pair.T_pair {
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = v;
        return v;
    }
    public var _y(get, set) : StdTypes.Int;
    function get__y():StdTypes.Int return this._y;
    function set__y(v:StdTypes.Int):StdTypes.Int {
        this._y = v;
        return v;
    }
    public function new(?_x:StdTypes.Int, ?_y:StdTypes.Int) this = new stdgo._internal.internal.diff.Diff_T_pair.T_pair(_x, _y);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class Diff {
    /**
        Diff returns an anchored diff of the two texts old and new
        in the “unified diff” format. If old and new are identical,
        Diff returns a nil slice (no output).
        
        Unix diff implementations typically look for a diff with
        the smallest number of lines inserted and removed,
        which can in the worst case take time quadratic in the
        number of lines in the texts. As a result, many implementations
        either can be made to run for a long time or cut off the search
        after a predetermined amount of work.
        
        In contrast, this implementation looks for a diff with the
        smallest number of “unique” lines inserted and removed,
        where unique means a line that appears just once in both old and new.
        We call this an “anchored diff” because the unique lines anchor
        the chosen matching regions. An anchored diff is usually clearer
        than a standard diff, because the algorithm does not try to
        reuse unrelated blank lines or closing braces.
        The algorithm also guarantees to run in O(n log n) time
        instead of the standard O(n²) time.
        
        Some systems call this approach a “patience diff,” named for
        the “patience sorting” algorithm, itself named for a solitaire card game.
        We avoid that name for two reasons. First, the name has been used
        for a few different variants of the algorithm, so it is imprecise.
        Second, the name is frequently interpreted as meaning that you have
        to wait longer (to be patient) for the diff, meaning that it is a slower algorithm,
        when in fact the algorithm is faster than the standard one.
    **/
    static public function diff(_oldName:String, _old:Array<std.UInt>, _newName:String, _new:Array<std.UInt>):Array<std.UInt> {
        final _old = ([for (i in _old) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _new = ([for (i in _new) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.internal.diff.Diff_diff.diff(_oldName, _old, _newName, _new)) i];
    }
}
