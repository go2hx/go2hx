package stdgo.archive.tar;
class Writer_static_extension {
    static public function close(_tw:Writer):stdgo.Error {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.archive.tar.Tar_Writer.Writer>);
        return stdgo._internal.archive.tar.Tar_Writer_static_extension.Writer_static_extension.close(_tw);
    }
    static public function _readFrom(_tw:Writer, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.archive.tar.Tar_Writer.Writer>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_Writer_static_extension.Writer_static_extension._readFrom(_tw, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_tw:Writer, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.archive.tar.Tar_Writer.Writer>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_Writer_static_extension.Writer_static_extension.write(_tw, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _writeRawHeader(_tw:Writer, _blk:T_block, _size:haxe.Int64, _flag:std.UInt):stdgo.Error {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.archive.tar.Tar_Writer.Writer>);
        final _blk = (_blk : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>);
        final _size = (_size : stdgo.GoInt64);
        final _flag = (_flag : stdgo.GoUInt8);
        return stdgo._internal.archive.tar.Tar_Writer_static_extension.Writer_static_extension._writeRawHeader(_tw, _blk, _size, _flag);
    }
    static public function _writeRawFile(_tw:Writer, _name:String, _data:String, _flag:std.UInt, _format:Format):stdgo.Error {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.archive.tar.Tar_Writer.Writer>);
        final _name = (_name : stdgo.GoString);
        final _data = (_data : stdgo.GoString);
        final _flag = (_flag : stdgo.GoUInt8);
        return stdgo._internal.archive.tar.Tar_Writer_static_extension.Writer_static_extension._writeRawFile(_tw, _name, _data, _flag, _format);
    }
    static public function _templateV7Plus(_tw:Writer, _hdr:Header, _fmtStr:T_stringFormatter, _fmtNum:T_numberFormatter):T_block {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.archive.tar.Tar_Writer.Writer>);
        final _hdr = (_hdr : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>);
        return stdgo._internal.archive.tar.Tar_Writer_static_extension.Writer_static_extension._templateV7Plus(_tw, _hdr, _fmtStr, _fmtNum);
    }
    static public function _writeGNUHeader(_tw:Writer, _hdr:Header):stdgo.Error {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.archive.tar.Tar_Writer.Writer>);
        final _hdr = (_hdr : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>);
        return stdgo._internal.archive.tar.Tar_Writer_static_extension.Writer_static_extension._writeGNUHeader(_tw, _hdr);
    }
    static public function _writePAXHeader(_tw:Writer, _hdr:Header, _paxHdrs:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.Error {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.archive.tar.Tar_Writer.Writer>);
        final _hdr = (_hdr : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>);
        final _paxHdrs = (_paxHdrs : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        return stdgo._internal.archive.tar.Tar_Writer_static_extension.Writer_static_extension._writePAXHeader(_tw, _hdr, _paxHdrs);
    }
    static public function _writeUSTARHeader(_tw:Writer, _hdr:Header):stdgo.Error {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.archive.tar.Tar_Writer.Writer>);
        final _hdr = (_hdr : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>);
        return stdgo._internal.archive.tar.Tar_Writer_static_extension.Writer_static_extension._writeUSTARHeader(_tw, _hdr);
    }
    static public function writeHeader(_tw:Writer, _hdr:Header):stdgo.Error {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.archive.tar.Tar_Writer.Writer>);
        final _hdr = (_hdr : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>);
        return stdgo._internal.archive.tar.Tar_Writer_static_extension.Writer_static_extension.writeHeader(_tw, _hdr);
    }
    static public function flush(_tw:Writer):stdgo.Error {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.archive.tar.Tar_Writer.Writer>);
        return stdgo._internal.archive.tar.Tar_Writer_static_extension.Writer_static_extension.flush(_tw);
    }
}
