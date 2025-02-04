package stdgo._internal.internal.profile;
@:structInit @:using(stdgo._internal.internal.profile.Profile_t_mappingkey_static_extension.T_mappingKey_static_extension) class T_mappingKey {
    public var _size : stdgo.GoUInt64 = 0;
    public var _offset : stdgo.GoUInt64 = 0;
    public var _buildIDOrFile : stdgo.GoString = "";
    public function new(?_size:stdgo.GoUInt64, ?_offset:stdgo.GoUInt64, ?_buildIDOrFile:stdgo.GoString) {
        if (_size != null) this._size = _size;
        if (_offset != null) this._offset = _offset;
        if (_buildIDOrFile != null) this._buildIDOrFile = _buildIDOrFile;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_mappingKey(_size, _offset, _buildIDOrFile);
    }
}
