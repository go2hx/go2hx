package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_UDPConn_static_extension.UDPConn_static_extension) class UDPConn {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function close():stdgo.Error return this.new.close();
    @:embedded
    public function file():{ var _0 : stdgo.Ref<stdgo._internal.os.Os_File.File>; var _1 : stdgo.Error; } return this.new.file();
    @:embedded
    public function localAddr():stdgo._internal.net.Net_Addr.Addr return this.new.localAddr();
    @:embedded
    public function read(_text:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.new.read(_text);
    @:embedded
    public function remoteAddr():stdgo._internal.net.Net_Addr.Addr return this.new.remoteAddr();
    @:embedded
    public function setDeadline(_t:stdgo._internal.time.Time_Time.Time):stdgo.Error return this.new.setDeadline(_t);
    @:embedded
    public function setReadBuffer(__0:stdgo.GoInt):stdgo.Error return this.new.setReadBuffer(__0);
    @:embedded
    public function setReadDeadline(_t:stdgo._internal.time.Time_Time.Time):stdgo.Error return this.new.setReadDeadline(_t);
    @:embedded
    public function setWriteBuffer(__0:stdgo.GoInt):stdgo.Error return this.new.setWriteBuffer(__0);
    @:embedded
    public function setWriteDeadline(_t:stdgo._internal.time.Time_Time.Time):stdgo.Error return this.new.setWriteDeadline(_t);
    @:embedded
    public function write(_text:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.new.write(_text);
    @:embedded
    public function _ok():Bool return this.new._ok();
    public function __copy__() {
        return new UDPConn();
    }
}
