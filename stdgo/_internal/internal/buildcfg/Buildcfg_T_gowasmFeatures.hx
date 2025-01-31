package stdgo._internal.internal.buildcfg;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(stdgo._internal.internal.buildcfg.Buildcfg_T_gowasmFeatures_static_extension.T_gowasmFeatures_static_extension) class T_gowasmFeatures {
    public var satConv : Bool = false;
    public var signExt : Bool = false;
    public function new(?satConv:Bool, ?signExt:Bool) {
        if (satConv != null) this.satConv = satConv;
        if (signExt != null) this.signExt = signExt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_gowasmFeatures(satConv, signExt);
    }
}
