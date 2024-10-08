package stdgo._internal.compress.zlib;
function newWriterLevelDict(_w:stdgo._internal.io.Io_Writer.Writer, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.compress.zlib.Zlib_Writer.Writer>; var _1 : stdgo.Error; } {
        if (((_level < (-2 : stdgo.GoInt) : Bool) || (_level > (9 : stdgo.GoInt) : Bool) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("zlib: invalid compression level: %d" : stdgo.GoString), stdgo.Go.toInterface(_level)) };
        };
        return { _0 : (stdgo.Go.setRef(({ _w : _w, _level : _level, _dict : _dict } : stdgo._internal.compress.zlib.Zlib_Writer.Writer)) : stdgo.Ref<stdgo._internal.compress.zlib.Zlib_Writer.Writer>), _1 : (null : stdgo.Error) };
    }
