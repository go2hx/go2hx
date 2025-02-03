package stdgo.strings;
@:structInit @:using(stdgo.strings.Strings.T_byteStringReplacer_static_extension) abstract T_byteStringReplacer(stdgo._internal.strings.Strings_T_byteStringReplacer.T_byteStringReplacer) from stdgo._internal.strings.Strings_T_byteStringReplacer.T_byteStringReplacer to stdgo._internal.strings.Strings_T_byteStringReplacer.T_byteStringReplacer {
    public var _replacements(get, set) : haxe.ds.Vector<Array<std.UInt>>;
    function get__replacements():haxe.ds.Vector<Array<std.UInt>> return haxe.ds.Vector.fromArrayCopy([for (i in this._replacements) [for (i in i) i]]);
    function set__replacements(v:haxe.ds.Vector<Array<std.UInt>>):haxe.ds.Vector<Array<std.UInt>> {
        this._replacements = ([for (i in v) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>);
        return v;
    }
    public var _toReplace(get, set) : Array<String>;
    function get__toReplace():Array<String> return [for (i in this._toReplace) i];
    function set__toReplace(v:Array<String>):Array<String> {
        this._toReplace = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_replacements:haxe.ds.Vector<Array<std.UInt>>, ?_toReplace:Array<String>) this = new stdgo._internal.strings.Strings_T_byteStringReplacer.T_byteStringReplacer(([for (i in _replacements) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>), ([for (i in _toReplace) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
