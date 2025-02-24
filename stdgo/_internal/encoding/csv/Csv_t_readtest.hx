package stdgo._internal.encoding.csv;
@:structInit @:using(stdgo._internal.encoding.csv.Csv_t_readtest_static_extension.T_readTest_static_extension) class T_readTest {
    public var name : stdgo.GoString = "";
    public var input : stdgo.GoString = "";
    public var output : stdgo.Slice<stdgo.Slice<stdgo.GoString>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoString>>);
    public var positions : stdgo.Slice<stdgo.Slice<stdgo.GoArray<stdgo.GoInt>>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoArray<stdgo.GoInt>>>);
    public var errors : stdgo.Slice<stdgo.Error> = (null : stdgo.Slice<stdgo.Error>);
    public var comma : stdgo.GoInt32 = 0;
    public var comment : stdgo.GoInt32 = 0;
    public var useFieldsPerRecord : Bool = false;
    public var fieldsPerRecord : stdgo.GoInt = 0;
    public var lazyQuotes : Bool = false;
    public var trimLeadingSpace : Bool = false;
    public var reuseRecord : Bool = false;
    public function new(?name:stdgo.GoString, ?input:stdgo.GoString, ?output:stdgo.Slice<stdgo.Slice<stdgo.GoString>>, ?positions:stdgo.Slice<stdgo.Slice<stdgo.GoArray<stdgo.GoInt>>>, ?errors:stdgo.Slice<stdgo.Error>, ?comma:stdgo.GoInt32, ?comment:stdgo.GoInt32, ?useFieldsPerRecord:Bool, ?fieldsPerRecord:stdgo.GoInt, ?lazyQuotes:Bool, ?trimLeadingSpace:Bool, ?reuseRecord:Bool) {
        if (name != null) this.name = name;
        if (input != null) this.input = input;
        if (output != null) this.output = output;
        if (positions != null) this.positions = positions;
        if (errors != null) this.errors = errors;
        if (comma != null) this.comma = comma;
        if (comment != null) this.comment = comment;
        if (useFieldsPerRecord != null) this.useFieldsPerRecord = useFieldsPerRecord;
        if (fieldsPerRecord != null) this.fieldsPerRecord = fieldsPerRecord;
        if (lazyQuotes != null) this.lazyQuotes = lazyQuotes;
        if (trimLeadingSpace != null) this.trimLeadingSpace = trimLeadingSpace;
        if (reuseRecord != null) this.reuseRecord = reuseRecord;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_readTest(
name,
input,
output,
positions,
errors,
comma,
comment,
useFieldsPerRecord,
fieldsPerRecord,
lazyQuotes,
trimLeadingSpace,
reuseRecord);
    }
}
