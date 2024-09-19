package stdgo._internal.image.jpeg;
@:structInit class Options {
    public var quality : stdgo.GoInt = 0;
    public function new(?quality:stdgo.GoInt) {
        if (quality != null) this.quality = quality;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Options(quality);
    }
}
