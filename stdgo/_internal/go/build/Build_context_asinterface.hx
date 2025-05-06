package stdgo._internal.go.build;
class Context_asInterface {
    @:keep
    @:tdfield
    public dynamic function _goodOSArchFile(_name:stdgo.GoString, _allTags:stdgo.GoMap<stdgo.GoString, Bool>):Bool return @:_0 __self__.value._goodOSArchFile(_name, _allTags);
    @:keep
    @:tdfield
    public dynamic function _matchTag(_name:stdgo.GoString, _allTags:stdgo.GoMap<stdgo.GoString, Bool>):Bool return @:_0 __self__.value._matchTag(_name, _allTags);
    @:keep
    @:tdfield
    public dynamic function _eval(_x:stdgo._internal.go.build.constraint.Constraint_expr.Expr, _allTags:stdgo.GoMap<stdgo.GoString, Bool>):Bool return @:_0 __self__.value._eval(_x, _allTags);
    @:keep
    @:tdfield
    public dynamic function _matchAuto(_text:stdgo.GoString, _allTags:stdgo.GoMap<stdgo.GoString, Bool>):Bool return @:_0 __self__.value._matchAuto(_text, _allTags);
    @:keep
    @:tdfield
    public dynamic function _makePathsAbsolute(_args:stdgo.Slice<stdgo.GoString>, _srcDir:stdgo.GoString):Void @:_0 __self__.value._makePathsAbsolute(_args, _srcDir);
    @:keep
    @:tdfield
    public dynamic function _saveCgo(_filename:stdgo.GoString, _di:stdgo.Ref<stdgo._internal.go.build.Build_package.Package>, _cg:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>):stdgo.Error return @:_0 __self__.value._saveCgo(_filename, _di, _cg);
    @:keep
    @:tdfield
    public dynamic function _shouldBuild(_content:stdgo.Slice<stdgo.GoUInt8>, _allTags:stdgo.GoMap<stdgo.GoString, Bool>):{ var _0 : Bool; var _1 : Bool; var _2 : stdgo.Error; } return @:_0 __self__.value._shouldBuild(_content, _allTags);
    @:keep
    @:tdfield
    public dynamic function _matchFile(_dir:stdgo.GoString, _name:stdgo.GoString, _allTags:stdgo.GoMap<stdgo.GoString, Bool>, _binaryOnly:stdgo.Pointer<Bool>, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>):{ var _0 : stdgo.Ref<stdgo._internal.go.build.Build_t_fileinfo.T_fileInfo>; var _1 : stdgo.Error; } return @:_0 __self__.value._matchFile(_dir, _name, _allTags, _binaryOnly, _fset);
    @:keep
    @:tdfield
    public dynamic function matchFile(_dir:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } return @:_0 __self__.value.matchFile(_dir, _name);
    @:keep
    @:tdfield
    public dynamic function _importGo(_p:stdgo.Ref<stdgo._internal.go.build.Build_package.Package>, _path:stdgo.GoString, _srcDir:stdgo.GoString, _mode:stdgo._internal.go.build.Build_importmode.ImportMode):stdgo.Error return @:_0 __self__.value._importGo(_p, _path, _srcDir, _mode);
    @:keep
    @:tdfield
    public dynamic function import_(_path:stdgo.GoString, _srcDir:stdgo.GoString, _mode:stdgo._internal.go.build.Build_importmode.ImportMode):{ var _0 : stdgo.Ref<stdgo._internal.go.build.Build_package.Package>; var _1 : stdgo.Error; } return @:_0 __self__.value.import_(_path, _srcDir, _mode);
    @:keep
    @:tdfield
    public dynamic function importDir(_dir:stdgo.GoString, _mode:stdgo._internal.go.build.Build_importmode.ImportMode):{ var _0 : stdgo.Ref<stdgo._internal.go.build.Build_package.Package>; var _1 : stdgo.Error; } return @:_0 __self__.value.importDir(_dir, _mode);
    @:keep
    @:tdfield
    public dynamic function srcDirs():stdgo.Slice<stdgo.GoString> return @:_0 __self__.value.srcDirs();
    @:keep
    @:tdfield
    public dynamic function _gopath():stdgo.Slice<stdgo.GoString> return @:_0 __self__.value._gopath();
    @:keep
    @:tdfield
    public dynamic function _isFile(_path:stdgo.GoString):Bool return @:_0 __self__.value._isFile(_path);
    @:keep
    @:tdfield
    public dynamic function _openFile(_path:stdgo.GoString):{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } return @:_0 __self__.value._openFile(_path);
    @:keep
    @:tdfield
    public dynamic function _readDir(_path:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } return @:_0 __self__.value._readDir(_path);
    @:keep
    @:tdfield
    public dynamic function _hasSubdir(_root:stdgo.GoString, _dir:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } return @:_0 __self__.value._hasSubdir(_root, _dir);
    @:keep
    @:tdfield
    public dynamic function _isDir(_path:stdgo.GoString):Bool return @:_0 __self__.value._isDir(_path);
    @:keep
    @:tdfield
    public dynamic function _isAbsPath(_path:stdgo.GoString):Bool return @:_0 __self__.value._isAbsPath(_path);
    @:keep
    @:tdfield
    public dynamic function _splitPathList(_s:stdgo.GoString):stdgo.Slice<stdgo.GoString> return @:_0 __self__.value._splitPathList(_s);
    @:keep
    @:tdfield
    public dynamic function _joinPath(_elem:haxe.Rest<stdgo.GoString>):stdgo.GoString return @:_0 __self__.value._joinPath(..._elem);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.build.Build_contextpointer.ContextPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
