package stdgo._internal.math.big;
@:structInit @:using(stdgo._internal.math.big.Big_T_byteReader_static_extension.T_byteReader_static_extension) class T_byteReader {
    @:embedded
    public var scanState : stdgo._internal.fmt.Fmt_ScanState.ScanState = (null : stdgo._internal.fmt.Fmt_ScanState.ScanState);
    public function new(?scanState:stdgo._internal.fmt.Fmt_ScanState.ScanState) {
        if (scanState != null) this.scanState = scanState;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var read(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_read():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check3 (this.scanState ?? throw "null pointer derefrence").read;
    public var readRune(get, never) : () -> { var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readRune():() -> { var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:check3 (this.scanState ?? throw "null pointer derefrence").readRune;
    public var skipSpace(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_skipSpace():() -> Void return @:check3 (this.scanState ?? throw "null pointer derefrence").skipSpace;
    public var token(get, never) : (Bool, stdgo.GoInt32 -> Bool) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_token():(Bool, stdgo.GoInt32 -> Bool) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check3 (this.scanState ?? throw "null pointer derefrence").token;
    public var unreadRune(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_unreadRune():() -> stdgo.Error return @:check3 (this.scanState ?? throw "null pointer derefrence").unreadRune;
    public var width(get, never) : () -> { var _0 : stdgo.GoInt; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get_width():() -> { var _0 : stdgo.GoInt; var _1 : Bool; } return @:check3 (this.scanState ?? throw "null pointer derefrence").width;
    public function __copy__() {
        return new T_byteReader(scanState);
    }
}
