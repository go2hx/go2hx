package stdgo.internal.coverage;
@:structInit @:using(stdgo.internal.coverage.Coverage.CoverableUnit_static_extension) abstract CoverableUnit(stdgo._internal.internal.coverage.Coverage_CoverableUnit.CoverableUnit) from stdgo._internal.internal.coverage.Coverage_CoverableUnit.CoverableUnit to stdgo._internal.internal.coverage.Coverage_CoverableUnit.CoverableUnit {
    public var stLine(get, set) : std.UInt;
    function get_stLine():std.UInt return this.stLine;
    function set_stLine(v:std.UInt):std.UInt {
        this.stLine = (v : stdgo.GoUInt32);
        return v;
    }
    public var stCol(get, set) : std.UInt;
    function get_stCol():std.UInt return this.stCol;
    function set_stCol(v:std.UInt):std.UInt {
        this.stCol = (v : stdgo.GoUInt32);
        return v;
    }
    public var enLine(get, set) : std.UInt;
    function get_enLine():std.UInt return this.enLine;
    function set_enLine(v:std.UInt):std.UInt {
        this.enLine = (v : stdgo.GoUInt32);
        return v;
    }
    public var enCol(get, set) : std.UInt;
    function get_enCol():std.UInt return this.enCol;
    function set_enCol(v:std.UInt):std.UInt {
        this.enCol = (v : stdgo.GoUInt32);
        return v;
    }
    public var nxStmts(get, set) : std.UInt;
    function get_nxStmts():std.UInt return this.nxStmts;
    function set_nxStmts(v:std.UInt):std.UInt {
        this.nxStmts = (v : stdgo.GoUInt32);
        return v;
    }
    public var parent(get, set) : std.UInt;
    function get_parent():std.UInt return this.parent;
    function set_parent(v:std.UInt):std.UInt {
        this.parent = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?stLine:std.UInt, ?stCol:std.UInt, ?enLine:std.UInt, ?enCol:std.UInt, ?nxStmts:std.UInt, ?parent:std.UInt) this = new stdgo._internal.internal.coverage.Coverage_CoverableUnit.CoverableUnit((stLine : stdgo.GoUInt32), (stCol : stdgo.GoUInt32), (enLine : stdgo.GoUInt32), (enCol : stdgo.GoUInt32), (nxStmts : stdgo.GoUInt32), (parent : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
