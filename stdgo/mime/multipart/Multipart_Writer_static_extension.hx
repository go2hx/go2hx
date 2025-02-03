package stdgo.mime.multipart;
class Writer_static_extension {
    static public function close(_w:Writer):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Writer.Writer>);
        return stdgo._internal.mime.multipart.Multipart_Writer_static_extension.Writer_static_extension.close(_w);
    }
    static public function writeField(_w:Writer, _fieldname:String, _value:String):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Writer.Writer>);
        final _fieldname = (_fieldname : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        return stdgo._internal.mime.multipart.Multipart_Writer_static_extension.Writer_static_extension.writeField(_w, _fieldname, _value);
    }
    static public function createFormField(_w:Writer, _fieldname:String):stdgo.Tuple<stdgo._internal.io.Io_Writer.Writer, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Writer.Writer>);
        final _fieldname = (_fieldname : stdgo.GoString);
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_Writer_static_extension.Writer_static_extension.createFormField(_w, _fieldname);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function createFormFile(_w:Writer, _fieldname:String, _filename:String):stdgo.Tuple<stdgo._internal.io.Io_Writer.Writer, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Writer.Writer>);
        final _fieldname = (_fieldname : stdgo.GoString);
        final _filename = (_filename : stdgo.GoString);
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_Writer_static_extension.Writer_static_extension.createFormFile(_w, _fieldname, _filename);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function createPart(_w:Writer, _header:stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader):stdgo.Tuple<stdgo._internal.io.Io_Writer.Writer, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Writer.Writer>);
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_Writer_static_extension.Writer_static_extension.createPart(_w, _header);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function formDataContentType(_w:Writer):String {
        final _w = (_w : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Writer.Writer>);
        return stdgo._internal.mime.multipart.Multipart_Writer_static_extension.Writer_static_extension.formDataContentType(_w);
    }
    static public function setBoundary(_w:Writer, _boundary:String):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Writer.Writer>);
        final _boundary = (_boundary : stdgo.GoString);
        return stdgo._internal.mime.multipart.Multipart_Writer_static_extension.Writer_static_extension.setBoundary(_w, _boundary);
    }
    static public function boundary(_w:Writer):String {
        final _w = (_w : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Writer.Writer>);
        return stdgo._internal.mime.multipart.Multipart_Writer_static_extension.Writer_static_extension.boundary(_w);
    }
}
