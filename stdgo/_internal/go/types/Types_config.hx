package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_config_static_extension.Config_static_extension) class Config {
    public var context : stdgo.Ref<stdgo._internal.go.types.Types_context.Context> = (null : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>);
    public var goVersion : stdgo.GoString = "";
    public var ignoreFuncBodies : Bool = false;
    public var fakeImportC : Bool = false;
    public var _go115UsesCgo : Bool = false;
    public var __Trace : Bool = false;
    public var error : stdgo.Error -> Void = null;
    public var importer : stdgo._internal.go.types.Types_importer.Importer = (null : stdgo._internal.go.types.Types_importer.Importer);
    public var sizes : stdgo._internal.go.types.Types_sizes.Sizes = (null : stdgo._internal.go.types.Types_sizes.Sizes);
    public var disableUnusedImportCheck : Bool = false;
    public var __ErrorURL : stdgo.GoString = "";
    public function new(?context:stdgo.Ref<stdgo._internal.go.types.Types_context.Context>, ?goVersion:stdgo.GoString, ?ignoreFuncBodies:Bool, ?fakeImportC:Bool, ?_go115UsesCgo:Bool, ?__Trace:Bool, ?error:stdgo.Error -> Void, ?importer:stdgo._internal.go.types.Types_importer.Importer, ?sizes:stdgo._internal.go.types.Types_sizes.Sizes, ?disableUnusedImportCheck:Bool, ?__ErrorURL:stdgo.GoString) {
        if (context != null) this.context = context;
        if (goVersion != null) this.goVersion = goVersion;
        if (ignoreFuncBodies != null) this.ignoreFuncBodies = ignoreFuncBodies;
        if (fakeImportC != null) this.fakeImportC = fakeImportC;
        if (_go115UsesCgo != null) this._go115UsesCgo = _go115UsesCgo;
        if (__Trace != null) this.__Trace = __Trace;
        if (error != null) this.error = error;
        if (importer != null) this.importer = importer;
        if (sizes != null) this.sizes = sizes;
        if (disableUnusedImportCheck != null) this.disableUnusedImportCheck = disableUnusedImportCheck;
        if (__ErrorURL != null) this.__ErrorURL = __ErrorURL;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Config(
context,
goVersion,
ignoreFuncBodies,
fakeImportC,
_go115UsesCgo,
__Trace,
error,
importer,
sizes,
disableUnusedImportCheck,
__ErrorURL);
    }
}
