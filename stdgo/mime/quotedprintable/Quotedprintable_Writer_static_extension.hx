package stdgo.mime.quotedprintable;
class Writer_static_extension {
    static public function _flush(_w:Writer):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer>);
        return stdgo._internal.mime.quotedprintable.Quotedprintable_Writer_static_extension.Writer_static_extension._flush(_w);
    }
    static public function _insertCRLF(_w:Writer):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer>);
        return stdgo._internal.mime.quotedprintable.Quotedprintable_Writer_static_extension.Writer_static_extension._insertCRLF(_w);
    }
    static public function _insertSoftLineBreak(_w:Writer):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer>);
        return stdgo._internal.mime.quotedprintable.Quotedprintable_Writer_static_extension.Writer_static_extension._insertSoftLineBreak(_w);
    }
    static public function _checkLastByte(_w:Writer):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer>);
        return stdgo._internal.mime.quotedprintable.Quotedprintable_Writer_static_extension.Writer_static_extension._checkLastByte(_w);
    }
    static public function _encode(_w:Writer, _b:std.UInt):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer>);
        final _b = (_b : stdgo.GoUInt8);
        return stdgo._internal.mime.quotedprintable.Quotedprintable_Writer_static_extension.Writer_static_extension._encode(_w, _b);
    }
    static public function _write(_w:Writer, _p:Array<std.UInt>):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.mime.quotedprintable.Quotedprintable_Writer_static_extension.Writer_static_extension._write(_w, _p);
    }
    static public function close(_w:Writer):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer>);
        return stdgo._internal.mime.quotedprintable.Quotedprintable_Writer_static_extension.Writer_static_extension.close(_w);
    }
    static public function write(_w:Writer, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.mime.quotedprintable.Quotedprintable_Writer_static_extension.Writer_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
