package stdgo.mime.quotedprintable;
typedef Reader = stdgo._internal.mime.quotedprintable.Quotedprintable_reader.Reader;
typedef Writer = stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer;
typedef ReaderPointer = stdgo._internal.mime.quotedprintable.Quotedprintable_readerpointer.ReaderPointer;
typedef WriterPointer = stdgo._internal.mime.quotedprintable.Quotedprintable_writerpointer.WriterPointer;
/**
    * Package quotedprintable implements quoted-printable encoding as specified by
    * RFC 2045.
**/
class Quotedprintable {
    /**
        * NewReader returns a quoted-printable reader, decoding from r.
    **/
    static public inline function newReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_reader.Reader> return stdgo._internal.mime.quotedprintable.Quotedprintable_newreader.newReader(_r);
    /**
        * NewWriter returns a new Writer that writes to w.
    **/
    static public inline function newWriter(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer> return stdgo._internal.mime.quotedprintable.Quotedprintable_newwriter.newWriter(_w);
}
