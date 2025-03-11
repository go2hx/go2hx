package stdgo._internal.compress.zlib;
@:structInit @:using(stdgo._internal.compress.zlib.Zlib_writer_static_extension.Writer_static_extension) class Writer {
    public var _w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _level : stdgo.GoInt = 0;
    public var _dict : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _compressor : stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer> = (null : stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>);
    public var _digest : stdgo._internal.hash.Hash_hash32.Hash32 = (null : stdgo._internal.hash.Hash_hash32.Hash32);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _scratch : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
    public var _wroteHeader : Bool = false;
    public function new(?_w:stdgo._internal.io.Io_writer.Writer, ?_level:stdgo.GoInt, ?_dict:stdgo.Slice<stdgo.GoUInt8>, ?_compressor:stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>, ?_digest:stdgo._internal.hash.Hash_hash32.Hash32, ?_err:stdgo.Error, ?_scratch:stdgo.GoArray<stdgo.GoUInt8>, ?_wroteHeader:Bool) {
        if (_w != null) this._w = _w;
        if (_level != null) this._level = _level;
        if (_dict != null) this._dict = _dict;
        if (_compressor != null) this._compressor = _compressor;
        if (_digest != null) this._digest = _digest;
        if (_err != null) this._err = _err;
        if (_scratch != null) this._scratch = _scratch;
        if (_wroteHeader != null) this._wroteHeader = _wroteHeader;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Writer(_w, _level, _dict, _compressor, _digest, _err, _scratch, _wroteHeader);
    }
}
