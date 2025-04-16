package stdgo.net.textproto;
typedef Pipeline = stdgo._internal.net.textproto.Textproto_pipeline.Pipeline;
typedef Reader = stdgo._internal.net.textproto.Textproto_reader.Reader;
typedef Error = stdgo._internal.net.textproto.Textproto_error.Error;
typedef Conn = stdgo._internal.net.textproto.Textproto_conn.Conn;
typedef Writer = stdgo._internal.net.textproto.Textproto_writer.Writer;
typedef MIMEHeader = stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader;
typedef ProtocolError = stdgo._internal.net.textproto.Textproto_protocolerror.ProtocolError;
typedef PipelinePointer = stdgo._internal.net.textproto.Textproto_pipelinepointer.PipelinePointer;
typedef ReaderPointer = stdgo._internal.net.textproto.Textproto_readerpointer.ReaderPointer;
typedef ErrorPointer = stdgo._internal.net.textproto.Textproto_errorpointer.ErrorPointer;
typedef ConnPointer = stdgo._internal.net.textproto.Textproto_connpointer.ConnPointer;
typedef WriterPointer = stdgo._internal.net.textproto.Textproto_writerpointer.WriterPointer;
typedef MIMEHeaderPointer = stdgo._internal.net.textproto.Textproto_mimeheaderpointer.MIMEHeaderPointer;
typedef ProtocolErrorPointer = stdgo._internal.net.textproto.Textproto_protocolerrorpointer.ProtocolErrorPointer;
/**
    * Package textproto implements generic support for text-based request/response
    * protocols in the style of HTTP, NNTP, and SMTP.
    * 
    * The package provides:
    * 
    * Error, which represents a numeric error response from
    * a server.
    * 
    * Pipeline, to manage pipelined requests and responses
    * in a client.
    * 
    * Reader, to read numeric response code lines,
    * key: value headers, lines wrapped with leading spaces
    * on continuation lines, and whole text blocks ending
    * with a dot on a line by itself.
    * 
    * Writer, to write dot-encoded text blocks.
    * 
    * Conn, a convenient packaging of Reader, Writer, and Pipeline for use
    * with a single network connection.
**/
class Textproto {
    /**
        * NewReader returns a new Reader reading from r.
        * 
        * To avoid denial of service attacks, the provided bufio.Reader
        * should be reading from an io.LimitReader or similar Reader to bound
        * the size of responses.
    **/
    static public inline function newReader(_r:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>):stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> return stdgo._internal.net.textproto.Textproto_newreader.newReader(_r);
    /**
        * CanonicalMIMEHeaderKey returns the canonical format of the
        * MIME header key s. The canonicalization converts the first
        * letter and any letter following a hyphen to upper case;
        * the rest are converted to lowercase. For example, the
        * canonical key for "accept-encoding" is "Accept-Encoding".
        * MIME header keys are assumed to be ASCII only.
        * If s contains a space or invalid header field bytes, it is
        * returned without modifications.
    **/
    static public inline function canonicalMIMEHeaderKey(_s:stdgo.GoString):stdgo.GoString return stdgo._internal.net.textproto.Textproto_canonicalmimeheaderkey.canonicalMIMEHeaderKey(_s);
    /**
        * NewConn returns a new Conn using conn for I/O.
    **/
    static public inline function newConn(_conn:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):stdgo.Ref<stdgo._internal.net.textproto.Textproto_conn.Conn> return stdgo._internal.net.textproto.Textproto_newconn.newConn(_conn);
    /**
        * Dial connects to the given address on the given network using net.Dial
        * and then returns a new Conn for the connection.
    **/
    static public inline function dial(_network:stdgo.GoString, _addr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.textproto.Textproto_conn.Conn>; var _1 : stdgo.Error; } return stdgo._internal.net.textproto.Textproto_dial.dial(_network, _addr);
    /**
        * TrimString returns s without leading and trailing ASCII space.
    **/
    static public inline function trimString(_s:stdgo.GoString):stdgo.GoString return stdgo._internal.net.textproto.Textproto_trimstring.trimString(_s);
    /**
        * TrimBytes returns b without leading and trailing ASCII space.
    **/
    static public inline function trimBytes(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.net.textproto.Textproto_trimbytes.trimBytes(_b);
    /**
        * NewWriter returns a new Writer writing to w.
    **/
    static public inline function newWriter(_w:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>):stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer> return stdgo._internal.net.textproto.Textproto_newwriter.newWriter(_w);
}
