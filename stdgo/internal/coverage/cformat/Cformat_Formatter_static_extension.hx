package stdgo.internal.coverage.cformat;
class Formatter_static_extension {
    static public function emitFuncs(_fm:Formatter, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        final _fm = (_fm : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_Formatter.Formatter>);
        return stdgo._internal.internal.coverage.cformat.Cformat_Formatter_static_extension.Formatter_static_extension.emitFuncs(_fm, _w);
    }
    static public function emitPercent(_fm:Formatter, _w:stdgo._internal.io.Io_Writer.Writer, _covpkgs:String, _noteEmpty:Bool, _aggregate:Bool):stdgo.Error {
        final _fm = (_fm : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_Formatter.Formatter>);
        final _covpkgs = (_covpkgs : stdgo.GoString);
        return stdgo._internal.internal.coverage.cformat.Cformat_Formatter_static_extension.Formatter_static_extension.emitPercent(_fm, _w, _covpkgs, _noteEmpty, _aggregate);
    }
    static public function emitTextual(_fm:Formatter, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        final _fm = (_fm : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_Formatter.Formatter>);
        return stdgo._internal.internal.coverage.cformat.Cformat_Formatter_static_extension.Formatter_static_extension.emitTextual(_fm, _w);
    }
    static public function addUnit(_fm:Formatter, _file:String, _fname:String, _isfnlit:Bool, _unit:stdgo._internal.internal.coverage.Coverage_CoverableUnit.CoverableUnit, _count:std.UInt):Void {
        final _fm = (_fm : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_Formatter.Formatter>);
        final _file = (_file : stdgo.GoString);
        final _fname = (_fname : stdgo.GoString);
        final _count = (_count : stdgo.GoUInt32);
        stdgo._internal.internal.coverage.cformat.Cformat_Formatter_static_extension.Formatter_static_extension.addUnit(_fm, _file, _fname, _isfnlit, _unit, _count);
    }
    static public function setPackage(_fm:Formatter, _importpath:String):Void {
        final _fm = (_fm : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_Formatter.Formatter>);
        final _importpath = (_importpath : stdgo.GoString);
        stdgo._internal.internal.coverage.cformat.Cformat_Formatter_static_extension.Formatter_static_extension.setPackage(_fm, _importpath);
    }
}
