package stdgo;
import haxe.Rest;
import haxe.ds.Vector;
import stdgo.GoArray;

abstract Slice<T>(SliceData<T>) from SliceData<T> to SliceData<T> {
    public var length(get,never):Int;

    //pretend to be pointer if neeeded
    public var _value_(get, set):Slice<T>;

    private inline function get__value_():Slice<T> {
        return this;
    }

    private inline function set__value_(_value_:Slice<T>):Slice<T> {
        return this = _value_;
    }
    private function get_length():Int {
        return this.length;
    }
    private function set_length(length:Int):Int {
        return 0;
    }
    public function new(args:Rest<T>) {
        var length = args.length;
        var cap = length;
        this = new SliceData(length,cap);
        if (args.length == 0)
            return;
        for (i in 0...args.length) {
            set(i,args[i]);
        }
    }
    @:op([]) public inline function get(index:Int):T {
        return this.get(index);
    }
    @:op([]) public inline function set(index:Int,value:T):T {
        return this.set(index,value);
    }
    inline public function slice(low:Int,high:Int=-1):Slice<T> {
        var pos = low;
        if (high == -1)
            high = length;
        var length = high - low;
        var slice = new Slice<T>();
        slice.setUnderlying(this.underlying(),pos,length);
        return slice; 
    }
    public function copy():Slice<T> {
        var slice = new Slice<T>();
        slice.grow(length);
        for (i in 0...slice.length) {
            slice[i] = get(i);
        }
        return slice;
    }
    public function append(args:Array<T>):Slice<T> {
        var slice = copy();
        var pos = slice.length;
        slice.grow(args.length);
        for (i in 0...args.length) {
            slice[pos + i] = args[i];
        }
        return slice;
    }
    inline public function grow(size:Int) {
        this.grow(size);
    }
    inline public function iterator():Iterator<T> {
        return this.iterator();
    }
    inline public function keyValueIterator() {
        return this.keyValueIterator();
    }
    inline public function cap():Int {
        return this.cap();
    }
    inline public function toArray() {
        return this.toArray();
    }
    inline public function toVector() {
        return this.toVector();
    }
    inline public function setUnderlying(array:GoArray<T>,pos:Int,length:Int) {
        this.setUnderlying(array,pos,length);
    }
    public inline function typeName() {
        return "Slice";
    }
}
class SliceKeyValueIterator<T> {
    var pos:Int = 0;
    var slice:SliceData<T>;
    public inline function new(slice) {
        this.slice = slice;
    }
    public inline function hasNext() {
        return pos < slice.length;
    }
    public inline function next() {
        return {key: pos, value: slice.get(pos++)};
    }
}
class SliceIterator<T> {
    var pos:Int = 0;
    var slice:SliceData<T>;
    public inline function new(slice) {
        this.slice = slice;
    }
    public inline function hasNext() {
        return pos < slice.length;
    }
    public inline function next() {
        return slice.get(pos++);
    }
}
class SliceData<T> {
    var array:GoArray<T>;
    public var pos:Int = 0;
    public var length:Int = 0;
    public static var forceLength:Int = 0;
    public function new(length:Int=0,cap:Int=0) {
        this.length = length;
        if (cap == 0)
            cap = length;
        array = new GoArray<T>();
        array.setSize(length);
    }
    private function boundsCheck(i:Int) {
        #if (!no_check_bounds && !(java || jvm || python || cs)) //checked all targets except php for native bounds checking.
        if (i < 0 || i >= this.length) { 
            throw "array out of bounds, index: " + i + " length: " + length;
        }
        #end
    }
    public function get(index:Int):T {
        boundsCheck(index);
        final i = index + pos;
        return array.get(i);
    }
    public function set(index:Int,value:T):T {
        boundsCheck(index);
        final i = index + pos;
        return array.set(i,value);
    }
    inline public function iterator():Iterator<T> {
        return new SliceIterator(this);
    }
    inline public function keyValueIterator():KeyValueIterator<Int,T> {
        return new SliceKeyValueIterator(this);
    }
    inline public function cap():Int {
        return 0;
    }
    inline public function toArray():Array<T> { //unrolling derefrences
        return [for (i in 0...length)
            get(i)
        ];
    }
    inline public function toVector():Vector<T> { //derefrence
        var vector = array.toVector();
        var dest = new Vector<T>(length);
        Vector.blit(vector,pos,dest,0,length);
        return dest;
    }
    inline public function toString():String {
        return toArray().toString();
    }
    inline public function underlying():GoArray<T> {
        return array;
    }
    inline public function grow(size:Int) {
        if (array.length >= size + length)
            return;
        length += size;
        var dest = new Vector<T>(length);
        Vector.blit(array.toVector(),0,dest,0,array.length);
        array.replace(dest);
    }
    inline public function setUnderlying(value:GoArray<T>,pos:Int,length:Int) {
        array = value;
        this.pos = pos;
        this.length = length;
    }
}