package stdgo;
import haxe.Rest;
import haxe.ds.Vector;
@:forward
abstract Slice<T>(SliceData<T>) {
    public function new(args:Rest<T>) {
        this = new SliceData(args.length);
    }
    @:op([]) inline function get(index:Int):T {
        return this.vector[index];
    }
    @:op([]) inline function set(index:Int,value:T):T {
        return this.vector[index] = value;
    }
    public function slice(low:Int,high:Int=0):Slice<T> {
        if (high == 0)
            high = this.length;
        return new Slice<T>(...[for (i in low...high) get(i)]);
    }
}
@:generic
class SliceData<T> {
    public var vector:Vector<T>;
    public var cap:Int = 0;
    public var length:Int = 0;
    public function new(length:Int,cap:Int=0) {
        this.length = length;
        setCap();
        vector = new Vector<T>(cap);
    }
    private function setCap() {
        this.cap = length > 1000 ? Std.int(length * 1.2) : length * 2;
    }
    public function resize(increase:Int):SliceData<T> {
        length += increase;
        if (cap > length)
            return this;
        setCap();
        var tmp = new Vector<T>(cap);
        Vector.blit(vector,0,tmp,0,vector.length);
        vector = tmp;
        return this;
    }
    public function toArray():Array<T> {
        return vector.toArray();
    }
    public function iterator() {
        return vector.toArray().iterator();
    }
    public function toString() {
        return vector.toArray().toString();
    }
}