package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.T_regFileWriter_asInterface) class T_regFileWriter_static_extension {
    @:keep
    static public function _physicalRemaining( _fw:stdgo._internal.archive.tar.Tar_T_regFileWriter.T_regFileWriter):stdgo.GoInt64 {
        @:recv var _fw:stdgo._internal.archive.tar.Tar_T_regFileWriter.T_regFileWriter = _fw?.__copy__();
        return _fw._nb;
    }
    @:keep
    static public function _logicalRemaining( _fw:stdgo._internal.archive.tar.Tar_T_regFileWriter.T_regFileWriter):stdgo.GoInt64 {
        @:recv var _fw:stdgo._internal.archive.tar.Tar_T_regFileWriter.T_regFileWriter = _fw?.__copy__();
        return _fw._nb;
    }
    @:keep
    static public function readFrom( _fw:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_regFileWriter.T_regFileWriter>, _r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _fw:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_regFileWriter.T_regFileWriter> = _fw;
        return stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(({ writer : stdgo.Go.asInterface(_fw) } : stdgo._internal.archive.tar.Tar_T__struct_1.T__struct_1)), _r);
    }
    @:keep
    static public function write( _fw:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_regFileWriter.T_regFileWriter>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _fw:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_regFileWriter.T_regFileWriter> = _fw;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _overwrite = ((_b.length : stdgo.GoInt64) > _fw._nb : Bool);
        if (_overwrite) {
            _b = (_b.__slice__(0, _fw._nb) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if (((_b.length) > (0 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = _fw._w.write(_b);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            _fw._nb = (_fw._nb - ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        if (_err != null) {
            return { _0 : _n, _1 : _err };
        } else if (_overwrite) {
            return { _0 : _n, _1 : _err = stdgo._internal.archive.tar.Tar_errWriteTooLong.errWriteTooLong };
        } else {
            return { _0 : _n, _1 : _err = (null : stdgo.Error) };
        };
    }
}
