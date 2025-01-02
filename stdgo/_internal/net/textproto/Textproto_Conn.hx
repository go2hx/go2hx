package stdgo._internal.net.textproto;
@:structInit @:using(stdgo._internal.net.textproto.Textproto_Conn_static_extension.Conn_static_extension) class Conn {
    @:embedded
    public var reader : stdgo._internal.net.textproto.Textproto_Reader.Reader = ({} : stdgo._internal.net.textproto.Textproto_Reader.Reader);
    @:embedded
    public var writer : stdgo._internal.net.textproto.Textproto_Writer.Writer = ({} : stdgo._internal.net.textproto.Textproto_Writer.Writer);
    @:embedded
    public var pipeline : stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline = ({} : stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline);
    public var _conn : stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser = (null : stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser);
    public function new(?reader:stdgo._internal.net.textproto.Textproto_Reader.Reader, ?writer:stdgo._internal.net.textproto.Textproto_Writer.Writer, ?pipeline:stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline, ?_conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser) {
        if (reader != null) this.reader = reader;
        if (writer != null) this.writer = writer;
        if (pipeline != null) this.pipeline = pipeline;
        if (_conn != null) this._conn = _conn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var dotReader(get, never) : () -> stdgo._internal.io.Io_Reader.Reader;
    @:embedded
    @:embeddededffieldsffun
    public function get_dotReader():() -> stdgo._internal.io.Io_Reader.Reader return @:check3 (this.reader ?? throw "null pointer derefrence").dotReader;
    public var dotWriter(get, never) : () -> stdgo._internal.io.Io_WriteCloser.WriteCloser;
    @:embedded
    @:embeddededffieldsffun
    public function get_dotWriter():() -> stdgo._internal.io.Io_WriteCloser.WriteCloser return @:check3 (this.writer ?? throw "null pointer derefrence").dotWriter;
    public var endRequest(get, never) : stdgo.GoUInt -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_endRequest():stdgo.GoUInt -> Void return @:check3 (this.pipeline ?? throw "null pointer derefrence").endRequest;
    public var endResponse(get, never) : stdgo.GoUInt -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_endResponse():stdgo.GoUInt -> Void return @:check3 (this.pipeline ?? throw "null pointer derefrence").endResponse;
    public var next(get, never) : () -> stdgo.GoUInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_next():() -> stdgo.GoUInt return @:check3 (this.pipeline ?? throw "null pointer derefrence").next;
    public var printfLine(get, never) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_printfLine():(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> stdgo.Error return @:check3 (this.writer ?? throw "null pointer derefrence").printfLine;
    public var readCodeLine(get, never) : stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readCodeLine():stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return @:check3 (this.reader ?? throw "null pointer derefrence").readCodeLine;
    public var readContinuedLine(get, never) : () -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readContinuedLine():() -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:check3 (this.reader ?? throw "null pointer derefrence").readContinuedLine;
    public var readContinuedLineBytes(get, never) : () -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readContinuedLineBytes():() -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check3 (this.reader ?? throw "null pointer derefrence").readContinuedLineBytes;
    public var readDotBytes(get, never) : () -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readDotBytes():() -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check3 (this.reader ?? throw "null pointer derefrence").readDotBytes;
    public var readDotLines(get, never) : () -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readDotLines():() -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:check3 (this.reader ?? throw "null pointer derefrence").readDotLines;
    public var readLine(get, never) : () -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readLine():() -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:check3 (this.reader ?? throw "null pointer derefrence").readLine;
    public var readLineBytes(get, never) : () -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readLineBytes():() -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check3 (this.reader ?? throw "null pointer derefrence").readLineBytes;
    public var readMIMEHeader(get, never) : () -> { var _0 : stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readMIMEHeader():() -> { var _0 : stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader; var _1 : stdgo.Error; } return @:check3 (this.reader ?? throw "null pointer derefrence").readMIMEHeader;
    public var readResponse(get, never) : stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readResponse():stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return @:check3 (this.reader ?? throw "null pointer derefrence").readResponse;
    public var startRequest(get, never) : stdgo.GoUInt -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_startRequest():stdgo.GoUInt -> Void return @:check3 (this.pipeline ?? throw "null pointer derefrence").startRequest;
    public var startResponse(get, never) : stdgo.GoUInt -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_startResponse():stdgo.GoUInt -> Void return @:check3 (this.pipeline ?? throw "null pointer derefrence").startResponse;
    public var _readCodeLine(get, never) : stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoString; var _3 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__readCodeLine():stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoString; var _3 : stdgo.Error; } return @:check3 (this.reader ?? throw "null pointer derefrence")._readCodeLine;
    public var _readContinuedLineSlice(get, never) : (stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__readContinuedLineSlice():(stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check3 (this.reader ?? throw "null pointer derefrence")._readContinuedLineSlice;
    public var _readLineSlice(get, never) : () -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__readLineSlice():() -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check3 (this.reader ?? throw "null pointer derefrence")._readLineSlice;
    public var _skipSpace(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get__skipSpace():() -> stdgo.GoInt return @:check3 (this.reader ?? throw "null pointer derefrence")._skipSpace;
    public var _upcomingHeaderKeys(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get__upcomingHeaderKeys():() -> stdgo.GoInt return @:check3 (this.reader ?? throw "null pointer derefrence")._upcomingHeaderKeys;
    public function __copy__() {
        return new Conn(reader, writer, pipeline, _conn);
    }
}
