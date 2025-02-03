package stdgo.strings;
@:structInit @:using(stdgo.strings.Strings.T_genericReplacer_static_extension) abstract T_genericReplacer(stdgo._internal.strings.Strings_T_genericReplacer.T_genericReplacer) from stdgo._internal.strings.Strings_T_genericReplacer.T_genericReplacer to stdgo._internal.strings.Strings_T_genericReplacer.T_genericReplacer {
    public var _root(get, set) : T_trieNode;
    function get__root():T_trieNode return this._root;
    function set__root(v:T_trieNode):T_trieNode {
        this._root = v;
        return v;
    }
    public var _tableSize(get, set) : StdTypes.Int;
    function get__tableSize():StdTypes.Int return this._tableSize;
    function set__tableSize(v:StdTypes.Int):StdTypes.Int {
        this._tableSize = (v : stdgo.GoInt);
        return v;
    }
    public var _mapping(get, set) : haxe.ds.Vector<std.UInt>;
    function get__mapping():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._mapping) i]);
    function set__mapping(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._mapping = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_root:T_trieNode, ?_tableSize:StdTypes.Int, ?_mapping:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.strings.Strings_T_genericReplacer.T_genericReplacer(_root, (_tableSize : stdgo.GoInt), ([for (i in _mapping) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
