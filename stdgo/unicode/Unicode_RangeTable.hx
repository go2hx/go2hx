package stdgo.unicode;
@:structInit @:using(stdgo.unicode.Unicode.RangeTable_static_extension) abstract RangeTable(stdgo._internal.unicode.Unicode_RangeTable.RangeTable) from stdgo._internal.unicode.Unicode_RangeTable.RangeTable to stdgo._internal.unicode.Unicode_RangeTable.RangeTable {
    public var r16(get, set) : Array<Range16>;
    function get_r16():Array<Range16> return [for (i in this.r16) i];
    function set_r16(v:Array<Range16>):Array<Range16> {
        this.r16 = ([for (i in v) i] : stdgo.Slice<stdgo._internal.unicode.Unicode_Range16.Range16>);
        return v;
    }
    public var r32(get, set) : Array<Range32>;
    function get_r32():Array<Range32> return [for (i in this.r32) i];
    function set_r32(v:Array<Range32>):Array<Range32> {
        this.r32 = ([for (i in v) i] : stdgo.Slice<stdgo._internal.unicode.Unicode_Range32.Range32>);
        return v;
    }
    public var latinOffset(get, set) : StdTypes.Int;
    function get_latinOffset():StdTypes.Int return this.latinOffset;
    function set_latinOffset(v:StdTypes.Int):StdTypes.Int {
        this.latinOffset = (v : stdgo.GoInt);
        return v;
    }
    public function new(?r16:Array<Range16>, ?r32:Array<Range32>, ?latinOffset:StdTypes.Int) this = new stdgo._internal.unicode.Unicode_RangeTable.RangeTable(([for (i in r16) i] : stdgo.Slice<stdgo._internal.unicode.Unicode_Range16.Range16>), ([for (i in r32) i] : stdgo.Slice<stdgo._internal.unicode.Unicode_Range32.Range32>), (latinOffset : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
