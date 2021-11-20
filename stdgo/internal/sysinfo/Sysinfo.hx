package stdgo.internal.sysinfo;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:structInit class T_cpuInfo {
    public function name():GoString {
        var _cpu = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _cpu.value._once.do_(function():Void {
            {
                var _name:GoString = internal.cpu.Cpu.name();
                if (_name != (("" : GoString))) {
                    _cpu.value._name = _name;
                    return;
                };
            };
        });
        return _cpu.value._name;
    }
    public var _once : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
    public var _name : GoString = (("" : GoString));
    public function new(?_once:stdgo.sync.Sync.Once, ?_name:GoString) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_once) + " " + Go.string(_name) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_cpuInfo(_once, _name);
    }
    public function __set__(__tmp__) {
        this._once = __tmp__._once;
        this._name = __tmp__._name;
        return this;
    }
}
var cpu : T_cpuInfo = new T_cpuInfo();
class T_cpuInfo_extension_fields {
    public function name(__tmp__):GoString return __tmp__.name();
}
