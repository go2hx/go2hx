package stdgo._internal.os.exec;
@:structInit @:using(stdgo._internal.os.exec.Exec_t_prefixsuffixsaver_static_extension.T_prefixSuffixSaver_static_extension) class T_prefixSuffixSaver {
    public var n : stdgo.GoInt = 0;
    public var _prefix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _suffix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _suffixOff : stdgo.GoInt = 0;
    public var _skipped : stdgo.GoInt64 = 0;
    public function new(?n:stdgo.GoInt, ?_prefix:stdgo.Slice<stdgo.GoUInt8>, ?_suffix:stdgo.Slice<stdgo.GoUInt8>, ?_suffixOff:stdgo.GoInt, ?_skipped:stdgo.GoInt64) {
        if (n != null) this.n = n;
        if (_prefix != null) this._prefix = _prefix;
        if (_suffix != null) this._suffix = _suffix;
        if (_suffixOff != null) this._suffixOff = _suffixOff;
        if (_skipped != null) this._skipped = _skipped;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_prefixSuffixSaver(n, _prefix, _suffix, _suffixOff, _skipped);
    }
}
