package std;
class Pointer<T> {
    public var value:T;
    var base_i:Int;
    private static var index:Int = 0;
    private static var map = new Map<Int,Pointer<Any>>();
    private function new(value:T,base_i:Int=0) {
        this.value = value;
        this.base_i = base_i;
        if (this.base_i == 0)
            this.base_i = ++index;
    }
    public static function make <T>(value:T):Pointer<T> {
		return new Pointer(value);
	}
    public function deref():T {
        return value;
    }
    public function address():Int {
        map.set(base_i,cast this);
        return base_i;
    }
    public function copy():Pointer<T> {
        return new Pointer<T>(value);
    }
    public static function fromAddress(h:Int):Pointer<Any> {
        return map.get(h);
    }
}