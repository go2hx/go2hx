package stdgo._internal.debug.pe;
@:structInit @:using(stdgo._internal.debug.pe.Pe_importdirectory_static_extension.ImportDirectory_static_extension) class ImportDirectory {
    public var originalFirstThunk : stdgo.GoUInt32 = 0;
    public var timeDateStamp : stdgo.GoUInt32 = 0;
    public var forwarderChain : stdgo.GoUInt32 = 0;
    public var name : stdgo.GoUInt32 = 0;
    public var firstThunk : stdgo.GoUInt32 = 0;
    public var _dll : stdgo.GoString = "";
    public function new(?originalFirstThunk:stdgo.GoUInt32, ?timeDateStamp:stdgo.GoUInt32, ?forwarderChain:stdgo.GoUInt32, ?name:stdgo.GoUInt32, ?firstThunk:stdgo.GoUInt32, ?_dll:stdgo.GoString) {
        if (originalFirstThunk != null) this.originalFirstThunk = originalFirstThunk;
        if (timeDateStamp != null) this.timeDateStamp = timeDateStamp;
        if (forwarderChain != null) this.forwarderChain = forwarderChain;
        if (name != null) this.name = name;
        if (firstThunk != null) this.firstThunk = firstThunk;
        if (_dll != null) this._dll = _dll;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ImportDirectory(originalFirstThunk, timeDateStamp, forwarderChain, name, firstThunk, _dll);
    }
}
