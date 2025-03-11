package stdgo._internal.strings;
@:structInit @:using(stdgo._internal.strings.Strings_t_genericreplacer_static_extension.T_genericReplacer_static_extension) class T_genericReplacer {
    public var _root : stdgo._internal.strings.Strings_t_trienode.T_trieNode = ({} : stdgo._internal.strings.Strings_t_trienode.T_trieNode);
    public var _tableSize : stdgo.GoInt = 0;
    public var _mapping : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(256, 256).__setNumber32__();
    public function new(?_root:stdgo._internal.strings.Strings_t_trienode.T_trieNode, ?_tableSize:stdgo.GoInt, ?_mapping:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_root != null) this._root = _root;
        if (_tableSize != null) this._tableSize = _tableSize;
        if (_mapping != null) this._mapping = _mapping;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_genericReplacer(_root, _tableSize, _mapping);
    }
}
