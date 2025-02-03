package stdgo.encoding.xml;
@:structInit @:using(stdgo.encoding.xml.Xml.T_fieldInfo_static_extension) abstract T_fieldInfo(stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo) from stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo to stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo {
    public var _idx(get, set) : Array<StdTypes.Int>;
    function get__idx():Array<StdTypes.Int> return [for (i in this._idx) i];
    function set__idx(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._idx = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _xmlns(get, set) : String;
    function get__xmlns():String return this._xmlns;
    function set__xmlns(v:String):String {
        this._xmlns = (v : stdgo.GoString);
        return v;
    }
    public var _flags(get, set) : T_fieldFlags;
    function get__flags():T_fieldFlags return this._flags;
    function set__flags(v:T_fieldFlags):T_fieldFlags {
        this._flags = v;
        return v;
    }
    public var _parents(get, set) : Array<String>;
    function get__parents():Array<String> return [for (i in this._parents) i];
    function set__parents(v:Array<String>):Array<String> {
        this._parents = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_idx:Array<StdTypes.Int>, ?_name:String, ?_xmlns:String, ?_flags:T_fieldFlags, ?_parents:Array<String>) this = new stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo(([for (i in _idx) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), (_name : stdgo.GoString), (_xmlns : stdgo.GoString), _flags, ([for (i in _parents) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
