package stdgo._internal.debug.pe;
@:structInit @:using(stdgo._internal.debug.pe.Pe_coffsymbolauxformat5_static_extension.COFFSymbolAuxFormat5_static_extension) class COFFSymbolAuxFormat5 {
    public var size : stdgo.GoUInt32 = 0;
    public var numRelocs : stdgo.GoUInt16 = 0;
    public var numLineNumbers : stdgo.GoUInt16 = 0;
    public var checksum : stdgo.GoUInt32 = 0;
    public var secNum : stdgo.GoUInt16 = 0;
    public var selection : stdgo.GoUInt8 = 0;
    @:optional
    public var __1 : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(3, 3).__setNumber32__();
    public function new(?size:stdgo.GoUInt32, ?numRelocs:stdgo.GoUInt16, ?numLineNumbers:stdgo.GoUInt16, ?checksum:stdgo.GoUInt32, ?secNum:stdgo.GoUInt16, ?selection:stdgo.GoUInt8, ?__1:stdgo.GoArray<stdgo.GoUInt8>) {
        if (size != null) this.size = size;
        if (numRelocs != null) this.numRelocs = numRelocs;
        if (numLineNumbers != null) this.numLineNumbers = numLineNumbers;
        if (checksum != null) this.checksum = checksum;
        if (secNum != null) this.secNum = secNum;
        if (selection != null) this.selection = selection;
        if (__1 != null) this.__1 = __1;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new COFFSymbolAuxFormat5(size, numRelocs, numLineNumbers, checksum, secNum, selection, __1);
    }
}
