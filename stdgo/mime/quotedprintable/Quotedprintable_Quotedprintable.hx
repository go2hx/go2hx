package stdgo.mime.quotedprintable;
/**
    Package quotedprintable implements quoted-printable encoding as specified by
    RFC 2045.
**/
class Quotedprintable {
    /**
        NewReader returns a quoted-printable reader, decoding from r.
    **/
    static public inline function newReader(_r:stdgo._internal.io.Io_Reader.Reader):Reader {
        return stdgo._internal.mime.quotedprintable.Quotedprintable_newReader.newReader(_r);
    }
    /**
        NewWriter returns a new Writer that writes to w.
    **/
    static public inline function newWriter(_w:stdgo._internal.io.Io_Writer.Writer):Writer {
        return stdgo._internal.mime.quotedprintable.Quotedprintable_newWriter.newWriter(_w);
    }
}
