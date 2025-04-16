package stdgo.internal.coverage.stringtab;
typedef Writer = stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer;
typedef Reader = stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader;
typedef WriterPointer = stdgo._internal.internal.coverage.stringtab.Stringtab_writerpointer.WriterPointer;
typedef ReaderPointer = stdgo._internal.internal.coverage.stringtab.Stringtab_readerpointer.ReaderPointer;
class Stringtab {
    /**
        * NewReader creates a stringtab.Reader to read the contents
        * of a string table from 'r'.
    **/
    static public inline function newReader(_r:stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader>):stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader> return stdgo._internal.internal.coverage.stringtab.Stringtab_newreader.newReader(_r);
}
