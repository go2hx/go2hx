package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.T_regFileWriter_asInterface) class T_regFileWriter_static_extension {
    @:keep
    @:tdfield
    static public function _physicalRemaining( _fw:stdgo._internal.archive.tar.Tar_t_regfilewriter.T_regFileWriter):stdgo.GoInt64 {
        @:recv var _fw:stdgo._internal.archive.tar.Tar_t_regfilewriter.T_regFileWriter = _fw?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L524"
        return _fw._nb;
    }
    @:keep
    @:tdfield
    static public function _logicalRemaining( _fw:stdgo._internal.archive.tar.Tar_t_regfilewriter.T_regFileWriter):stdgo.GoInt64 {
        @:recv var _fw:stdgo._internal.archive.tar.Tar_t_regfilewriter.T_regFileWriter = _fw?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L519"
        return _fw._nb;
    }
    @:keep
    @:tdfield
    static public function readFrom( _fw:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_regfilewriter.T_regFileWriter>, _r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _fw:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_regfilewriter.T_regFileWriter> = _fw;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L514"
        return stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(({ writer : stdgo.Go.asInterface(_fw) } : stdgo._internal.archive.tar.Tar_t__struct_1.T__struct_1)), _r);
    }
    @:keep
    @:tdfield
    static public function write( _fw:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_regfilewriter.T_regFileWriter>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _fw:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_regfilewriter.T_regFileWriter> = _fw;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _overwrite = ((_b.length : stdgo.GoInt64) > (@:checkr _fw ?? throw "null pointer dereference")._nb : Bool);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L496"
        if (_overwrite) {
            _b = (_b.__slice__(0, (@:checkr _fw ?? throw "null pointer dereference")._nb) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L499"
        if (((_b.length) > (0 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = (@:checkr _fw ?? throw "null pointer dereference")._w.write(_b);
                _n = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            (@:checkr _fw ?? throw "null pointer dereference")._nb = ((@:checkr _fw ?? throw "null pointer dereference")._nb - ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L503"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L505"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else if (_overwrite) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L507"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo._internal.archive.tar.Tar_errwritetoolong.errWriteTooLong };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L509"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
    }
}
