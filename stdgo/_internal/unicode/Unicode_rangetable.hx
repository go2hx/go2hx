package stdgo._internal.unicode;
@:structInit @:using(stdgo._internal.unicode.Unicode_rangetable_static_extension.RangeTable_static_extension) class RangeTable {
    public var r16 : stdgo.Slice<stdgo._internal.unicode.Unicode_range16.Range16> = (null : stdgo.Slice<stdgo._internal.unicode.Unicode_range16.Range16>);
    public var r32 : stdgo.Slice<stdgo._internal.unicode.Unicode_range32.Range32> = (null : stdgo.Slice<stdgo._internal.unicode.Unicode_range32.Range32>);
    public var latinOffset : stdgo.GoInt = 0;
    public function new(?r16:stdgo.Slice<stdgo._internal.unicode.Unicode_range16.Range16>, ?r32:stdgo.Slice<stdgo._internal.unicode.Unicode_range32.Range32>, ?latinOffset:stdgo.GoInt) {
        if (r16 != null) this.r16 = r16;
        if (r32 != null) this.r32 = r32;
        if (latinOffset != null) this.latinOffset = latinOffset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RangeTable(r16, r32, latinOffset);
    }
}
