package stdgo._internal.net.textproto;
@:structInit @:using(stdgo._internal.net.textproto.Textproto_conn_static_extension.Conn_static_extension) class Conn {
    @:embedded
    public var reader : stdgo._internal.net.textproto.Textproto_reader.Reader = ({} : stdgo._internal.net.textproto.Textproto_reader.Reader);
    @:embedded
    public var writer : stdgo._internal.net.textproto.Textproto_writer.Writer = ({} : stdgo._internal.net.textproto.Textproto_writer.Writer);
    @:embedded
    public var pipeline : stdgo._internal.net.textproto.Textproto_pipeline.Pipeline = ({} : stdgo._internal.net.textproto.Textproto_pipeline.Pipeline);
    public var _conn : stdgo._internal.io.Io_readwritecloser.ReadWriteCloser = (null : stdgo._internal.io.Io_readwritecloser.ReadWriteCloser);
    public function new(?reader:stdgo._internal.net.textproto.Textproto_reader.Reader, ?writer:stdgo._internal.net.textproto.Textproto_writer.Writer, ?pipeline:stdgo._internal.net.textproto.Textproto_pipeline.Pipeline, ?_conn:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser) {
        if (reader != null) this.reader = reader;
        if (writer != null) this.writer = writer;
        if (pipeline != null) this.pipeline = pipeline;
        if (_conn != null) this._conn = _conn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var dotReader(get, never) : () -> stdgo._internal.io.Io_reader.Reader;
    @:embedded
    @:embeddededffieldsffun
    public function get_dotReader():() -> stdgo._internal.io.Io_reader.Reader return @:check32 this.reader.dotReader;
    public var dotWriter(get, never) : () -> stdgo._internal.io.Io_writecloser.WriteCloser;
    @:embedded
    @:embeddededffieldsffun
    public function get_dotWriter():() -> stdgo._internal.io.Io_writecloser.WriteCloser return @:check32 this.writer.dotWriter;
    public var endRequest(get, never) : stdgo.GoUInt -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_endRequest():stdgo.GoUInt -> Void return @:check32 this.pipeline.endRequest;
    public var endResponse(get, never) : stdgo.GoUInt -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_endResponse():stdgo.GoUInt -> Void return @:check32 this.pipeline.endResponse;
    public var next(get, never) : () -> stdgo.GoUInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_next():() -> stdgo.GoUInt return @:check32 this.pipeline.next;
    public var printfLine(get, never) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_printfLine():(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> stdgo.Error return @:check32 this.writer.printfLine;
    public var readCodeLine(get, never) : stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readCodeLine():stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return @:check32 this.reader.readCodeLine;
    public var readContinuedLine(get, never) : () -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readContinuedLine():() -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:check32 this.reader.readContinuedLine;
    public var readContinuedLineBytes(get, never) : () -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readContinuedLineBytes():() -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check32 this.reader.readContinuedLineBytes;
    public var readDotBytes(get, never) : () -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readDotBytes():() -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check32 this.reader.readDotBytes;
    public var readDotLines(get, never) : () -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readDotLines():() -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:check32 this.reader.readDotLines;
    public var readLine(get, never) : () -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readLine():() -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:check32 this.reader.readLine;
    public var readLineBytes(get, never) : () -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readLineBytes():() -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check32 this.reader.readLineBytes;
    public var readMIMEHeader(get, never) : () -> { var _0 : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readMIMEHeader():() -> { var _0 : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader; var _1 : stdgo.Error; } return @:check32 this.reader.readMIMEHeader;
    public var readResponse(get, never) : stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readResponse():stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return @:check32 this.reader.readResponse;
    public var startRequest(get, never) : stdgo.GoUInt -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_startRequest():stdgo.GoUInt -> Void return @:check32 this.pipeline.startRequest;
    public var startResponse(get, never) : stdgo.GoUInt -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_startResponse():stdgo.GoUInt -> Void return @:check32 this.pipeline.startResponse;
    public var _readCodeLine(get, never) : stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoString; var _3 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__readCodeLine():stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoString; var _3 : stdgo.Error; } return @:check32 this.reader._readCodeLine;
    public var _readContinuedLineSlice(get, never) : (stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__readContinuedLineSlice():(stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check32 this.reader._readContinuedLineSlice;
    public var _readLineSlice(get, never) : () -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__readLineSlice():() -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check32 this.reader._readLineSlice;
    public var _skipSpace(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get__skipSpace():() -> stdgo.GoInt return @:check32 this.reader._skipSpace;
    public var _upcomingHeaderKeys(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get__upcomingHeaderKeys():() -> stdgo.GoInt return @:check32 this.reader._upcomingHeaderKeys;
    public function __copy__() {
        return new Conn(reader, writer, pipeline, _conn);
    }
}
