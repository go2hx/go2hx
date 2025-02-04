package stdgo._internal.internal.coverage;
@:structInit @:using(stdgo._internal.internal.coverage.Coverage_coverableunit_static_extension.CoverableUnit_static_extension) class CoverableUnit {
    public var stLine : stdgo.GoUInt32 = 0;
    public var stCol : stdgo.GoUInt32 = 0;
    public var enLine : stdgo.GoUInt32 = 0;
    public var enCol : stdgo.GoUInt32 = 0;
    public var nxStmts : stdgo.GoUInt32 = 0;
    public var parent : stdgo.GoUInt32 = 0;
    public function new(?stLine:stdgo.GoUInt32, ?stCol:stdgo.GoUInt32, ?enLine:stdgo.GoUInt32, ?enCol:stdgo.GoUInt32, ?nxStmts:stdgo.GoUInt32, ?parent:stdgo.GoUInt32) {
        if (stLine != null) this.stLine = stLine;
        if (stCol != null) this.stCol = stCol;
        if (enLine != null) this.enLine = enLine;
        if (enCol != null) this.enCol = enCol;
        if (nxStmts != null) this.nxStmts = nxStmts;
        if (parent != null) this.parent = parent;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CoverableUnit(stLine, stCol, enLine, enCol, nxStmts, parent);
    }
}
