package internal.filepathlite;
final separator : StdTypes.Int = _internal.internal.filepathlite.Filepathlite_separator.separator;
final listSeparator : StdTypes.Int = _internal.internal.filepathlite.Filepathlite_listseparator.listSeparator;
@:structInit @:using(internal.filepathlite.Filepathlite.T_lazybuf_static_extension) @:dox(hide) abstract T_lazybuf(_internal.internal.filepathlite.Filepathlite_t_lazybuf.T_lazybuf) from _internal.internal.filepathlite.Filepathlite_t_lazybuf.T_lazybuf to _internal.internal.filepathlite.Filepathlite_t_lazybuf.T_lazybuf {
    public var _path(get, set) : String;
    function get__path():String return this._path;
    function set__path(v:String):String {
        this._path = (v : stdgo.GoString);
        return v;
    }
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _w(get, set) : StdTypes.Int;
    function get__w():StdTypes.Int return this._w;
    function set__w(v:StdTypes.Int):StdTypes.Int {
        this._w = (v : stdgo.GoInt);
        return v;
    }
    public var _volAndPath(get, set) : String;
    function get__volAndPath():String return this._volAndPath;
    function set__volAndPath(v:String):String {
        this._volAndPath = (v : stdgo.GoString);
        return v;
    }
    public var _volLen(get, set) : StdTypes.Int;
    function get__volLen():StdTypes.Int return this._volLen;
    function set__volLen(v:StdTypes.Int):StdTypes.Int {
        this._volLen = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_path:String, ?_buf:Array<std.UInt>, ?_w:StdTypes.Int, ?_volAndPath:String, ?_volLen:StdTypes.Int) this = new _internal.internal.filepathlite.Filepathlite_t_lazybuf.T_lazybuf((_path : stdgo.GoString), ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_w : stdgo.GoInt), (_volAndPath : stdgo.GoString), (_volLen : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_lazybufPointer = _internal.internal.filepathlite.Filepathlite_t_lazybufpointer.T_lazybufPointer;
@:dox(hide) class T_lazybuf_static_extension {
    static public function _string(_b:T_lazybuf):String {
        final _b = (_b : stdgo.Ref<_internal.internal.filepathlite.Filepathlite_t_lazybuf.T_lazybuf>);
        return _internal.internal.filepathlite.Filepathlite_t_lazybuf_static_extension.T_lazybuf_static_extension._string(_b);
    }
    static public function _prepend(_b:T_lazybuf, _prefix:haxe.Rest<std.UInt>):Void {
        final _b = (_b : stdgo.Ref<_internal.internal.filepathlite.Filepathlite_t_lazybuf.T_lazybuf>);
        _internal.internal.filepathlite.Filepathlite_t_lazybuf_static_extension.T_lazybuf_static_extension._prepend(_b, ...[for (i in _prefix) i]);
    }
    static public function _append(_b:T_lazybuf, _c:std.UInt):Void {
        final _b = (_b : stdgo.Ref<_internal.internal.filepathlite.Filepathlite_t_lazybuf.T_lazybuf>);
        final _c = (_c : stdgo.GoUInt8);
        _internal.internal.filepathlite.Filepathlite_t_lazybuf_static_extension.T_lazybuf_static_extension._append(_b, _c);
    }
    static public function _index(_b:T_lazybuf, _i:StdTypes.Int):std.UInt {
        final _b = (_b : stdgo.Ref<_internal.internal.filepathlite.Filepathlite_t_lazybuf.T_lazybuf>);
        final _i = (_i : stdgo.GoInt);
        return _internal.internal.filepathlite.Filepathlite_t_lazybuf_static_extension.T_lazybuf_static_extension._index(_b, _i);
    }
}
/**
    * Package filepathlite implements a subset of path/filepath,
    * only using packages which may be imported by "os".
    * 
    * Tests for these functions are in path/filepath.
**/
class Filepathlite {
    /**
        * Clean is filepath.Clean.
    **/
    static public inline function clean(_path:String):String {
        final _path = (_path : stdgo.GoString);
        return _internal.internal.filepathlite.Filepathlite_clean.clean(_path);
    }
    /**
        * IsLocal is filepath.IsLocal.
    **/
    static public inline function isLocal(_path:String):Bool {
        final _path = (_path : stdgo.GoString);
        return _internal.internal.filepathlite.Filepathlite_islocal.isLocal(_path);
    }
    /**
        * Localize is filepath.Localize.
    **/
    static public inline function localize(_path:String):stdgo.Tuple<String, stdgo.Error> {
        final _path = (_path : stdgo.GoString);
        return {
            final obj = _internal.internal.filepathlite.Filepathlite_localize.localize(_path);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ToSlash is filepath.ToSlash.
    **/
    static public inline function toSlash(_path:String):String {
        final _path = (_path : stdgo.GoString);
        return _internal.internal.filepathlite.Filepathlite_toslash.toSlash(_path);
    }
    /**
        * FromSlash is filepath.ToSlash.
    **/
    static public inline function fromSlash(_path:String):String {
        final _path = (_path : stdgo.GoString);
        return _internal.internal.filepathlite.Filepathlite_fromslash.fromSlash(_path);
    }
    /**
        * Split is filepath.Split.
    **/
    static public inline function split(_path:String):stdgo.Tuple<String, String> {
        final _path = (_path : stdgo.GoString);
        return {
            final obj = _internal.internal.filepathlite.Filepathlite_split.split(_path);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Ext is filepath.Ext.
    **/
    static public inline function ext(_path:String):String {
        final _path = (_path : stdgo.GoString);
        return _internal.internal.filepathlite.Filepathlite_ext.ext(_path);
    }
    /**
        * Base is filepath.Base.
    **/
    static public inline function base(_path:String):String {
        final _path = (_path : stdgo.GoString);
        return _internal.internal.filepathlite.Filepathlite_base.base(_path);
    }
    /**
        * Dir is filepath.Dir.
    **/
    static public inline function dir(_path:String):String {
        final _path = (_path : stdgo.GoString);
        return _internal.internal.filepathlite.Filepathlite_dir.dir(_path);
    }
    /**
        * VolumeName is filepath.VolumeName.
    **/
    static public inline function volumeName(_path:String):String {
        final _path = (_path : stdgo.GoString);
        return _internal.internal.filepathlite.Filepathlite_volumename.volumeName(_path);
    }
    /**
        * VolumeNameLen returns the length of the leading volume name on Windows.
        * It returns 0 elsewhere.
    **/
    static public inline function volumeNameLen(_path:String):StdTypes.Int {
        final _path = (_path : stdgo.GoString);
        return _internal.internal.filepathlite.Filepathlite_volumenamelen.volumeNameLen(_path);
    }
    static public inline function isPathSeparator(_c:std.UInt):Bool {
        final _c = (_c : stdgo.GoUInt8);
        return _internal.internal.filepathlite.Filepathlite_ispathseparator.isPathSeparator(_c);
    }
    /**
        * IsAbs reports whether the path is absolute.
    **/
    static public inline function isAbs(_path:String):Bool {
        final _path = (_path : stdgo.GoString);
        return _internal.internal.filepathlite.Filepathlite_isabs.isAbs(_path);
    }
}
