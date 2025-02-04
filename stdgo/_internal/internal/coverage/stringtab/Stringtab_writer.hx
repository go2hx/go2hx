package stdgo._internal.internal.coverage.stringtab;
@:structInit @:using(stdgo._internal.internal.coverage.stringtab.Stringtab_writer_static_extension.Writer_static_extension) class Writer {
    public var _stab : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>);
    public var _strs : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _tmp : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _frozen : Bool = false;
    public function new(?_stab:stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>, ?_strs:stdgo.Slice<stdgo.GoString>, ?_tmp:stdgo.Slice<stdgo.GoUInt8>, ?_frozen:Bool) {
        if (_stab != null) this._stab = _stab;
        if (_strs != null) this._strs = _strs;
        if (_tmp != null) this._tmp = _tmp;
        if (_frozen != null) this._frozen = _frozen;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Writer(_stab, _strs, _tmp, _frozen);
    }
}
