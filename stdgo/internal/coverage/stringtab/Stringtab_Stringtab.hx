package stdgo.internal.coverage.stringtab;
class Stringtab {
    /**
        NewReader creates a stringtab.Reader to read the contents
        of a string table from 'r'.
    **/
    static public inline function newReader(_r:stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader):Reader {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader>);
        return stdgo._internal.internal.coverage.stringtab.Stringtab_newReader.newReader(_r);
    }
}
