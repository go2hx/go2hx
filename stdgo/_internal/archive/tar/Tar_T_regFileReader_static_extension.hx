package stdgo._internal.archive.tar;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.path.Path;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.archive.tar.Tar.T_regFileReader_asInterface) class T_regFileReader_static_extension {
    @:keep
    @:tdfield
    static public function _physicalRemaining( _fr:stdgo._internal.archive.tar.Tar_T_regFileReader.T_regFileReader):stdgo.GoInt64 {
        @:recv var _fr:stdgo._internal.archive.tar.Tar_T_regFileReader.T_regFileReader = _fr?.__copy__();
        return _fr._nb;
    }
    @:keep
    @:tdfield
    static public function _logicalRemaining( _fr:stdgo._internal.archive.tar.Tar_T_regFileReader.T_regFileReader):stdgo.GoInt64 {
        @:recv var _fr:stdgo._internal.archive.tar.Tar_T_regFileReader.T_regFileReader = _fr?.__copy__();
        return _fr._nb;
    }
    @:keep
    @:tdfield
    static public function writeTo( _fr:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_regFileReader.T_regFileReader>, _w:stdgo._internal.io.Io_Writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _fr:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_regFileReader.T_regFileReader> = _fr;
        return stdgo._internal.io.Io_copy.copy(_w, stdgo.Go.asInterface(({ reader : stdgo.Go.asInterface(_fr) } : stdgo._internal.archive.tar.Tar_T__struct_0.T__struct_0)));
    }
    @:keep
    @:tdfield
    static public function read( _fr:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_regFileReader.T_regFileReader>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _fr:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_regFileReader.T_regFileReader> = _fr;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((_b.length : stdgo.GoInt64) > (@:checkr _fr ?? throw "null pointer dereference")._nb : Bool)) {
            _b = (_b.__slice__(0, (@:checkr _fr ?? throw "null pointer dereference")._nb) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if (((_b.length) > (0 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = (@:checkr _fr ?? throw "null pointer dereference")._r.read(_b);
                _n = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            (@:checkr _fr ?? throw "null pointer dereference")._nb = ((@:checkr _fr ?? throw "null pointer dereference")._nb - ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF)) && ((@:checkr _fr ?? throw "null pointer dereference")._nb > (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else if (((_err == null) && ((@:checkr _fr ?? throw "null pointer dereference")._nb == (0i64 : stdgo.GoInt64)) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo._internal.io.Io_eOF.eOF };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
    }
}
