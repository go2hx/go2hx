package stdgo._internal.math.big;
@:structInit @:using(stdgo._internal.math.big.Big_T_byteReader_static_extension.T_byteReader_static_extension) class T_byteReader {
    @:embedded
    public var scanState : stdgo._internal.fmt.Fmt_ScanState.ScanState = (null : stdgo._internal.fmt.Fmt_ScanState.ScanState);
    public function new(?scanState:stdgo._internal.fmt.Fmt_ScanState.ScanState) {
        if (scanState != null) this.scanState = scanState;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function read(_buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.scanState.read(_buf);
    @:embedded
    public function readRune():{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return this.scanState.readRune();
    @:embedded
    public function skipSpace() this.scanState.skipSpace();
    @:embedded
    public function token(_skipSpace:Bool, _f:stdgo.GoInt32 -> Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return this.scanState.token(_skipSpace, _f);
    @:embedded
    public function unreadRune():stdgo.Error return this.scanState.unreadRune();
    @:embedded
    public function width():{ var _0 : stdgo.GoInt; var _1 : Bool; } return this.scanState.width();
    public function __copy__() {
        return new T_byteReader(scanState);
    }
}
