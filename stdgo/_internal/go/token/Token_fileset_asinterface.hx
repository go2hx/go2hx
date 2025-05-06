package stdgo._internal.go.token;
class FileSet_asInterface {
    @:keep
    @:tdfield
    public dynamic function write(_encode:stdgo.AnyInterface -> stdgo.Error):stdgo.Error return @:_0 __self__.value.write(_encode);
    @:keep
    @:tdfield
    public dynamic function read(_decode:stdgo.AnyInterface -> stdgo.Error):stdgo.Error return @:_0 __self__.value.read(_decode);
    @:keep
    @:tdfield
    public dynamic function position(_p:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_position.Position return @:_0 __self__.value.position(_p);
    @:keep
    @:tdfield
    public dynamic function positionFor(_p:stdgo._internal.go.token.Token_pos.Pos, _adjusted:Bool):stdgo._internal.go.token.Token_position.Position return @:_0 __self__.value.positionFor(_p, _adjusted);
    @:keep
    @:tdfield
    public dynamic function file(_p:stdgo._internal.go.token.Token_pos.Pos):stdgo.Ref<stdgo._internal.go.token.Token_file.File> return @:_0 __self__.value.file(_p);
    @:keep
    @:tdfield
    public dynamic function _file(_p:stdgo._internal.go.token.Token_pos.Pos):stdgo.Ref<stdgo._internal.go.token.Token_file.File> return @:_0 __self__.value._file(_p);
    @:keep
    @:tdfield
    public dynamic function iterate(_f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> -> Bool):Void @:_0 __self__.value.iterate(_f);
    @:keep
    @:tdfield
    public dynamic function removeFile(_file:stdgo.Ref<stdgo._internal.go.token.Token_file.File>):Void @:_0 __self__.value.removeFile(_file);
    @:keep
    @:tdfield
    public dynamic function addFile(_filename:stdgo.GoString, _base:stdgo.GoInt, _size:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.token.Token_file.File> return @:_0 __self__.value.addFile(_filename, _base, _size);
    @:keep
    @:tdfield
    public dynamic function base():stdgo.GoInt return @:_0 __self__.value.base();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.token.Token_filesetpointer.FileSetPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
