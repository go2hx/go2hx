package stdgo.testing;
@:structInit @:using(stdgo.testing.Testing.CoverBlock_static_extension) abstract CoverBlock(stdgo._internal.testing.Testing_CoverBlock.CoverBlock) from stdgo._internal.testing.Testing_CoverBlock.CoverBlock to stdgo._internal.testing.Testing_CoverBlock.CoverBlock {
    public var line0(get, set) : std.UInt;
    function get_line0():std.UInt return this.line0;
    function set_line0(v:std.UInt):std.UInt {
        this.line0 = (v : stdgo.GoUInt32);
        return v;
    }
    public var col0(get, set) : std.UInt;
    function get_col0():std.UInt return this.col0;
    function set_col0(v:std.UInt):std.UInt {
        this.col0 = (v : stdgo.GoUInt16);
        return v;
    }
    public var line1(get, set) : std.UInt;
    function get_line1():std.UInt return this.line1;
    function set_line1(v:std.UInt):std.UInt {
        this.line1 = (v : stdgo.GoUInt32);
        return v;
    }
    public var col1(get, set) : std.UInt;
    function get_col1():std.UInt return this.col1;
    function set_col1(v:std.UInt):std.UInt {
        this.col1 = (v : stdgo.GoUInt16);
        return v;
    }
    public var stmts(get, set) : std.UInt;
    function get_stmts():std.UInt return this.stmts;
    function set_stmts(v:std.UInt):std.UInt {
        this.stmts = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?line0:std.UInt, ?col0:std.UInt, ?line1:std.UInt, ?col1:std.UInt, ?stmts:std.UInt) this = new stdgo._internal.testing.Testing_CoverBlock.CoverBlock((line0 : stdgo.GoUInt32), (col0 : stdgo.GoUInt16), (line1 : stdgo.GoUInt32), (col1 : stdgo.GoUInt16), (stmts : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
