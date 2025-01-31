package stdgo._internal.internal.xcoff;
import stdgo._internal.os.Os;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.debug.dwarf.Dwarf;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_Reloc_static_extension.Reloc_static_extension) class Reloc {
    public var virtualAddress : stdgo.GoUInt64 = 0;
    public var symbol : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>);
    public var signed : Bool = false;
    public var instructionFixed : Bool = false;
    public var length_ : stdgo.GoUInt8 = 0;
    public var type : stdgo.GoUInt8 = 0;
    public function new(?virtualAddress:stdgo.GoUInt64, ?symbol:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>, ?signed:Bool, ?instructionFixed:Bool, ?length_:stdgo.GoUInt8, ?type:stdgo.GoUInt8) {
        if (virtualAddress != null) this.virtualAddress = virtualAddress;
        if (symbol != null) this.symbol = symbol;
        if (signed != null) this.signed = signed;
        if (instructionFixed != null) this.instructionFixed = instructionFixed;
        if (length_ != null) this.length_ = length_;
        if (type != null) this.type = type;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Reloc(virtualAddress, symbol, signed, instructionFixed, length_, type);
    }
}
