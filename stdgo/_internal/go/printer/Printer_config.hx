package stdgo._internal.go.printer;
@:structInit @:using(stdgo._internal.go.printer.Printer_config_static_extension.Config_static_extension) class Config {
    public var mode : stdgo._internal.go.printer.Printer_mode.Mode = ((0 : stdgo.GoUInt) : stdgo._internal.go.printer.Printer_mode.Mode);
    public var tabwidth : stdgo.GoInt = 0;
    public var indent : stdgo.GoInt = 0;
    public function new(?mode:stdgo._internal.go.printer.Printer_mode.Mode, ?tabwidth:stdgo.GoInt, ?indent:stdgo.GoInt) {
        if (mode != null) this.mode = mode;
        if (tabwidth != null) this.tabwidth = tabwidth;
        if (indent != null) this.indent = indent;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Config(mode, tabwidth, indent);
    }
}
