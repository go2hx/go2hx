package stdgo._internal.embed;
@:structInit @:using(stdgo._internal.embed.Embed_T_file_static_extension.T_file_static_extension) class T_file {
    public var _name : stdgo.GoString = "";
    public var _data : stdgo.GoString = "";
    public var _hash : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)]);
    public function new(?_name:stdgo.GoString, ?_data:stdgo.GoString, ?_hash:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_name != null) this._name = _name;
        if (_data != null) this._data = _data;
        if (_hash != null) this._hash = _hash;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_file(_name, _data, _hash);
    }
}
