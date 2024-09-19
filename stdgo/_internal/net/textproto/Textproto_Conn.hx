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
    @:embedded
    public function dotReader():stdgo._internal.io.Io_Reader.Reader return this.reader.dotReader();
    @:embedded
    public function dotWriter():stdgo._internal.io.Io_WriteCloser.WriteCloser return this.writer.dotWriter();
    @:embedded
    public function endRequest(_id:stdgo.GoUInt) this.pipeline.endRequest(_id);
    @:embedded
    public function endResponse(_id:stdgo.GoUInt) this.pipeline.endResponse(_id);
    @:embedded
    public function next():stdgo.GoUInt return this.pipeline.next();
    @:embedded
    public function printfLine(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Error return this.writer.printfLine(_format, ..._a);
    @:embedded
    public function readCodeLine(_expectCode:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return this.reader.readCodeLine(_expectCode);
    @:embedded
    public function readContinuedLine():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return this.reader.readContinuedLine();
    @:embedded
    public function readContinuedLineBytes():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return this.reader.readContinuedLineBytes();
    @:embedded
    public function readDotBytes():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return this.reader.readDotBytes();
    @:embedded
    public function readDotLines():{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return this.reader.readDotLines();
    @:embedded
    public function readLine():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return this.reader.readLine();
    @:embedded
    public function readLineBytes():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return this.reader.readLineBytes();
    @:embedded
    public function readMIMEHeader():{ var _0 : stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader; var _1 : stdgo.Error; } return this.reader.readMIMEHeader();
    @:embedded
    public function readResponse(_expectCode:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return this.reader.readResponse(_expectCode);
    @:embedded
    public function startRequest(_id:stdgo.GoUInt) this.pipeline.startRequest(_id);
    @:embedded
    public function startResponse(_id:stdgo.GoUInt) this.pipeline.startResponse(_id);
    @:embedded
    public function _readCodeLine(_expectCode:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoString; var _3 : stdgo.Error; } return this.reader._readCodeLine(_expectCode);
    @:embedded
    public function _readContinuedLineSlice(_validateFirstLine:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return this.reader._readContinuedLineSlice(_validateFirstLine);
    @:embedded
    public function _readLineSlice():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return this.reader._readLineSlice();
    @:embedded
    public function _skipSpace():stdgo.GoInt return this.reader._skipSpace();
    @:embedded
    public function _upcomingHeaderKeys():stdgo.GoInt return this.reader._upcomingHeaderKeys();
    public function __copy__() {
        return new Conn(reader, writer, pipeline, _conn);
    }
}
