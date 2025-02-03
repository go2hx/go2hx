package stdgo.archive.zip;
class Writer_static_extension {
    static public function _compressor(_w:Writer, _method:std.UInt):Compressor {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer>);
        final _method = (_method : stdgo.GoUInt16);
        return stdgo._internal.archive.zip.Zip_Writer_static_extension.Writer_static_extension._compressor(_w, _method);
    }
    static public function registerCompressor(_w:Writer, _method:std.UInt, _comp:Compressor):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer>);
        final _method = (_method : stdgo.GoUInt16);
        stdgo._internal.archive.zip.Zip_Writer_static_extension.Writer_static_extension.registerCompressor(_w, _method, _comp);
    }
    static public function copy(_w:Writer, _f:File):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer>);
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>);
        return stdgo._internal.archive.zip.Zip_Writer_static_extension.Writer_static_extension.copy(_w, _f);
    }
    static public function createRaw(_w:Writer, _fh:FileHeader):stdgo.Tuple<stdgo._internal.io.Io_Writer.Writer, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer>);
        final _fh = (_fh : stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_Writer_static_extension.Writer_static_extension.createRaw(_w, _fh);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function createHeader(_w:Writer, _fh:FileHeader):stdgo.Tuple<stdgo._internal.io.Io_Writer.Writer, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer>);
        final _fh = (_fh : stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_Writer_static_extension.Writer_static_extension.createHeader(_w, _fh);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _prepare(_w:Writer, _fh:FileHeader):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer>);
        final _fh = (_fh : stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>);
        return stdgo._internal.archive.zip.Zip_Writer_static_extension.Writer_static_extension._prepare(_w, _fh);
    }
    static public function create(_w:Writer, _name:String):stdgo.Tuple<stdgo._internal.io.Io_Writer.Writer, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.archive.zip.Zip_Writer_static_extension.Writer_static_extension.create(_w, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_w:Writer):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer>);
        return stdgo._internal.archive.zip.Zip_Writer_static_extension.Writer_static_extension.close(_w);
    }
    static public function setComment(_w:Writer, _comment:String):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer>);
        final _comment = (_comment : stdgo.GoString);
        return stdgo._internal.archive.zip.Zip_Writer_static_extension.Writer_static_extension.setComment(_w, _comment);
    }
    static public function flush(_w:Writer):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer>);
        return stdgo._internal.archive.zip.Zip_Writer_static_extension.Writer_static_extension.flush(_w);
    }
    static public function setOffset(_w:Writer, _n:haxe.Int64):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer>);
        final _n = (_n : stdgo.GoInt64);
        stdgo._internal.archive.zip.Zip_Writer_static_extension.Writer_static_extension.setOffset(_w, _n);
    }
}
