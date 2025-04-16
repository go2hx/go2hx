package stdgo.encoding.csv;
var errBareQuote(get, set) : stdgo.Error;
private function get_errBareQuote():stdgo.Error return stdgo._internal.encoding.csv.Csv_errbarequote.errBareQuote;
private function set_errBareQuote(v:stdgo.Error):stdgo.Error {
        stdgo._internal.encoding.csv.Csv_errbarequote.errBareQuote = v;
        return v;
    }
var errQuote(get, set) : stdgo.Error;
private function get_errQuote():stdgo.Error return stdgo._internal.encoding.csv.Csv_errquote.errQuote;
private function set_errQuote(v:stdgo.Error):stdgo.Error {
        stdgo._internal.encoding.csv.Csv_errquote.errQuote = v;
        return v;
    }
var errFieldCount(get, set) : stdgo.Error;
private function get_errFieldCount():stdgo.Error return stdgo._internal.encoding.csv.Csv_errfieldcount.errFieldCount;
private function set_errFieldCount(v:stdgo.Error):stdgo.Error {
        stdgo._internal.encoding.csv.Csv_errfieldcount.errFieldCount = v;
        return v;
    }
var errTrailingComma(get, set) : stdgo.Error;
private function get_errTrailingComma():stdgo.Error return stdgo._internal.encoding.csv.Csv_errtrailingcomma.errTrailingComma;
private function set_errTrailingComma(v:stdgo.Error):stdgo.Error {
        stdgo._internal.encoding.csv.Csv_errtrailingcomma.errTrailingComma = v;
        return v;
    }
typedef ParseError = stdgo._internal.encoding.csv.Csv_parseerror.ParseError;
typedef Reader = stdgo._internal.encoding.csv.Csv_reader.Reader;
typedef Writer = stdgo._internal.encoding.csv.Csv_writer.Writer;
typedef ParseErrorPointer = stdgo._internal.encoding.csv.Csv_parseerrorpointer.ParseErrorPointer;
typedef ReaderPointer = stdgo._internal.encoding.csv.Csv_readerpointer.ReaderPointer;
typedef WriterPointer = stdgo._internal.encoding.csv.Csv_writerpointer.WriterPointer;
/**
    * Package csv reads and writes comma-separated values (CSV) files.
    * There are many kinds of CSV files; this package supports the format
    * described in RFC 4180.
    * 
    * A csv file contains zero or more records of one or more fields per record.
    * Each record is separated by the newline character. The final record may
    * optionally be followed by a newline character.
    * 
    * 	field1,field2,field3
    * 
    * White space is considered part of a field.
    * 
    * Carriage returns before newline characters are silently removed.
    * 
    * Blank lines are ignored. A line with only whitespace characters (excluding
    * the ending newline character) is not considered a blank line.
    * 
    * Fields which start and stop with the quote character " are called
    * quoted-fields. The beginning and ending quote are not part of the
    * field.
    * 
    * The source:
    * 
    * 	normal string,"quoted-field"
    * 
    * results in the fields
    * 
    * 	{`normal string`, `quoted-field`}
    * 
    * Within a quoted-field a quote character followed by a second quote
    * character is considered a single quote.
    * 
    * 	"the ""word"" is true","a ""quoted-field"""
    * 
    * results in
    * 
    * 	{`the "word" is true`, `a "quoted-field"`}
    * 
    * Newlines and commas may be included in a quoted-field
    * 
    * 	"Multi-line
    * 	field","comma is ,"
    * 
    * results in
    * 
    * 	{`Multi-line
    * 	field`, `comma is ,`}
**/
class Csv {
    /**
        * NewReader returns a new Reader that reads from r.
    **/
    static public inline function newReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader> return stdgo._internal.encoding.csv.Csv_newreader.newReader(_r);
    static public inline function testRead(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.csv.Csv_testread.testRead(_t);
    static public inline function benchmarkRead(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.csv.Csv_benchmarkread.benchmarkRead(_b);
    static public inline function benchmarkReadWithFieldsPerRecord(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.csv.Csv_benchmarkreadwithfieldsperrecord.benchmarkReadWithFieldsPerRecord(_b);
    static public inline function benchmarkReadWithoutFieldsPerRecord(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.csv.Csv_benchmarkreadwithoutfieldsperrecord.benchmarkReadWithoutFieldsPerRecord(_b);
    static public inline function benchmarkReadLargeFields(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.csv.Csv_benchmarkreadlargefields.benchmarkReadLargeFields(_b);
    static public inline function benchmarkReadReuseRecord(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.csv.Csv_benchmarkreadreuserecord.benchmarkReadReuseRecord(_b);
    static public inline function benchmarkReadReuseRecordWithFieldsPerRecord(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.csv.Csv_benchmarkreadreuserecordwithfieldsperrecord.benchmarkReadReuseRecordWithFieldsPerRecord(_b);
    static public inline function benchmarkReadReuseRecordWithoutFieldsPerRecord(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.csv.Csv_benchmarkreadreuserecordwithoutfieldsperrecord.benchmarkReadReuseRecordWithoutFieldsPerRecord(_b);
    static public inline function benchmarkReadReuseRecordLargeFields(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.csv.Csv_benchmarkreadreuserecordlargefields.benchmarkReadReuseRecordLargeFields(_b);
    /**
        * NewWriter returns a new Writer that writes to w.
    **/
    static public inline function newWriter(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer> return stdgo._internal.encoding.csv.Csv_newwriter.newWriter(_w);
    static public inline function testWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.csv.Csv_testwrite.testWrite(_t);
    static public inline function testError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.csv.Csv_testerror.testError(_t);
    static public inline function benchmarkWrite(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.csv.Csv_benchmarkwrite.benchmarkWrite(_b);
}
