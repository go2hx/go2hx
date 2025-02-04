package stdgo._internal.math.big;
@:structInit @:using(stdgo._internal.math.big.Big_t_bytereader_static_extension.T_byteReader_static_extension) class T_byteReader {
    @:embedded
    public var scanState : stdgo._internal.fmt.Fmt_scanstate.ScanState = (null : stdgo._internal.fmt.Fmt_scanstate.ScanState);
    public function new(?scanState:stdgo._internal.fmt.Fmt_scanstate.ScanState) {
        if (scanState != null) this.scanState = scanState;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var read(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_read():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (this.scanState ?? throw "null pointer dereference").read;
    public var readRune(get, never) : () -> { var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readRune():() -> { var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:check31 (this.scanState ?? throw "null pointer dereference").readRune;
    public var skipSpace(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_skipSpace():() -> Void return @:check31 (this.scanState ?? throw "null pointer dereference").skipSpace;
    public var token(get, never) : (Bool, stdgo.GoInt32 -> Bool) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_token():(Bool, stdgo.GoInt32 -> Bool) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check31 (this.scanState ?? throw "null pointer dereference").token;
    public var unreadRune(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_unreadRune():() -> stdgo.Error return @:check31 (this.scanState ?? throw "null pointer dereference").unreadRune;
    public var width(get, never) : () -> { var _0 : stdgo.GoInt; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get_width():() -> { var _0 : stdgo.GoInt; var _1 : Bool; } return @:check31 (this.scanState ?? throw "null pointer dereference").width;
    public function __copy__() {
        return new T_byteReader(scanState);
    }
}
